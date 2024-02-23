import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/approve_cart_list/approve_cart_list_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/read_approve_cart/read_approve_cart_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Patch_Payment_Process_Cubit/put_payment_process_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Process_Cubit/payment_process_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Status_Cubit/payment_status_post_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/ApproveList/approve_list_cubit.dart';
import 'package:salesapp/Cubit/Payment_Options_Cubit/payment_options_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/Models/Call_Center_Model/approval/approval_model.dart';
import 'package:salesapp/Models/Call_Center_Model/hub_model/hub_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../../Widgets/ItemCard.dart';
import '../../../../color_palette/color_palette.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../../utils/variables.dart';
import '../../../CallCenterWidgets.dart';
import 'PopUp1.dart';



class TenthPopUp extends StatefulWidget {
final String? amountTotal;
final String? orderId;
final bool? editPayment;
final String? customerCode;
final int? processId;
final String? status;
final String? transactionCode;
  const TenthPopUp({Key? key, this.amountTotal, this.orderId, this.editPayment, this.customerCode, this.processId, this.status, this.transactionCode,}) : super(key: key);

  @override
  State<TenthPopUp> createState() => _TenthPopUpState();
}

class _TenthPopUpState extends State<TenthPopUp> {
  TextEditingController search =TextEditingController();
  late AutoScrollController controller;
  TextEditingController cont=TextEditingController();
  TextEditingController valueController=TextEditingController();
  int selected = 0;
  bool select=false;
  FocusNode  popupTenFocusNode=FocusNode();

  String nameOfPayment="Pay on delivery";
  String? upi;
  String? paymentMethodCode;
  List<PaymentOptions> paymentOptionsList=[];
  void onSelect(int val) {
    selected = val;
    setState(() {});
  }

  onContinueButtonEvent(){
    PostResponse response= PostResponse(
        total:double.tryParse( widget?.amountTotal??"0"),
        contact: listCustomer?.mobile??"",
        methodCode: paymentMethodCode,
        status: "payment_completed",
        orderId:widget. orderId.toString(),
        customerCode: listCustomer?.customerUserCode??"",
        customerName:listCustomer?.businessData?.businessMeta?.fullname??"",
        transactionCode:cont.text

    );
    PostResponse patchres= PostResponse(
        status: "payment_completed",
        orderId: widget. orderId.toString(),
        methodCode: paymentMethodCode,
        customerCode: listCustomer?.customerUserCode??"",
        transactionCode:cont.text,
        processId: widget.processId

    );

    Navigator.pop(context);
    widget.editPayment==true?context.read<PutPaymentProcessCubit>().putPaymentProcess(patchres):
    context.read<PaymentProcessCubit>().postProcessPay(response);
  }
  rowKeyPressEvent(RawKeyEvent event){


    if (event is RawKeyDownEvent) {



       if(event.logicalKey==LogicalKeyboardKey.enter  ){

         onContinueButtonEvent();
      }






    }

  }

