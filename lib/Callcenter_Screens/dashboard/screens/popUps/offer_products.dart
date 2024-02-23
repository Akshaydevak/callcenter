import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/CallCenterWidgets.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/SecondHead.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp10.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/offer_hub_list/offer_hub_list_cubit.dart';
import 'package:salesapp/Cubit/negotationList/negotation_list_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_check_post_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import 'package:salesapp/Models/Call_Center_Model/hub_model/hub_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class OfferPeriodPopup extends StatefulWidget {
  final String? id;
  final String? orderTypeText;
  final double totalCartValue;
  final NegotiationOutPutModel model;
  final Function  addPatchInvoiceFunction;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge) totalValue;


  OfferPeriodPopup({this.id, required this.model, required this.totalCartValue, required this.addPatchInvoiceFunction, required this.totalValue, this.orderTypeText, });


  @override
  State<OfferPeriodPopup> createState() => _OfferPeriodPopupState();
}

class _OfferPeriodPopupState extends State<OfferPeriodPopup> {

  List<NegotiationListModel>negotiationList = [];
  List<NegotiationListModel>addnegotiationList = [];
  TextEditingController searcController=TextEditingController();
  List<CartLineModel> list=[];
  double totalCartValue=0;
  double VatAmounts=0.0;
  TextEditingController vatablePrize=TextEditingController();
  double Total=0.0;
  int selectedIndex=-1;
  var paginatedList;
  NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
  TextEditingController negotiationText =TextEditingController();
  getNegotiationPatch(){
    if(createOrPatch==true){
      if( patchList.isNotEmpty==true){
        for(var i=0;i< patchList.length;i++){
          list.add(CartLineModel(
              quantity: patchList[i].quantity,
              actualCost:  patchList[i].actualCost,
              totalSellingPrice:  patchList[i].totalAmount

          ));
        }
      }

    }
    else if(createOrPatch!=true && invoicePage!=true){
      if(newList.isNotEmpty==true){
        for(var i=0;i<newList.length;i++){
          list.add(CartLineModel(
              quantity:newList[i].quantity,
              actualCost: newList[i].actualCost,
              totalSellingPrice: newList[i].totalAmount,



          ));
        }
      }
    }
    print("additionList$list");
  }

bool addToPachAndCreateList(){
    print("assNegotiation$addnegotiationList");
    if(createOrPatch==true){
        for(var i=0;i< addnegotiationList.length;i++){
          patchList.add(LinesCallcenter(
              quantity: 1,
              actualCost:  addnegotiationList[i].actualCost??0,
            image1:addnegotiationList[i].image1,
            id:null,
            isActive: true,
            totalAmount: addnegotiationList[i]?.totalPrice??0,
            vatableAmount:addnegotiationList[i]?.vatableAmount??0 ,
            variantId: addnegotiationList[i].id,
            warrantyPrice: 0,
            uomName: addnegotiationList[i].salesUom,
            needApproval:false,

            returnType:addnegotiationList[i]?.returnType ,


            variantName: addnegotiationList[i].name,
            barcode: addnegotiationList[i].barcode,
            vat: addnegotiationList[i].vat,
            discount: addnegotiationList[i].discountDataModel?.discountAppliedPrice??0,
            sellingPrice: addnegotiationList[i].priceData??0,
            variantCode: addnegotiationList[i]. code,
            returnTime:addnegotiationList[i].returnTime??0,
            unitcost: addnegotiationList[i].unitCost??0,
            hubCode: addnegotiationList[i].hubCode??"",
            hubName: addnegotiationList[i].hubName??"",
            deliverySlotId: deliverySlotObject.id,
            // inventoryId:  addnegotiationList[i].inventoryId,
            deliveryCharge: deliverySlotObject.deliveryCharge??0,
          ));
        }

    }
    else if(createOrPatch!=true && invoicePage!=true){

      for(var i=0;i< addnegotiationList.length;i++){
        newList.add(OrderLineCallcenter(
          quantity: 1,
          totalAmount: addnegotiationList[i]?.totalPrice??0,
          vatableAmount:addnegotiationList[i]?.vatableAmount??0 ,

          actualCost:  addnegotiationList[i]?.actualCost??0,
          image1:addnegotiationList[i].image1,
          variantId:addnegotiationList[i].id,
          warrantyPrice: 0,
          uomName: addnegotiationList[i].salesUom,
          needApproval:false,
          isActive: true,
          variantCode: addnegotiationList[i].code,
          variantName: addnegotiationList[i].name,
          hubCode: addnegotiationList[i].hubCode??"",
          hubName: addnegotiationList[i].hubName??"",

          inventoryId:  addnegotiationList[i].inventoryId,
          sellingPrice: addnegotiationList[i]?.priceData??0,
          discount: addnegotiationList[i].discountDataModel?.discountAppliedPrice,
          deliverySlotId: deliverySlotObject.id,
          deliveryCharge: deliverySlotObject.deliveryCharge??0,


          barcode: addnegotiationList[i].barcode,
          vat: addnegotiationList[i].vat??0,
          returnTime: addnegotiationList[i].returnTime==null?0:addnegotiationList[i].returnTime?.toInt()??0 ,

          returnType: addnegotiationList[i].returnType,
          unitCost: addnegotiationList[i].unitCost??0,








        ));
      }

    }
   bool isTrue=  allTotalCalculation();
    return isTrue;
  }



  List<NegotiationListModel> negotiationList1=[];

  filterNegotiationList(List<NegotiationListModel> negotiationListlist ){
    negotiationList1.clear();
    for(var item in negotiationListlist){
      if(item.haveNegotiation==true && item.stockCount!=0){
        negotiationList1.add(item);
      }
    }
    print("negoooooooooooooooooooList$negotiationList1");
    setState(() {

    });
  }

  void vatableAmount(int Qty,double price,double disct,String? type){
    if (type =="price" ||type =="" ||type =="price") {
      VatAmounts =double.parse( ((price*Qty)-(disct*Qty)).toStringAsFixed(2));

    }
    else{
      double total = 0;
      total=(price*Qty);
      VatAmounts =double.parse( ((total)-(((total*disct)/100))).toStringAsFixed(2));

    }
    print("vataAmounts$VatAmounts");
  }

  void vatablePrizeAmount(double Vatamounts,double vat){
    print("Enterde in vatable prize case");

    print(vat);
    setState(() {
      vatablePrize.text=(((Vatamounts)*vat)/100).toStringAsFixed(2);
      Totalprice(Vatamounts,vat);
      VatAmounts=double.parse((Vatamounts-double.parse(vatablePrize.text)).toStringAsFixed(2));

    });
  }
  // void vatablePrizeAmount(int Qty,double price,double vat){
  //   print("Enterde in vatable prize case");
  //   print(Qty);
  //   print(price);
  //   print(vat);
  //   setState(() {
  //     vatablePrize.text=(((price*Qty)*vat)/100).toStringAsFixed(2);
  //   });
  // }
  void Totalprice(double VatAmounts,double vat){
    // Total = VatAmounts;
    Total= double.parse((VatAmounts+((VatAmounts*vat)/100)).toStringAsFixed(2));
    print("Total$Total");
  }



 bool allReadyExistCheck(object){
    bool isExist=false;
    if(createOrPatch==true){
      var isContain=patchList.where((element) => element.variantId==object.id);

      if(isContain.isEmpty==true){
        isContain=patchList.where((element) => element.id==object.id);

      }


      if(isContain.isNotEmpty==true){
        isExist=true;
      }
      else{

          isExist=false;

      }

    }
    else if(createOrPatch!=true && invoicePage!=true){
      var isContain=newList.where((element) => element.variantId==object.id);
      print(isContain);
      if(isContain.isNotEmpty==true){
        isExist=true;
      }
      else{
        isExist=false;
      }
    }
    return isExist;

  }