  @override
  void initState() {
    Variable.verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  void dispose() {
    popupTenFocusNode.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
print("process${widget.processId}");
    return BlocProvider(create: (context) => PaymentOptionsCubit()..getPaymentOptionList(),
  child: Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [
    BlocListener<PaymentOptionsCubit, PaymentOptionsState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (list) {
                setState(() {});
                print("paymentOptionsList$list");
                paymentOptionsList = list.data;
                if(paymentOptionsList.isNotEmpty){
                  paymentMethodCode=paymentOptionsList[0].code??"";
                  nameOfPayment=paymentOptionsList[0].title??"";
                }
                setState((){

                });
              },
            );

  },
),
    // BlocListener<PaymentProcessCubit, PaymentProcessState>(
    //   listener: (context, state) {
    //     print("state payment$state");
    //     state.maybeWhen(orElse: () {
    //       context.showSnackBarError("Loading");
    //     }, error: () {
    //       context.showSnackBarError(Variable.errorMessege);
    //     }, success: (data) {
    //
    //       if (data.data1) {
    //         print("data.data2${data.data2}");
    //         Variable.paymentIdPay=data.data2;
    //         showDailogPopUp(
    //             context,
    //             SuccessPopup(
    //               content:"Success",
    //             ));
    //         context.read<PaymentStatusPostCubit>().postPaymentStatus(Variable.invoiceIdPay??0,Variable.paymentIdPay??0,nameOfPayment);
    //       } else {
    //         showDailogPopUp(
    //             context,
    //             FailiurePopup(
    //               content: Variable.errorMessege,
    //             ));
    //       }
    //     });
    //   },
    // ),

    BlocListener<PutPaymentProcessCubit, PutPaymentProcessState>(
      listener: (context, state) {
        print("state path$state");
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          print("SUCSESS patch");
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
          } else {
            context.showSnackBarError(Variable.errorMessege);
          }
        });
      },
    ),
  ],
  child: AlertDialog(
    contentPadding: EdgeInsets.zero,
            content:RawKeyboardListener(
              autofocus: true,
              focusNode:popupTenFocusNode,
              onKey: (RawKeyEvent event) {
                print("ssssssssssssssworkinf");
                rowKeyPressEvent(event);


              },
              child: Container(
                height: context.blockSizeVertical*40,
                  width:context.blockSizeHorizontal*30,
                padding: EdgeInsets.only(bottom: 8),

                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: context.blockSizeVertical*6,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 15,),
                          Text("Choose Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Spacer(),
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.clear,size: 18,color: Colors.grey,))


                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration:BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(.5),
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              SizedBox(width: context.blockSizeHorizontal*.6,),
                              PaymentCard2(
                                label: "Pay on delivery",
                                selcted: true,
                                borderColor: Color(0xff6F91CB),
                                image: LeftMenuSvg().payOnDeliver,
                                onTap: (){},
                                textColor: Colors.black,

                                                // color:Colors.white,



                              ),
                              SizedBox(width: context.blockSizeHorizontal*.6,),
                              PaymentCard2(
                                label: "Coming soon",
                                selcted: false,
                                borderColor: Color(0xff687892).withOpacity(.1),
                                image: LeftMenuSvg().sidhraPayment,
                                onTap: (){},
                                textColor: Colors.black,

                                // color:Colors.white,



                              ),
                              SizedBox(width: context.blockSizeHorizontal*.6,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CommonButtonGradiant(
                      margin: EdgeInsets.zero,
                      width: context.blockSizeHorizontal*12,
                      height: context.blockSizeVertical*6,
                      label: "Add Payment" ,
                      onTap: (){
                        onContinueButtonEvent();





                      },

                    ),




                  ],
                ),
              ),
            )


            // Container(
            //   height: context.blockSizeVertical*65,
            //   child: Column(
            //     children: [
            //       Container(
            //         height: context.blockSizeVertical*7,
            //         width: context.blockSizeHorizontal*50,
            //         color:  Color(0xff6F91CB),
            //       child: Row(
            //         children: [
            //           SizedBox(width: context.blockSizeHorizontal*1,),
            //           const Text("TOTAL PAYMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            //           Spacer(),
            //           Text("AED ${widget.amountTotal}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            //           SizedBox(width: context.blockSizeHorizontal*1),
            //         ],
            //       ),
            //       ),
            //       Row(crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Scrollbar(
            //             controller: controller,
            //             child: Container(
            //               color: Colors.white,
            //               child: Column(
            //                 children: [
            //                   SizedBox(height: context.blockSizeVertical*2,),
            //                   // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   //   children:  [
            //                   //     Text("Choose a Option",style: TextStyle(fontWeight: FontWeight.bold),),
            //                   //     SizedBox(width: context.blockSizeHorizontal*4,),
            //                   //     Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),),
            //                   //   ],
            //                   // ),
            //                   Scrollbar(
            //                     child: Container(
            //                       width: context.blockSizeHorizontal*15,
            //                       decoration: const BoxDecoration(
            //                         borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white,),
            //                       child: Column(
            //                         children: [
            //                           Container(
            //                             color: Palette.white,
            //                             key: UniqueKey(),
            //                             width: context.blockSizeHorizontal * 15,
            //                             height: context.blockSizeVertical * 32,
            //                             child: ListView.separated(
            //                               key: UniqueKey(),
            //                               separatorBuilder: (context, index) => const Divider(
            //                                 height: 0,
            //                                 color: Colors.white,
            //                               ),
            //                               controller: controller,
            //                               itemBuilder: (context, index) {
            //                                 return AutoScrollTag(
            //                                   controller: controller,
            //                                   key: ValueKey(index),
            //                                   index: index,
            //                                   child: Padding(
            //                                     padding: const EdgeInsets.only(top: 0),
            //                                     child:
            //                                     ItemCardCallCenter(
            //                                       name: paymentOptionsList[index].title??"",
            //                                       id: "",
            //                                       item: "item",
            //                                       onClick: () {
            //                                         setState(() {
            //                                           select=false;
            //                                           selected=index;
            //                                           paymentMethodCode=paymentOptionsList[index].code??"";
            //                                           nameOfPayment=paymentOptionsList[index].title??"";
            //                                           print("index Selected${paymentOptionsList[index].paymentValue?.upId}");
            //                                           if(nameOfPayment=="Gpay"){
            //                                             upi=paymentOptionsList[index].paymentValue?.upId;
            //                                           }
            //
            //
            //                                         });
            //                                       },
            //                                       isSelected: index == selected,
            //                                       key: UniqueKey(),
            //                                     ),
            //                                   ),
            //                                 );
            //                               },
            //                               itemCount: paymentOptionsList.length,
            //                               //  data.data.length + 1,
            //                               shrinkWrap: true,
            //                             ),
            //                           ),
            //                           //
            //                           // Container(
            //                           //   height: context.blockSizeVertical*6,
            //                           //   padding: const EdgeInsets.all(10),
            //                           //   decoration: const BoxDecoration(
            //                           //     gradient: LinearGradient(begin: Alignment.topCenter,
            //                           //       end: Alignment.bottomCenter,
            //                           //       colors: [
            //                           //         Color(0xffF3F3F3),
            //                           //         Color(0xffFFFFFF),
            //                           //         Color(0xffD2D2D2)], ),
            //                           //
            //                           //   ),
            //                           //   child: InkWell(
            //                           //       onTap: (){
            //                           //         addNewCard=true;
            //                           //         setState(() {
            //                           //
            //                           //         });
            //                           //       },
            //                           //       child: const Text("Add new payment option")),
            //                           // )
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(width: context.blockSizeHorizontal*2,),
            //           nameOfPayment=="Gpay"?SizedBox(
            //             height: context.blockSizeVertical*50,
            //             child: Column(
            //               children: [
            //                 Text("We Accept"),
            //                 GPayScreen(upiID: upi)
            //               ],
            //             ),
            //           ):nameOfPayment=="Bank Payment"?Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               SizedBox(height: context.blockSizeVertical*2,),
            //               Text("We accepts all major credit and debit cards:"),
            //               SizedBox(height: context.blockSizeVertical*2,),
            //               Container(
            //                 width: context.blockSizeHorizontal*32,
            //                 color: Colors.yellow,
            //                 child: AccountDetailsCard(),
            //               ),
            //               SizedBox(height: context.blockSizeVertical*2,),
            //
            //             ],
            //           ):nameOfPayment=="Cash Payment"?Text("Cash Payment"):Container()
            //
            //
            //         ],
            //       ),
            //       Row(mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(border: Border.all(width: 0.1,color: Colors.black,),
            //                 borderRadius: BorderRadius.circular(5)),
            //             width: context.blockSizeHorizontal*20,
            //             child: TextFormField(
            //               controller: cont,
            //               decoration: const InputDecoration(
            //                   border: InputBorder.none,contentPadding: EdgeInsets.all(10),
            //               hintText: "Transaction ID"),
            //             ),
            //           ),
            //           SizedBox(width: context.blockSizeHorizontal*2.5,),
            //           SizedBox(
            //             height: context.blockSizeVertical*5,
            //             width: context.blockSizeHorizontal*20,
            //             child: TextButton(
            //                 onPressed: (){
            //                   Navigator.pop(context);
            //                   PostResponse response= PostResponse(
            //                     total: Variable.total,
            //                     contact: listCustomer?.mobile??"",
            //                     methodCode: paymentMethodCode,
            //                     status: "payment_completed",
            //                     orderId:widget. orderId.toString(),
            //                     customerCode: listCustomer?.customerUserCode??"",
            //                     customerName:listCustomer?.businessData?.businessMeta?.fullname??"",
            //                     transactionCode:cont.text
            //
            //                   );
            //                   PostResponse patchres= PostResponse(
            //                       status: "payment_completed",
            //                       orderId: widget. orderId.toString(),
            //                       customerCode: listCustomer?.customerUserCode??"",
            //                       transactionCode:cont.text,
            //                     processId: widget.processId
            //
            //                   );
            //                   print("Post Responce$response");
            //                   print("Put Responce$patchres");
            //                   widget.editPayment==true?context.read<PutPaymentProcessCubit>().putPaymentProcess(patchres):
            //                   context.read<PaymentProcessCubit>().postProcessPay(response);
            //                   setState(() {
            //
            //                   });
            //                 },
            //                 style: ButtonStyle(
            //                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(2),
            //                       // side: BorderSide(color: Color(0xffF4F4F4))
            //                     )),
            //                     backgroundColor: MaterialStateProperty.all(Color(0xff687892))),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       "Apply",
            //                       style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
            //                     ),
            //                   ],
            //                 )),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ),
);
        }
    ),
);



  }
}




class HubListPopUp extends StatefulWidget {
  final String? variantCode;
  final String? selectedhub;
  final Function onTap;
  final bool isOntap;

  const HubListPopUp({Key? key,this.isOntap=true, this.variantCode, required this.onTap, this.selectedhub,}) : super(key: key);

  @override
  State<HubListPopUp> createState() => _HubListPopUpState();
}

class _HubListPopUpState extends State<HubListPopUp> {
  TextEditingController search =TextEditingController();
  late AutoScrollController controller;
  TextEditingController searchController=TextEditingController();
  TextEditingController valueController=TextEditingController();
  int selected = -1;
  bool select=false;


  String nameOfPayment="Bank Payment";
  String? upi;
  String? paymentMethodCode;
  List<PaymentOptions> paymentOptionsList=[];
  List<HubResponseModel> hubresponseList=List.from([]);
  String hubCode="";
  FocusNode _hubFocusnode = FocusNode();
  FocusNode searchFocusNode = FocusNode();


  void onSelect(int val) {
    selected = val;
    setState(() {});
  }