 bool allTotalCalculation(){
    print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    double totalQty = 0;
    double totaldiscount = 0;
    double vatableTotal = 0;
    double totalPrice=0;
    double deliveryCharge=0;
    double   pricetotal=0;
    List<String> deliveryChargeList=[];
    double vatTotal=0;



     if(createOrPatch==true){

      for (var i = 0; i < patchList.length; i++) {

        totalQty +=  double.tryParse(patchList[i].quantity.toString())??0;
        totaldiscount +=  double.tryParse(patchList[i].discount.toString())??0;
        vatableTotal += double.tryParse(patchList[i].vatableAmount.toString())?? 0;
        totalPrice +=  double.tryParse(patchList[i].totalAmount.toString())??0;
        pricetotal += double.tryParse(patchList[i].amount.toString())?? 0;
        deliveryCharge += deliveryChargeList.contains(patchList[i].deliverySlotId.toString())?0:double.tryParse(patchList[i].deliveryCharge.toString()) ?? 0;
        vatTotal +=  double.tryParse(patchList[i].vat.toString())??0;

        var isContain=deliveryChargeList.where((element) => element==patchList[i].deliverySlotId);

        if(isContain.isEmpty==true){
          deliveryChargeList.add(patchList[i].deliverySlotId.toString());

        }


      }
      totalQty = patchList.length.toDouble();
    }
    else if(createOrPatch!=true && invoicePage!=true){
      print("1st case");

      for (var i = 0; i < newList.length; i++) {

        // if(variantList[i]==true){
        totalQty += double.tryParse(newList[i].quantity.toString()) ??0;
        totaldiscount += double.tryParse(newList[i].discountData?.discountPercentagePrice.toString()??"") ??0;
        vatableTotal += double.tryParse(newList[i].vatableAmount.toString()) ?? 0;
        totalPrice += double.tryParse(newList[i].totalAmount.toString()) ??0;

        pricetotal += double.tryParse(newList[i].sellingPrice.toString()) ?? 0;
        deliveryCharge += deliveryChargeList.contains(newList[i].deliverySlotId.toString())?0:double.tryParse(newList[i].deliveryCharge.toString()) ?? 0;
        vatTotal += double.tryParse(newList[i].vat.toString()) ??0;
        var isContain=deliveryChargeList.where((element) => element==newList[i].deliverySlotId);

        if(isContain.isEmpty==true){
          deliveryChargeList.add(newList[i].deliverySlotId.toString());

        }

        // }
      }
      totalQty = newList.length.toDouble();
    }

    widget.totalValue!(totalQty,totaldiscount,vatableTotal,totalPrice,pricetotal,vatTotal,deliveryCharge);
    return true;
  }

Future<void>onTapEvent(int index)async{
  if (negotiationList1[index].isAdded != true) {
    vatableAmount(
        1,
        negotiationList1[index].priceData ?? 0.0,
        negotiationList1[index].discountDataModel
            ?.discountPercentagePrice ?? 0,
        negotiationList1[index].discountDataModel
            ?.discountType);
    vatablePrizeAmount(
        VatAmounts,
        negotiationList1[index].vat ?? 0.0);
    print("tiot$Total");
    print("tiot$VatAmounts");
    negotiationList1[index] =
        negotiationList1[index].copyWith(
            totalPrice: Total,
            vatableAmount: VatAmounts,
            vat: double.tryParse(vatablePrize.text));
    print("negotiationList1$negotiationList1");
    addnegotiationList.add(negotiationList1[index]);
    Total = 0;
    VatAmounts = 0;
    vatablePrize.text = "0";
    totalCartValue = (totalCartValue) +
        (negotiationList1[index]?.priceData ?? 0);
    list.add(CartLineModel(
      varaintCode: negotiationList1[index].code??"",
        totalSellingPrice: negotiationList1[index]
            .priceData,
        quantity: 1,
        actualCost: negotiationList1[index].actualCost
    ));

    NegotiationCheckModel model = NegotiationCheckModel(
        negotiationLimit: widget.model.negotiationLinit,
        negotiationType: widget.model.negotiationType,
        negotiatonCode: widget.model.negotiationCode,
        totalCartValue: (widget.totalCartValue) +
            (totalCartValue),
        cartlineModel: list
    );
    print("modelsssssssssssssssssssssss$model");
    context.read<NegotiationCheckPostCubit>()
        .postReadNegotiationCheck(model);
    negotiationList1[index] =
        negotiationList1[index].copyWith(isAdded: true);
  }
  else {
    context.showSnackBarError("All ready Added");
  }
}

  @override
  void initState() {
    negotiationText.text=widget?.orderTypeText??"";
    getNegotiationPatch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          NegotationListCubit()
            ..getNegotationList(widget.id ?? ""),
        ),

      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<NegotiationCheckPostCubit, NegotiationCheckPostState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {

                  },
                  loading: (){
                    print("AKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKk");
                  },
                  success: (data) {
                    print("Testing errordsdftyguijokaesrdtfyuioierdtfyuioIIIIIIIIII");
                    setState(() {
                      if(data.data1){
                        negotationObject=data.data2;
                        if(negotationObject.isNegotationGet==true){
                      bool isBool=    addToPachAndCreateList();



                       if(isBool)  widget.addPatchInvoiceFunction();

                        }
                        else{
                          if(negotationObject.negotiationType=="based_on_cart_value"){
                            if(negotationObject.basedOn=="percentage"){
                              negotiationText .text="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue} % off";
                            }
                            else{
                              negotiationText .text="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue}AED off";
                            }


                          }
                          else{
                            if(negotationObject.basedOn=="percentage"){
                              negotiationText .text="Buy More  to get ${negotationObject.negotiationValue} % off";
                            }
                            else{
                              negotiationText .text="Buy More to get ${negotationObject.negotiationValue} AED off";
                            }

                          }
                        }

                      }


                    });

                  }
              );
            },
          ),

          BlocListener<OfferHubListCubit, OfferHubListState>(
            listener: (context, state) {
              print("READ STATE$state");
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read orders");
                  },
                  success: (data) {
                    setState(() {
                      print("hubListStatedfzxgfhkhzerjgkhlfhzdgcjkbfzdcgj");
                      List<HubResponseModel>  hubresponseList=data.data;
                     if(hubresponseList.isEmpty){
                       onTapEvent(selectedIndex);
                     }else{
                       showDailogPopUp(
                         context,
                         HubListPopUp(
                           variantCode:   negotiationList1[selectedIndex]?.code,
                           onTap: ( HubResponseModel val){

                             negotiationList1[selectedIndex] =
                                 negotiationList1[selectedIndex].copyWith(
                                     hubCode: val?.hubCode??"",
                                     hubName: val.hubStockName??"",
                                );
                             onTapEvent(selectedIndex);
                             Navigator.pop(context);
                           },
                         ),
                       );
                     }

                    });

                  }
              );
            },
          ),

        ],
        child: BlocConsumer<NegotationListCubit, NegotationListState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (data) {
                  print("negotiation list");

                  paginatedList = data;
                  negotiationList = data.data;
                  filterNegotiationList(negotiationList);
                });
          },
          builder: (context, state) {

            return Builder(
                builder: (context) {
                  return
                     AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: PopUpHeaderCallcenterTwo(
                        onCrossButtonPress:() {

                        },
                        isCancel: false,
                        height: context.blockSizeVertical * 90,
                        buttonVisible: false,

                        label: "Offer Products     Added products count ${addnegotiationList.length}",
                        onApply: () {},
                        onEdit: () {
                          print("cancel");
                        },
                        onTap: () {


                        },
                        dataField:
                        Container(
                          height: context.blockSizeVertical*73,
// color: Colors.red,

                          child:
                          // negotiationList1.isEmpty==true?Container(
                          //     height: context.blockSizeVertical * 55,
                          //     child: Center(child: EmptyDataDisplay())):
                          Column(
                            children: [
                              SizedBox(height: context.blockSizeVertical * 1,),
                              commonSearchRightScreen(
                                isMargin: false,

                                  context,onchange:(sa){
                                if(sa==""){
                                  context.read<NegotationListCubit>().getNegotationList(widget.id??"");
                                }
                                else{
                                  context.read<NegotationListCubit>().searchNegotiationList(widget.id??"",sa);
                                }

                                setState(() {

                                });
                              },
                                  searcController: searcController
                              ),
                              SizedBox(height: context.blockSizeVertical * 1,),
                              BlocBuilder<NegotationListCubit, NegotationListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse:(){
       return Center(child: customCupertinoLoading(),);
    },
    loading: (){
      return Center(child: customCupertinoLoading(),);
    },
      success: (data){
      return
        negotiationList1.isEmpty==true?  Container(
            height: context.blockSizeVertical*60,
            margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
            color: Colors.white,
            child: EmptyDataDisplay()):  Container(
        height: context.blockSizeVertical * 64,

        child: Column(
        children: [
          Container(

            height: negotiationText.text.isEmpty?context.blockSizeVertical * 52: context.blockSizeVertical * 50,
            // margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*1,  ),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: negotiationList1.length,
                itemBuilder: (BuildContext ctx, index) {
                  {
                    return CallCenterCommonLProductCArd(
                      isAdded: negotiationList1[index].isAdded == true
                          ? true
                          : false,
                      leadingImage: negotiationList1[index]
                          .image1 ?? "null",
                      sellingPrize: negotiationList1[index]
                          ?.priceData.toString() ?? "",
                      onAdd: () {
                        if (negotiationList1[index].isAdded == true){
                          var selectedindex=list.indexWhere((element) => element.varaintCode==negotiationList1[index].code);
                        var  existoiongIndex=addnegotiationList.indexWhere((element) => element.code==negotiationList1[index].code)
;
                          list.removeAt(selectedindex);
                          addnegotiationList.removeAt(existoiongIndex);

                          negotiationList1[index] =
                              negotiationList1[index].copyWith(isAdded: false);
                          totalCartValue = (totalCartValue)-
                              (negotiationList1[index]?.priceData ?? 0);
                          NegotiationCheckModel model = NegotiationCheckModel(
                              negotiationLimit: widget.model.negotiationLinit,
                              negotiationType: widget.model.negotiationType,
                              negotiatonCode: widget.model.negotiationCode,
                              totalCartValue: (widget.totalCartValue) +
                                  (totalCartValue),
                              cartlineModel: list
                          );
                          print("modelsssssssssssssssssssssss$model");
                          print("modelsssssssssssssssssssssss$list");
                          context.read<NegotiationCheckPostCubit>()
                              .postReadNegotiationCheck(model);
setState(() {

});
                        
                      }else{

                          bool isAdd = allReadyExistCheck(negotiationList1[index]);
                          if (isAdd) {
                            showDailogPopUp(
                                context,
                                FailiurePopup(
                                    content:   "the variant already exist in lines"
                                ));

                          }
                          else {
                            selectedIndex=index;
                            context.read<OfferHubListCubit>().getHubList(negotiationList1[index].code??"",);


                          }
                        }
                        
                        
                        
                        
                  
                      },
                      title: negotiationList1[index].name ??
                          "",


                    );
                  }
                }),
          ),
         Spacer(),
          Divider(),
      if(paginatedList!=null)    tablePagination(
                () => context
                .read<NegotationListCubit>()
                .refresh(),
            back: paginatedList?.previousUrl == null
                ? null
                : () {
              context
                  .read<NegotationListCubit>()
                  .previuosslotSectionPageList(widget.id ?? "",);
            },
            next:paginatedList?.nextPageUrl == null
                ? null
                : () {
              // print(data.nextPageUrl);
              context
                  .read<NegotationListCubit>()
                  .nextslotSectionPageList(widget.id ?? "");
            },
          ),
          negotiationText.text.isEmpty?Container():     Container(
            height: 51,
            // color: Color(0xffF8F8F8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                    Row(
                  children: [
                    Image(image: AssetImage(
                        "asset_images/roundBankIcon.png"),height: 30,),
                    SizedBox(width: 10,),
                    Container(child: Text(
                      // "Order above ${250.50} & Get 10% Off",
                      negotiationText.text ,
                      style: TextStyle(
                          color: Colors.red,fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1.5),),)

                  ],
                ),
              ],
            ),
          )
        ],
      ),);
      }

    );

  },
)

                            
                            ],
                          ),
                          // color: Colors.red,


                        )