  onSelectedEvent(){
    onSelect(selected);
    if(selected!=-1){
      hubCode=hubresponseList[selected].hubCode??"";
    }
    else{
      hubCode="";
      FocusScope.of(context).requestFocus(searchFocusNode);
    }

  }  onContinueEvent(){
    if(selected!=-1 && hubCode.isNotEmpty){
      widget.onTap(hubresponseList[selected]);
    }else{

    }

  }
  @override
  void initState() {
    Variable.verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    hubCode=widget.selectedhub??"";
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(searchFocusNode);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => HubListCubit()..getHubList(widget.variantCode??""),
  child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<HubListCubit, HubListState>(
                listener: (context, state) {
                  print("READ STATE$state");
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error..read orders");
                      },
                      success: (data) {
                        setState(() {
                          print("sssssss");
                          hubresponseList=data.data;
                          if(hubresponseList.isNotEmpty){
                            if(hubCode?.isNotEmpty==true){
                              selected=   hubresponseList.indexWhere((data)=>(hubCode==data.hubCode));
                              if(selected!=-1){
                                hubCode=hubresponseList[selected].hubCode??"";
                              }


                            }
                          }


                        });

                      }
                  );
                },
              ),


            ],
            child: AlertDialog(
                contentPadding: EdgeInsets.zero,
                content:Container(

                  height: context.blockSizeVertical*60,
                  width:context.blockSizeHorizontal*35,
                  padding: EdgeInsets.only(bottom: 8),

                  child:
                  RawKeyboardListener(
                    autofocus: true,

                    onKey: ( RawKeyEvent event) {
                      print("th key is pressing popup10${event.logicalKey.keyLabel}");
                      if (event is RawKeyDownEvent) {

                        if (event.logicalKey == LogicalKeyboardKey.arrowUp && selected > -1) {
                          setState(() {
                            FocusScope.of(context).requestFocus(_hubFocusnode);
                            selected--;
                            onSelectedEvent();

                          });
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowDown &&
                            selected < hubresponseList.length - 1) {
                          setState(() {
                            FocusScope.of(context).requestFocus(_hubFocusnode);
                            selected++;
                            onSelectedEvent();
                          });
                        }
                        else if (event.logicalKey == LogicalKeyboardKey.enter) {

                          FocusScope.of(context).requestFocus(_hubFocusnode);
                          onContinueEvent();
                          // Handle Enter key press here
                          print("Enter key pressedssssssss");
                          // Add your logic for Enter key press
                        }

                      }

                    },
                    focusNode: _hubFocusnode,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: context.blockSizeVertical*6,

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15,),
                              Text("Choose Hub",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Spacer(),
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: Icon(Icons.clear,size: 18,color: Colors.grey,))


                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),

                          child: Column(
                            children: [
                              SearchTextfiled(color: Color(0xffFAFAFA),
                                onComplete: (){
                                print("Enetr function");
                                FocusScope.of(context).requestFocus(_hubFocusnode);
                                },
                                focusNode: searchFocusNode,
                                hintText: "Enter item code or name...", ctrlr: searchController,onChanged: (va){

                                  if(va==""){

                                    context
                                        .read<HubListCubit>()
                                        .getHubList(widget.variantCode??"");

                                  }
                                  else{
                                    context
                                        .read<HubListCubit>()
                                        .getSearchHubList(widget.variantCode??"",va);
                                  }

                                },),
                              SizedBox(height: 5,),

                              BlocBuilder<HubListCubit, HubListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){return customCupertinoLoading();},loading: (){
      return customCupertinoLoading();
    },
    success: (data){
      return hubresponseList.isEmpty?EmptyDataDisplay(): Container(


        height: context.blockSizeVertical*32,
        child: ListView.separated(

        itemCount: hubresponseList.length,

        itemBuilder: (context, index) {

          return ListTile(
            tileColor: selected==index?Color(0xffEAEFF3):Colors.white,
            selectedColor: Colors.red,
            onTap: (){
                if(widget.isOntap){
                  onSelect(index);
                  hubCode=hubresponseList[index].hubCode??"";
                }



            },
            shape: Border.all(
                  width: selected==index?2:1,

                  color: selected==index?Color(0xff6F91CB):Colors.grey.withOpacity(.2)
            ),


            leading:
            Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:selected==index?Colors.grey.withOpacity(.2):Color(0xffEAEFF3).withOpacity(.4)
                ),
                child:Center(
                  child: Container(
                    height:9 ,
                    width: 9,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:selected==index?Color(0xff687892):Color(0xffEAEFF3)
                    ),
                  ),
                ),

            ),
            title: Text(hubresponseList[index].hubStockName??""),
            // subtitle: Text(hubresponseList[index].stockQty.toString()),
            trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hubresponseList[index].hubCode??""),
                  Text("Stock : "+hubresponseList[index].stockQty.toString()),
                ],
            ) ,
          );
        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 5); },),
      );
    }) ;

  },
),

                            ],
                          ),
                        ),
                        Spacer(),
                        Divider(),

                        CommonButtonGradiant(
                          isHold: hubCode.isNotEmpty?false:true,
                          margin: EdgeInsets.zero,
                          width: context.blockSizeHorizontal*12,
                          height: context.blockSizeVertical*6,
                          label: "Select" ,
                          onTap: (){
                            onContinueEvent();





                          },

                        ),




                      ],
                    ),
                  ),
                )


              // Container(
              //   height: context.blockSizeVertical*65,
              //   child: Column(
              //     children: [
              //       Container(
              //         height: context.blockSizeVertical*7,
              //         width: context.blockSizeHorizontal*50,
              //         color:  Color(0xff6F91CB),
              //       child: Row(
              //         children: [
              //           SizedBox(width: context.blockSizeHorizontal*1,),
              //           const Text("TOTAL PAYMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              //           Spacer(),
              //           Text("AED ${widget.amountTotal}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              //           SizedBox(width: context.blockSizeHorizontal*1),
              //         ],
              //       ),
              //       ),
              //       Row(crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Scrollbar(
              //             controller: controller,
              //             child: Container(
              //               color: Colors.white,
              //               child: Column(
              //                 children: [
              //                   SizedBox(height: context.blockSizeVertical*2,),
              //                   // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                   //   children:  [
              //                   //     Text("Choose a Option",style: TextStyle(fontWeight: FontWeight.bold),),
              //                   //     SizedBox(width: context.blockSizeHorizontal*4,),
              //                   //     Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),),
              //                   //   ],
              //                   // ),
              //                   Scrollbar(
              //                     child: Container(
              //                       width: context.blockSizeHorizontal*15,
              //                       decoration: const BoxDecoration(
              //                         borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white,),
              //                       child: Column(
              //                         children: [
              //                           Container(
              //                             color: Palette.white,
              //                             key: UniqueKey(),
              //                             width: context.blockSizeHorizontal * 15,
              //                             height: context.blockSizeVertical * 32,
              //                             child: ListView.separated(
              //                               key: UniqueKey(),
              //                               separatorBuilder: (context, index) => const Divider(
              //                                 height: 0,
              //                                 color: Colors.white,
              //                               ),
              //                               controller: controller,
              //                               itemBuilder: (context, index) {
              //                                 return AutoScrollTag(
              //                                   controller: controller,
              //                                   key: ValueKey(index),
              //                                   index: index,
              //                                   child: Padding(
              //                                     padding: const EdgeInsets.only(top: 0),
              //                                     child:
              //                                     ItemCardCallCenter(
              //                                       name: paymentOptionsList[index].title??"",
              //                                       id: "",
              //                                       item: "item",
              //                                       onClick: () {
              //                                         setState(() {
              //                                           select=false;
              //                                           selected=index;
              //                                           paymentMethodCode=paymentOptionsList[index].code??"";
              //                                           nameOfPayment=paymentOptionsList[index].title??"";
              //                                           print("index Selected${paymentOptionsList[index].paymentValue?.upId}");
              //                                           if(nameOfPayment=="Gpay"){
              //                                             upi=paymentOptionsList[index].paymentValue?.upId;
              //                                           }
              //
              //
              //                                         });
              //                                       },
              //                                       isSelected: index == selected,
              //                                       key: UniqueKey(),
              //                                     ),
              //                                   ),
              //                                 );
              //                               },
              //                               itemCount: paymentOptionsList.length,
              //                               //  data.data.length + 1,
              //                               shrinkWrap: true,
              //                             ),
              //                           ),
              //                           //
              //                           // Container(
              //                           //   height: context.blockSizeVertical*6,
              //                           //   padding: const EdgeInsets.all(10),
              //                           //   decoration: const BoxDecoration(
              //                           //     gradient: LinearGradient(begin: Alignment.topCenter,
              //                           //       end: Alignment.bottomCenter,
              //                           //       colors: [
              //                           //         Color(0xffF3F3F3),
              //                           //         Color(0xffFFFFFF),
              //                           //         Color(0xffD2D2D2)], ),
              //                           //
              //                           //   ),
              //                           //   child: InkWell(
              //                           //       onTap: (){
              //                           //         addNewCard=true;
              //                           //         setState(() {
              //                           //
              //                           //         });
              //                           //       },
              //                           //       child: const Text("Add new payment option")),
              //                           // )
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(width: context.blockSizeHorizontal*2,),
              //           nameOfPayment=="Gpay"?SizedBox(
              //             height: context.blockSizeVertical*50,
              //             child: Column(
              //               children: [
              //                 Text("We Accept"),
              //                 GPayScreen(upiID: upi)
              //               ],
              //             ),
              //           ):nameOfPayment=="Bank Payment"?Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               SizedBox(height: context.blockSizeVertical*2,),
              //               Text("We accepts all major credit and debit cards:"),
              //               SizedBox(height: context.blockSizeVertical*2,),
              //               Container(
              //                 width: context.blockSizeHorizontal*32,
              //                 color: Colors.yellow,
              //                 child: AccountDetailsCard(),
              //               ),
              //               SizedBox(height: context.blockSizeVertical*2,),
              //
              //             ],
              //           ):nameOfPayment=="Cash Payment"?Text("Cash Payment"):Container()
              //
              //
              //         ],
              //       ),
              //       Row(mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(border: Border.all(width: 0.1,color: Colors.black,),
              //                 borderRadius: BorderRadius.circular(5)),
              //             width: context.blockSizeHorizontal*20,
              //             child: TextFormField(
              //               controller: cont,
              //               decoration: const InputDecoration(
              //                   border: InputBorder.none,contentPadding: EdgeInsets.all(10),
              //               hintText: "Transaction ID"),
              //             ),
              //           ),
              //           SizedBox(width: context.blockSizeHorizontal*2.5,),
              //           SizedBox(
              //             height: context.blockSizeVertical*5,
              //             width: context.blockSizeHorizontal*20,
              //             child: TextButton(
              //                 onPressed: (){
              //                   Navigator.pop(context);
              //                   PostResponse response= PostResponse(
              //                     total: Variable.total,
              //                     contact: listCustomer?.mobile??"",
              //                     methodCode: paymentMethodCode,
              //                     status: "payment_completed",
              //                     orderId:widget. orderId.toString(),
              //                     customerCode: listCustomer?.customerUserCode??"",
              //                     customerName:listCustomer?.businessData?.businessMeta?.fullname??"",
              //                     transactionCode:cont.text
              //
              //                   );
              //                   PostResponse patchres= PostResponse(
              //                       status: "payment_completed",
              //                       orderId: widget. orderId.toString(),
              //                       customerCode: listCustomer?.customerUserCode??"",
              //                       transactionCode:cont.text,
              //                     processId: widget.processId
              //
              //                   );
              //                   print("Post Responce$response");
              //                   print("Put Responce$patchres");
              //                   widget.editPayment==true?context.read<PutPaymentProcessCubit>().putPaymentProcess(patchres):
              //                   context.read<PaymentProcessCubit>().postProcessPay(response);
              //                   setState(() {
              //
              //                   });
              //                 },
              //                 style: ButtonStyle(
              //                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(2),
              //                       // side: BorderSide(color: Color(0xffF4F4F4))
              //                     )),
              //                     backgroundColor: MaterialStateProperty.all(Color(0xff687892))),
              //                 child: Row(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Text(
              //                       "Apply",
              //                       style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
              //                     ),
              //                   ],
              //                 )),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ),
          );
        }
    ),
);



  }
}