//                         BlocBuilder<NegotationListCubit, NegotationListState>(
//   builder: (context, state) {
//     return state .maybeWhen(orElse: (){
//       return Center(child: customCupertinoLoading(),);
//     },
//     loading: (){
//       return Center(child: customCupertinoLoading(),);
//     },
//       success: (data){
//       return
//         Container(
//         // height: context.blockSizeVertical*80,
//         child:negotiationList1.isEmpty==true?Container(
//             height: context.blockSizeVertical * 55,
//             child: Center(child: EmptyDataDisplay())):  Column(
//           children: [
//             SizedBox(height: context.blockSizeVertical * 1,),
//             Column(
//               children: [
//                 commonSearchRightScreen(context,onchange:(sa){
//                   if(sa==""){
//                     context.read<NegotationListCubit>().getNegotationList(widget.id??"");
//                   }
//                   else{
//                     context.read<NegotationListCubit>().searchNegotiationList(widget.id??"",sa);
//                   }
//
//                   setState(() {
//
//                   });
//                 },
//                     searcController: searcController
//                 ),
//                 SizedBox(height: context.blockSizeVertical * 1,),
//                 Container(
//                   height: context.blockSizeVertical * 52,
//                   // margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*1,  ),
//                   child: GridView.builder(
//                       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                           maxCrossAxisExtent: 150,
//                           childAspectRatio: 3 / 3,
//                           crossAxisSpacing: 20,
//                           mainAxisSpacing: 20),
//                       itemCount: negotiationList1.length,
//                       itemBuilder: (BuildContext ctx, index) {
//                     {
//                       return CallCenterCommonLProductCArd(
//                         isAdded: negotiationList1[index].isAdded == true
//                             ? true
//                             : false,
//                         leadingImage: negotiationList1[index]
//                             .image1 ?? "null",
//                         sellingPrize: negotiationList1[index]
//                             ?.priceData.toString() ?? "",
//                         onAdd: () {
//                           bool isAdd = allReadyExistCheck(negotiationList1[index]);
//                           if (isAdd) {
//                             context.showSnackBarError(
//                                 "the variant already exist in lines");
//                           }
//                           else {
//                             if (negotiationList1[index].isAdded != true) {
//                               vatableAmount(
//                                   1,
//                                   negotiationList1[index].priceData ?? 0.0,
//                                   negotiationList1[index].discountDataModel
//                                       ?.discountPercentagePrice ?? 0,
//                                   negotiationList1[index].discountDataModel
//                                       ?.discountType);
//                               vatablePrizeAmount(
//                                   VatAmounts,
//                                   negotiationList1[index].vat ?? 0.0);
//                               print("tiot$Total");
//                               print("tiot$VatAmounts");
//                               negotiationList1[index] =
//                                   negotiationList1[index].copyWith(
//                                       totalPrice: Total,
//                                       vatableAmount: VatAmounts,
//                                       vat: double.tryParse(vatablePrize.text));
//                               print("negotiationList1$negotiationList1");
//                               addnegotiationList.add(negotiationList1[index]);
//                               Total = 0;
//                               VatAmounts = 0;
//                               vatablePrize.text = "0";
//                               totalCartValue = (totalCartValue) +
//                                   (negotiationList1[index]?.priceData ?? 0);
//                               list.add(CartLineModel(
//                                   totalSellingPrice: negotiationList1[index]
//                                       .priceData,
//                                   quantity: 1,
//                                   actualCost: negotiationList1[index].actualCost
//                               ));
//
//                               NegotiationCheckModel model = NegotiationCheckModel(
//                                   negotiationLimit: widget.model.negotiationLinit,
//                                   negotiationType: widget.model.negotiationType,
//                                   negotiatonCode: widget.model.negotiationCode,
//                                   totalCartValue: (widget.totalCartValue) +
//                                       (totalCartValue),
//                                   cartlineModel: list
//                               );
//                               print("modelsssssssssssssssssssssss$model");
//                               context.read<NegotiationCheckPostCubit>()
//                                   .postReadNegotiationCheck(model);
//                               negotiationList1[index] =
//                                   negotiationList1[index].copyWith(isAdded: true);
//                             }
//                             else {
//                               context.showSnackBarError("All ready Added");
//                             }
//                           }
//                         },
//                         title: negotiationList1[index].name ??
//                             "",
//
//
//                       );
//                     }
//                       }),
//                 ),
//               ],
//             ),
//             SizedBox(height: 5,),
//             Container(
//               height: 62,
//               color: Color(0xffF8F8F8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//
//                   Container(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: context
//                             .blockSizeHorizontal * 2,
//                         vertical: context.blockSizeVertical *
//                             1.5),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                             color: Colors.grey.withOpacity(.5)
//                         ),
//                         borderRadius: BorderRadius.circular(8)
//
//                     ),
//                     child: Row(
//                       children: [
//                         Image(image: AssetImage(
//                             "asset_images/lock.png")),
//                         SizedBox(width: 10,),
//                         Container(child: Text(
//                           negotiationText.text ,
//                           style: TextStyle(
//                               color: Colors.red),),)
//
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//         // color: Colors.red,
//
//
//       );
//       }
//     );
//
//   },
// ),
                      ),
                    );
                }
            );
          },
        ),
      ),
    );
  }
}