class PaymentCard extends StatelessWidget {
  final String? text;
  final String? text2;
  const PaymentCard({Key? key, this.text, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white
      ,border: Border.all(width: 0.2,color: Colors.black)),
      child: Row(
        children: [
          Icon(Icons.add),
          Column(
            children: [
              Text(text??""),
              Text(text2??""),
            ],
          )
        ],
      ),
    );
  }
}


class PaymentCard2 extends StatelessWidget {
  final Function onTap;
  final bool selcted;
  final String image;
  final String label;
  final Color borderColor;
  final Color textColor;


   PaymentCard2({Key? key,required this.onTap,this.selcted=false,required this.image, required this.borderColor, required this.textColor, required this.label,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:EdgeInsets.only() ,

            height: context.blockSizeVertical*14.5,
            decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: borderColor,
                  width:selcted? 2.5:1,

                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
              selcted?      Container(
                      margin: EdgeInsets.only(right: 10,top: 5),
                      height:22,
                      width: 22,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff6F91CB)

                      ),
                      child: Center(child: Icon(Icons.check,color: Colors.white,size: 12,)),
                    ):Container(
                height:22,
                width: 22,
                margin: EdgeInsets.only(right: 10,top: 5),

              )
                  ],
                ),

                Container(
                  // width:40,
                  // height: 40,

                    child:selcted? SvgPicture.string(image,
                      fit: BoxFit.fitHeight,
                      // color:Colors.white,
                    ):Image(image: AssetImage("asset_images/sidhrapayment.png"))),

              ],
            ),
          ),
          SizedBox(height: 2.6,),
          Text(label,style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 13),)
        ],
      ),

    );
  }
}





class ApproveRejectView extends StatefulWidget {
  final Function onPress;
  ApproveRejectView({required this.onPress});




  @override
  State<ApproveRejectView> createState() => _ApproveRejectViewState();
}

class _ApproveRejectViewState extends State<ApproveRejectView>with TickerProviderStateMixin {
  List<ApproveListModel>approveList=[];
  AnimationController? _controller;
  Animation<Offset>? _offsetAnimation;

  TextEditingController search=TextEditingController();
  String pending='';
  String approved='';
  String labelText="Pending";
  List<customPopupmenuButton>item=[
    customPopupmenuButton(label: "Pending",value: "1"),
    customPopupmenuButton(label: "Approved",value: "2"),

  ];

@override
  void initState() {
 context.read<ApproveListCubit>().getApproveList();
 initialAnimation();
    super.initState();
  }
  void initialAnimation(){
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeInOut,
      ),
    );

    _controller?.forward();

  }
  void reverseAnimation() async{

    await _controller?.reverse();
    Navigator.pop(context);
  }
 void  onTapFunc(int index ){
  if(labelText=="Approved"){
    showDailogPopUp(
        context,
        FailiurePopup(
          content:"No read in approved case",
        ));

  }else{
    createOrPatch=true;invoicePage=false;
    Variable.callApproveOrderId=int.tryParse(approveList[index].id.toString())??0;
    context.read<ReadOrdersCubit>().getOrdersRead(approveList[index].id??0);
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
        const CallCenterMain(tabValue: 2,editOrder: true,isRejectOrApprove: true,)
        ));
  }


 }
  Map<int, TableColumnWidth>? widths=   {
  0: const FlexColumnWidth(2),
  1: const FlexColumnWidth(2),
  2: const FlexColumnWidth(2),
  3: const FlexColumnWidth(4),
  4: const FlexColumnWidth(2),
  5: const FlexColumnWidth(1.5),
  6: const FlexColumnWidth(2),
  7: const FlexColumnWidth(3),
  8: const FlexColumnWidth(1.5),



};
  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return BlocProvider(create: (context) => PaymentOptionsCubit()..getPaymentOptionList(),
      child: Builder(
          builder: (context) {
            return

                MultiBlocListener(
  listeners: [
    BlocListener<ApproveListCubit, ApproveListState>(
  listener: (context, state) {
    state.maybeWhen(orElse: (){
      print("erroe");
    },
      success: (data){setState(() {
        approveList=data.data;
        print("the dynamicc print${data.dynamicData["pending_count"]} ");
        pending=data.dynamicData["pending_count"].toString();
        approved=data.dynamicData["approved_count"].toString();
      });


      }
    );
    // TODO: implement listener
  },
),

  ],
  child: SlideTransition(
    position: _offsetAnimation!,
    child: AlertDialog(
      insetPadding: EdgeInsets.only(left:context.blockSizeHorizontal*5),
      contentPadding: EdgeInsets.zero,
      alignment: Alignment.centerLeft,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0))),
      content:
      Stack(
        children: [

          Container(
                          height: double.maxFinite,

                          width:MediaQuery.of(context).size.width/1.36,
                        color: Colors.white,



                          child: Column(
                            children: [
                              Container(



                                padding: EdgeInsets.all(10),
                                // height: context.blockSizeVertical*6,

                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Total ${approveList.length} Orders",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                                    SizedBox(width:context.blockSizeHorizontal*.9,),
                                    CommonButtonGradiantPopup(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      height: context.blockSizeVertical*4.5,
                                      rightIcon: Icons.arrow_drop_down_outlined,
                                      popupMenuLis:item,
                                      label:labelText, onTap: (va) {
                                      if(va=="1"){
                                       if( labelText!="Pending"){
                                         context.read<ApproveListCubit>().getApproveList();
                                         labelText="Pending";
                                       }
                                      }
                                      if(va=="2"){
                                        if(labelText!="Approved"){
                                          context.read<ApproveListCubit>().getApproveListByType("");
                                          labelText="Approved";
                                        }


                                      }

                                    },),
                                    SizedBox(width: context.blockSizeHorizontal*3.5,),
                                    Expanded(
                                      child: commonSearchRightScreen(context,onchange:( String sa){
                                        if(labelText=="Approved"){
                                          sa.isEmpty==true? context.read<ApproveListCubit>().getApproveListByType(""):  context.read<ApproveListCubit>().getApproveListByType("&element=&sa");
                                        }
                                        else{
                                          sa.isEmpty==true? context.read<ApproveListCubit>().getApproveList(): context.read<ApproveListCubit>().searchApproveList(sa);
                                        }




                                        setState(() {

                                        });
                                      },
                                          searcController:search
                                      ),
                                    ),
                                    SizedBox(width: context.blockSizeHorizontal*3.5,),
                                    // Spacer(),
                                    CommonUnGradiantButton(
                                      value: pending,
                                      lable: "Pending",
                                      clr: Color(0xffFBDDDD),
                                    ),

                                    SizedBox(width: 5,),
                                    CommonUnGradiantButton(
                                      value: approved,
                                      lable: "Approved",
                                      clr: Color(0xffCEEDD3),
                                    ),

                                  ],
                                )

                              ),
                              // SizedBox(height: 10,),
                              // Divider(),
                              Expanded(
                                child: Container(
                               // color:   Color(0xffE1E7ED),




                                  child: Column(
                                    children: [
                                      Container(

                                        color: Colors.white,
                                        width: context.blockSizeHorizontal * 90,
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: customTableTwo(
                                          border: const TableBorder(
                                            horizontalInside:
                                            BorderSide(width: 0.2, color: Colors.red,
                                                style:
                                                BorderStyle.solid),
                                          ),
                                          tableWidth: .5,
                                          widths: widths,
                                          childrens: [
                                            TableRow(

                                                children: [

                                                  tableHeadtextTwo(
                                                      'Order ID',
                                                      color: Color(0xffF8F9FA),
                                                      align: Alignment.center,
                                                      height: 42,

                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  tableHeadtextTwo(
                                                      'Order Date',
                                                      align: Alignment.center,
                                                      color: Color(0xffF8F9FA),
                                                      height: 42,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  tableHeadtextTwo(
                                                      'User Name',
                                                      color: Color(0xffF8F9FA),
                                                      align: Alignment.center,
                                                      height: 42,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  tableHeadtextTwo(
                                                      'Delivery Address.',
                                                      color: Color(0xffF8F9FA),
                                                      align: Alignment.center,
                                                      height: 42,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  tableHeadtextTwo(
                                                      'Amount',
                                                      color: Color(0xffF8F9FA),
                                                      height: 42,
                                                      align: Alignment.center,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  // tableHeadtextTwo(
                                                  //     '',
                                                  //     align: Alignment.center,
                                                  //
                                                  //     color: Color(0xffF8F9FA),
                                                  //     height: 42,
                                                  //     textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                                                  //   // size: 13,
                                                  // ),





                                                ]),


                                          ],

                                        ),
                                      ),
                                      BlocBuilder<ApproveListCubit, ApproveListState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: (){
          return customCupertinoLoading();
        },
          loading: (){
            return customCupertinoLoading();
          },
          success: (data){
          return Expanded(child:approveList.isEmpty?
          Container(
              height: context.blockSizeVertical*60,
              margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
              color: Colors.white,
              child: EmptyDataDisplay()):
          Container(color: Color(0xffE1E7ED),
            height: context.blockSizeVertical*60,



            width: context.blockSizeHorizontal * 90,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: customTableTwo(
                  border:  TableBorder(
                    // verticalInside: BorderSide(
                    //     width: 0.5,
                    //     color: Colors.black45,
                    //     style:
                    //     BorderStyle.solid),
                    horizontalInside:
                    BorderSide(width: 0.2, color: Colors.black45,
                        style: BorderStyle.solid),
                    top:BorderSide(width: 0.5, color: Colors.grey.withOpacity(.2),
                        style:
                        BorderStyle.solid),

                    bottom: BorderSide(width: 0.5, color: Colors.grey.withOpacity(.2),
                        style:
                        BorderStyle.solid),
                  ),
                  tableWidth: .5,
                  widths:widths,
                  childrens: [
                    for(var i=0;i<approveList.length;i++)
                      TableRow(
                          children: [

                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i].orderCode.toString().toTitleCase()??"",(){},align: Alignment.center,)),
                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(DateFormat('dd-MM-yyyy').format(
                                    DateTime.parse(
                                        approveList[i].orderDate ??
                                            "")),(){
                                  onTapFunc(i);

                                },align: Alignment.center,)),
                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i].customerName.toString()??"",(){
                                  onTapFunc(i);
                                },align: Alignment.center)),
                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i].deliveryAddress.toString()??"",(){
                                  onTapFunc(i);
                                },align: Alignment.center)),
                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i].total  .toString(),(){
                                  onTapFunc(i);
                                },align: Alignment.center)),

                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            //     child: InkWell(
                            //       onTap: (){
                            //         createOrPatch=true;invoicePage=false;
                            //         Variable.callOrderId=int.tryParse(approveList[i].id.toString())??0;
                            //         context.read<ReadOrdersCubit>().getOrdersRead(approveList[i].id??0);
                            //         Navigator.push(
                            //             context,
                            //             MaterialPageRoute(builder: (context) =>
                            //             const CallCenterMain(tabValue: 3,editOrder: true,isRejectOrApprove: true,)
                            //             ));
                            //       },
                            //       child: CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9,child: Icon(Icons.edit,size:context.blockSizeHorizontal*1.4,color: Color(0xff7486A2),),)),
                            //     ),






                          ]
                      ),

                  ],
                ),
              ),
            ),
          ),);
          }
        );

      },
)
                                    ],


                                  ),
                                ),
                              ),





                            ],
                          ),



                      // Container(
                      //   height: context.blockSizeVertical*65,
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         height: context.blockSizeVertical*7,
                      //         width: context.blockSizeHorizontal*50,
                      //         color:  Color(0xff6F91CB),
                      //       child: Row(
                      //         children: [
                      //           SizedBox(width: context.blockSizeHorizontal*1,),
                      //           const Text("TOTAL PAYMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      //           Spacer(),
                      //           Text("AED ${widget.amountTotal}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      //           SizedBox(width: context.blockSizeHorizontal*1),
                      //         ],
                      //       ),
                      //       ),
                      //       Row(crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Scrollbar(
                      //             controller: controller,
                      //             child: Container(
                      //               color: Colors.white,
                      //               child: Column(
                      //                 children: [
                      //                   SizedBox(height: context.blockSizeVertical*2,),
                      //                   // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                   //   children:  [
                      //                   //     Text("Choose a Option",style: TextStyle(fontWeight: FontWeight.bold),),
                      //                   //     SizedBox(width: context.blockSizeHorizontal*4,),
                      //                   //     Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),),
                      //                   //   ],
                      //                   // ),
                      //                   Scrollbar(
                      //                     child: Container(
                      //                       width: context.blockSizeHorizontal*15,
                      //                       decoration: const BoxDecoration(
                      //                         borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white,),
                      //                       child: Column(
                      //                         children: [
                      //                           Container(
                      //                             color: Palette.white,
                      //                             key: UniqueKey(),
                      //                             width: context.blockSizeHorizontal * 15,
                      //                             height: context.blockSizeVertical * 32,
                      //                             child: ListView.separated(
                      //                               key: UniqueKey(),
                      //                               separatorBuilder: (context, index) => const Divider(
                      //                                 height: 0,
                      //                                 color: Colors.white,
                      //                               ),
                      //                               controller: controller,
                      //                               itemBuilder: (context, index) {
                      //                                 return AutoScrollTag(
                      //                                   controller: controller,
                      //                                   key: ValueKey(index),
                      //                                   index: index,
                      //                                   child: Padding(
                      //                                     padding: const EdgeInsets.only(top: 0),
                      //                                     child:
                      //                                     ItemCardCallCenter(
                      //                                       name: paymentOptionsList[index].title??"",
                      //                                       id: "",
                      //                                       item: "item",
                      //                                       onClick: () {
                      //                                         setState(() {
                      //                                           select=false;
                      //                                           selected=index;
                      //                                           paymentMethodCode=paymentOptionsList[index].code??"";
                      //                                           nameOfPayment=paymentOptionsList[index].title??"";
                      //                                           print("index Selected${paymentOptionsList[index].paymentValue?.upId}");
                      //                                           if(nameOfPayment=="Gpay"){
                      //                                             upi=paymentOptionsList[index].paymentValue?.upId;
                      //                                           }
                      //
                      //
                      //                                         });
                      //                                       },
                      //                                       isSelected: index == selected,
                      //                                       key: UniqueKey(),
                      //                                     ),
                      //                                   ),
                      //                                 );
                      //                               },
                      //                               itemCount: paymentOptionsList.length,
                      //                               //  data.data.length + 1,
                      //                               shrinkWrap: true,
                      //                             ),
                      //                           ),
                      //                           //
                      //                           // Container(
                      //                           //   height: context.blockSizeVertical*6,
                      //                           //   padding: const EdgeInsets.all(10),
                      //                           //   decoration: const BoxDecoration(
                      //                           //     gradient: LinearGradient(begin: Alignment.topCenter,
                      //                           //       end: Alignment.bottomCenter,
                      //                           //       colors: [
                      //                           //         Color(0xffF3F3F3),
                      //                           //         Color(0xffFFFFFF),
                      //                           //         Color(0xffD2D2D2)], ),
                      //                           //
                      //                           //   ),
                      //                           //   child: InkWell(
                      //                           //       onTap: (){
                      //                           //         addNewCard=true;
                      //                           //         setState(() {
                      //                           //
                      //                           //         });
                      //                           //       },
                      //                           //       child: const Text("Add new payment option")),
                      //                           // )
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           SizedBox(width: context.blockSizeHorizontal*2,),
                      //           nameOfPayment=="Gpay"?SizedBox(
                      //             height: context.blockSizeVertical*50,
                      //             child: Column(
                      //               children: [
                      //                 Text("We Accept"),
                      //                 GPayScreen(upiID: upi)
                      //               ],
                      //             ),
                      //           ):nameOfPayment=="Bank Payment"?Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               SizedBox(height: context.blockSizeVertical*2,),
                      //               Text("We accepts all major credit and debit cards:"),
                      //               SizedBox(height: context.blockSizeVertical*2,),
                      //               Container(
                      //                 width: context.blockSizeHorizontal*32,
                      //                 color: Colors.yellow,
                      //                 child: AccountDetailsCard(),
                      //               ),
                      //               SizedBox(height: context.blockSizeVertical*2,),
                      //
                      //             ],
                      //           ):nameOfPayment=="Cash Payment"?Text("Cash Payment"):Container()
                      //
                      //
                      //         ],
                      //       ),
                      //       Row(mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Container(
                      //             decoration: BoxDecoration(border: Border.all(width: 0.1,color: Colors.black,),
                      //                 borderRadius: BorderRadius.circular(5)),
                      //             width: context.blockSizeHorizontal*20,
                      //             child: TextFormField(
                      //               controller: cont,
                      //               decoration: const InputDecoration(
                      //                   border: InputBorder.none,contentPadding: EdgeInsets.all(10),
                      //               hintText: "Transaction ID"),
                      //             ),
                      //           ),
                      //           SizedBox(width: context.blockSizeHorizontal*2.5,),
                      //           SizedBox(
                      //             height: context.blockSizeVertical*5,
                      //             width: context.blockSizeHorizontal*20,
                      //             child: TextButton(
                      //                 onPressed: (){
                      //                   Navigator.pop(context);
                      //                   PostResponse response= PostResponse(
                      //                     total: Variable.total,
                      //                     contact: listCustomer?.mobile??"",
                      //                     methodCode: paymentMethodCode,
                      //                     status: "payment_completed",
                      //                     orderId:widget. orderId.toString(),
                      //                     customerCode: listCustomer?.customerUserCode??"",
                      //                     customerName:listCustomer?.businessData?.businessMeta?.fullname??"",
                      //                     transactionCode:cont.text
                      //
                      //                   );
                      //                   PostResponse patchres= PostResponse(
                      //                       status: "payment_completed",
                      //                       orderId: widget. orderId.toString(),
                      //                       customerCode: listCustomer?.customerUserCode??"",
                      //                       transactionCode:cont.text,
                      //                     processId: widget.processId
                      //
                      //                   );
                      //                   print("Post Responce$response");
                      //                   print("Put Responce$patchres");
                      //                   widget.editPayment==true?context.read<PutPaymentProcessCubit>().putPaymentProcess(patchres):
                      //                   context.read<PaymentProcessCubit>().postProcessPay(response);
                      //                   setState(() {
                      //
                      //                   });
                      //                 },
                      //                 style: ButtonStyle(
                      //                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      //                       borderRadius: BorderRadius.circular(2),
                      //                       // side: BorderSide(color: Color(0xffF4F4F4))
                      //                     )),
                      //                     backgroundColor: MaterialStateProperty.all(Color(0xff687892))),
                      //                 child: Row(
                      //                   mainAxisAlignment: MainAxisAlignment.center,
                      //                   children: [
                      //                     Text(
                      //                       "Apply",
                      //                       style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
                      //                     ),
                      //                   ],
                      //                 )),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ),
          Positioned(
            right: 10,
              top:MediaQuery.of(context).size.height/2,
              child:CommonButtonGradiant2(
                quarterTurns: -1,
                isIcon: true,
                // image: LeftMenuSvg().backwardArrow,
                icon: Icons.arrow_drop_up,

                margin: EdgeInsets.zero,
                width: context.blockSizeHorizontal*2.5,
                height: context.blockSizeVertical*19,
                label:"VIEW ORDERS",
                linearGraidiant:LinearGradient(
                    colors:[ Color(0xff6F91CB),
                      Color(0xff6F91CB),

                      //add more colors for gradient
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, //end of the gradient color
                    stops: [ 0.5, 0.8] //stops for individual color
                  //set the stops number equal to numbers of color
                ),
                onTap:(){
                  reverseAnimation();
                }






                ,))
        ],
      ),
    ),
  ),
);
          }
      ),
    );



  }
}

class ApproveRejectCartView extends StatefulWidget {
  final Function onPress;
  ApproveRejectCartView({required this.onPress});




  @override
  State<ApproveRejectCartView> createState() => _ApproveRejectCartViewState();
}

class _ApproveRejectCartViewState extends State<ApproveRejectCartView>with TickerProviderStateMixin {
  List<ApproveCartListModel>approveList=[];
  TextEditingController search=TextEditingController();
  AnimationController? _controller;
  Animation<Offset>? _offsetAnimation;

  String? aaprovedCount="0";

  String pendingCount="0";
  String labelText="Pending";
  List<customPopupmenuButton>item=[
    customPopupmenuButton(label: "Pending",value: "1"),
    customPopupmenuButton(label: "Approved",value: "2"),

  ];

@override
  void initState() {
 context.read<ApproveCartListCubit>().getApproveCartList("");
 initialAnimation();

    super.initState();
  }
void initialAnimation(){
  _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
  );

  _offsetAnimation = Tween<Offset>(
    begin: Offset(-1.0, 0.0),
    end: Offset(0.0, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInOut,
    ),
  );

  _controller?.forward();

}
  void reverseAnimation() async{

   await _controller?.reverse();
   Navigator.pop(context);
  }

 void  onTapFunc(int index ){
   if(labelText=="Approved"){
     showDailogPopUp(
         context,
         FailiurePopup(
           content:"No read in approved case",
         ));
   }
   else{
     createOrPatch=true;invoicePage=false;
     Variable.cartHeadId=approveList[index].id??0;
     context.read<ReadApproveCartCubit>().getApproveCartRead(approveList[index].id??0);
     Navigator.push(
         context,
         MaterialPageRoute(builder: (context) =>
             CallCenterMain(tabValue:pages.indexWhere((data)=>3==data.fixedIndex),editOrder: false,isRejectOrApprove: false,isRejectOrApproveCart: true,)
         ));
   }

 }
  Map<int, TableColumnWidth>? widths=   {
  0: const FlexColumnWidth(2),
  1: const FlexColumnWidth(2),
  2: const FlexColumnWidth(2),
  3: const FlexColumnWidth(4),
  4: const FlexColumnWidth(2),
  5: const FlexColumnWidth(1.5),
  6: const FlexColumnWidth(2),
  7: const FlexColumnWidth(3),
  8: const FlexColumnWidth(1.5),



};
  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return BlocProvider(create: (context) => PaymentOptionsCubit()..getPaymentOptionList(),
      child: Builder(
          builder: (context) {
            return

                MultiBlocListener(
  listeners: [
    BlocListener<ApproveCartListCubit, ApproveCartListState>(
  listener: (context, state) {
    state.maybeWhen(orElse: (){
      print("erroe");
    },
      success: (data){setState(() {
        approveList=data.data;
        print("approved_count${data.dynamicData["approved_count"]}");
        print("approved_count${data.dynamicData["pending_count"]}");
        aaprovedCount=data.dynamicData["approved_count"].toString();
        pendingCount=data.dynamicData["pending_count"].toString();
      });


      }
    );
    // TODO: implement listener
  },
),

  ],
  child: SlideTransition(
    position: _offsetAnimation!,
    child: AlertDialog(
      insetPadding: EdgeInsets.only(left:context.blockSizeHorizontal*5),
      contentPadding: EdgeInsets.zero,
      alignment: Alignment.centerLeft,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0))),
      content: Stack(
        children: [
          Container(
                          height: double.maxFinite,

                          width:MediaQuery.of(context).size.width/1.36,
                        color: Colors.white,



                          child: Column(
                            children: [
                              Container(



                                padding: EdgeInsets.all(10),
                                // height: context.blockSizeVertical*6,

                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Total ${approveList.length} Orders",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                                    SizedBox(width: context.blockSizeVertical*.9,),
                                    CommonButtonGradiantPopup(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      height: context.blockSizeVertical*4.5,
                                      rightIcon: Icons.arrow_drop_down_outlined,
                                      popupMenuLis:item,
                                      label:labelText, onTap: (va) {
                                        if(va=="1"){
                                          if(labelText!="Pending"){
                                            context.read<ApproveCartListCubit>().getApproveCartList("");
                                            labelText="Pending";
                                          }
                                        }
                                        if(va=="2"){
                                          if(labelText!="Approved"){
                                            context.read<ApproveCartListCubit>().getApproveCartList("&list_type=approved");
                                            labelText="Approved";
                                          }


                                        }

                                    },),
                                    // CommonButtonGradiant2(
                                    //
                                    //   isIcon: true,
                                    //   icon: Icons.arrow_drop_down_outlined,
                                    //
                                    //   margin: EdgeInsets.zero,
                                    //   width: context.blockSizeHorizontal*6.5,
                                    //   height: context.blockSizeVertical*4,
                                    //   label:"Default",
                                    //   linearGraidiant:LinearGradient(
                                    //       colors:[ Color(0xff687892),
                                    //         Color(0xff8498B8),
                                    //
                                    //         //add more colors for gradient
                                    //       ],
                                    //       begin: Alignment.topCenter,
                                    //       end: Alignment.bottomCenter, //end of the gradient color
                                    //       stops: [ 0.5, 0.8] //stops for individual color
                                    //     //set the stops number equal to numbers of color
                                    //   ),
                                    //   onTap: (){
                                    //
                                    //
                                    //
                                    //   },
                                    //
                                    // ),
                                    SizedBox(width:   context.blockSizeHorizontal*3.5,),
                                  Expanded(
                                    child: commonSearchRightScreen(context,onchange:(sa){
                                      if(sa==""){
                                        context.read<ApproveCartListCubit>().getApproveCartList("");
                                      }
                                      else{
                                        context
                                            .read<ApproveCartListCubit>()
                                            .searchApproveCartList(labelText=="Pending"?"?list_type=pending&element=$sa":"?list_type=approved&element=$sa");
                                      }

                                      setState(() {

                                      });
                                    },
                                      searcController:search
                                    ),
                                  ),
                                  SizedBox(width:   context.blockSizeHorizontal*3.5,),
                                    // Spacer(),
                                    CommonUnGradiantButton(
                                      value: pendingCount,
                                      lable: "Pending",
                                      clr: Color(0xffFBDDDD),
                                    ),

                                    SizedBox(width: 5,),
                                    CommonUnGradiantButton(
                                      value: aaprovedCount??"",
                                      lable: "Approved",
                                      clr: Color(0xffCEEDD3),
                                    ),

                                  ],
                                )

                              ),
                              // SizedBox(height: 10,),
                              // Divider(),
                              Expanded(
                                child: Container(
                               // color:   Color(0xffE1E7ED),




                                  child: Column(
                                    children: [
                                      Container(

                                        color: Colors.white,
                                        width: context.blockSizeHorizontal * 90,
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: customTableTwo(
                                          border: const TableBorder(
                                            horizontalInside:
                                            BorderSide(width: 0.2, color: Colors.red,
                                                style:
                                                BorderStyle.solid),
                                          ),
                                          tableWidth: .5,
                                          widths: widths,
                                          childrens: [
                                            TableRow(

                                                children: [

                                                  tableHeadtextTwo(
                                                      'Cart ID',
                                                      color: Color(0xffF8F9FA),
                                                      align: Alignment.center,
                                                      height: 42,

                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),

                                                  tableHeadtextTwo(
                                                      'Customer Code',
                                                      color: Color(0xffF8F9FA),
                                                      align: Alignment.center,
                                                      height: 42,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),

                                                  tableHeadtextTwo(
                                                      'Amount',
                                                      color: Color(0xffF8F9FA),
                                                      height: 42,
                                                      align: Alignment.center,
                                                      textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                                  ),
                                                  // tableHeadtextTwo(
                                                  //     '',
                                                  //     align: Alignment.center,
                                                  //
                                                  //     color: Color(0xffF8F9FA),
                                                  //     height: 42,
                                                  //     textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                                                  //   // size: 13,
                                                  // ),





                                                ]),


                                          ],

                                        ),
                                      ),
                                      BlocBuilder<ApproveCartListCubit, ApproveCartListState
                                      >(
      builder: (context, state) {
        return  state.maybeWhen(orElse: (){
          return customCupertinoLoading();
        },
            loading: (){
              return customCupertinoLoading();
            },
          success: (data){
          return   Expanded(child:approveList.isEmpty?
          Container(
              height: context.blockSizeVertical*60,
              margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
              color: Colors.white,
              child: EmptyDataDisplay()):
          Container(color: Color(0xffE1E7ED),
            height: context.blockSizeVertical*60,



            width: context.blockSizeHorizontal * 90,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: customTableTwo(
                  border:  TableBorder(
                    // verticalInside: BorderSide(
                    //     width: 0.5,
                    //     color: Colors.black45,
                    //     style:
                    //     BorderStyle.solid),
                    horizontalInside:
                    BorderSide(width: 0.2, color: Colors.black45,
                        style: BorderStyle.solid),
                    top:BorderSide(width: 0.5, color: Colors.grey.withOpacity(.2),
                        style:
                        BorderStyle.solid),

                    bottom: BorderSide(width: 0.5, color: Colors.grey.withOpacity(.2),
                        style:
                        BorderStyle.solid),
                  ),
                  tableWidth: .5,
                  widths:widths,
                  childrens: [
                    for(var i=0;i<approveList.length;i++)
                      TableRow(
                          children: [

                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i].id.toString().toTitleCase()??"",(){},align: Alignment.center,)),

                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i]?.cutsomerCode.toString()??"",(){
                                  onTapFunc(i);
                                },align: Alignment.center)),

                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: textPaddingTwo(approveList[i]?.totalCartValue==null?"":approveList[i]?.totalCartValue.toString()??"",(){
                                  onTapFunc(i);
                                },align: Alignment.center)),

                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            //     child: InkWell(
                            //       onTap: (){
                            //         createOrPatch=true;invoicePage=false;
                            //         Variable.callOrderId=int.tryParse(approveList[i].id.toString())??0;
                            //         context.read<ReadOrdersCubit>().getOrdersRead(approveList[i].id??0);
                            //         Navigator.push(
                            //             context,
                            //             MaterialPageRoute(builder: (context) =>
                            //             const CallCenterMain(tabValue: 3,editOrder: true,isRejectOrApprove: true,)
                            //             ));
                            //       },
                            //       child: CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9,child: Icon(Icons.edit,size:context.blockSizeHorizontal*1.4,color: Color(0xff7486A2),),)),
                            //     ),






                          ]
                      ),

                  ],
                ),
              ),
            ),
          ),);
          }
        );
      },
)
                                    ],


                                  ),
                                ),
                              ),





                            ],
                          ),




                    ),
          Positioned(
            right: 10,
              top:MediaQuery.of(context).size.height/2,
              child:CommonButtonGradiant2(
                quarterTurns: -1,
                isIcon: true,
                // image: LeftMenuSvg().backwardArrow,
                icon: Icons.arrow_drop_up,


                margin: EdgeInsets.zero,
                width: context.blockSizeHorizontal*2.5,
                height: context.blockSizeVertical*19,
                label:"VIEW ORDERS",
                linearGraidiant:LinearGradient(
                    colors:[ Color(0xff6F91CB),
                      Color(0xff6F91CB),

                      //add more colors for gradient
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, //end of the gradient color
                    stops: [ 0.5, 0.8] //stops for individual color
                  //set the stops number equal to numbers of color
                ),
                onTap:(){
                  setState(() {
                    // widget.onPress();
                    reverseAnimation();
                  });
                }






                ,))
        ],
      ),
    ),
  ),
);
          }
      ),
    );



  }
}