import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../Widgets/commonutils.dart';
import '../dashboard/screens/popUps/PopUp10.dart';
import '../dashboard/screens/popUps/PopUp3.dart';

class TableBottomHead extends StatefulWidget {
  final TextEditingController notesOrRemark;
  final TextEditingController remarkTextEditing;
  final String totalQty;
  final String deliveryChargdeTotal;
  final String totalDiscount;
  final String totalVatable;
  final String totalPrice;
  final String orderId;
  final bool editOrder;
  final bool invoiceOrder;
  final bool isholded;
  final bool isInvoiceLoading;
  final bool isRejectOrApprove;
  final int tabActiveCount;
  final bool isRejectOrApproveCart;
  final Function? onTapInvoice;
  final Function refresh;
 final  List<ApproveCartDisplayModel> approveOrderCartLis;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge) totalValue;

  final String invoicebuttonLabel;

  const  TableBottomHead({
    Key? key,
    required this.notesOrRemark,
    this.isRejectOrApprove=false,
    this.isRejectOrApproveCart=false,
    this.onTapInvoice,
    this.isInvoiceLoading=false,


    required this.totalQty,
    required this.totalDiscount,
    required this.totalVatable,
    required this.totalPrice,
    required this.orderId,
    required this.editOrder, required this.invoiceOrder, required this.remarkTextEditing, required this.isholded, required this.invoicebuttonLabel, required this.deliveryChargdeTotal, required this.totalValue, required this.refresh,required this.approveOrderCartLis, required this.tabActiveCount, }) : super(key: key);

  @override
  State<TableBottomHead> createState() => _TableBottomHeadState();
}

class _TableBottomHeadState extends State<TableBottomHead> {

  bool IsClicked=false;
  FocusNode tableBottom=FocusNode();
  allTotalCalculation(){
    double totalQty = 0;
    double totaldiscount = 0;
    double vatableTotal = 0;
    double totalPrice=0;
    double deliveryCharge=0;
    double   pricetotal=0;
    List<String> deliveryChargeList=[];
    double vatTotal=0;






    for (var i = 0; i <patchList.length; i++) {
      if(patchList[i].isCheck!=true){

        totalQty +=  double.tryParse(patchList[i].quantity.toString())??0;
        totaldiscount +=  double.tryParse(patchList[i].discount.toString())??0;
        vatableTotal += double.tryParse(patchList[i].vatableAmount.toString())?? 0;
        totalPrice +=  double.tryParse(patchList[i].totalAmount.toString())??0;
        pricetotal += double.tryParse(patchList[i].amount.toString())?? 0;
        deliveryCharge += deliveryChargeList.contains(patchList[i]?.deliverySlotId.toString())?0:double.tryParse(patchList[i].deliveryCharge.toString()) ?? 0;
        print("deliveryCharge$deliveryCharge");
        print("orderLineRead[i].deliverySlotId${patchList[i].deliverySlotId}");
        vatTotal +=  double.tryParse(patchList[i].vat.toString())??0;

        var isContain=deliveryChargeList.where((element) => element==patchList[i].deliverySlotId);
        print("isContain$isContain");

        if(isContain.isEmpty==true){
          deliveryChargeList.add(patchList[i].deliverySlotId.toString());

        }
      }




    }
    totalQty = patchList.length.toDouble();



    widget.totalValue!(totalQty,totaldiscount,vatableTotal,totalPrice,pricetotal,vatTotal,deliveryCharge);
  }

  allTotalCartCalculation(){
    double totalQty = 0;
    double totaldiscount = 0;
    double vatableTotal = 0;
    double totalPrice=0;
    double deliveryCharge=0;
    double   pricetotal=0;
    List<String> deliveryChargeList=[];
    double vatTotal=0;






    for (var i = 0; i <widget. approveOrderCartLis.length; i++) {
      if(widget.approveOrderCartLis[i].isCheck!=true){

        totalQty +=  double.tryParse(widget.approveOrderCartLis[i].quantity.toString())??0;
        totalPrice +=  double.tryParse(widget.approveOrderCartLis[i].price.toString())??0;


      }




    }
    totalQty = widget.approveOrderCartLis.length.toDouble();



    widget.totalValue!(totalQty,0,0,totalPrice,0,0,0);
  }
  @override
  Widget build(BuildContext context) {
    return  RawKeyboardListener(
      autofocus: true,
      focusNode:tableBottom,
      onKey: (RawKeyEvent event) {
        print("pressingggggggggggggggggggggddddddddddd${event.logicalKey}");
        if (event is RawKeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.tab) {
            if(invoicePage){
              widget.onTapInvoice!();
            }

            // Handle arrow down key press

          } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
            // Handle arrow up key press
            // _changeSelectedRow(-1);
          }
          else if(event.logicalKey==LogicalKeyboardKey.enter){
            // invoiceCheckBoxselectionFunc(invoiceselectedRow);
          }
        }
      },

      child: Container(
        height: context.blockSizeVertical*7,
        width: context.blockSizeHorizontal*73,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // width: context.blockSizeHorizontal*48,
              padding: EdgeInsets.only(left:context.blockSizeHorizontal*1 ),

              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if(widget.isRejectOrApproveCart==true)...[
                    InsideText(text1: "No.Of.Items :  ",text2:widget.totalQty,height: context.blockSizeVertical*4.5,width: context.blockSizeHorizontal*11,),
                    SizedBox(width: context.blockSizeHorizontal*.45,),

                    InsideText(text1: "Grand Total :  ",height: context.blockSizeVertical*3.8,width: context.blockSizeHorizontal*11,text2: widget.totalPrice,),
                  ]else...[
                    InsideText(text1: "Items :  ",text2:widget.totalQty,height: context.blockSizeVertical*4.5,width: context.blockSizeHorizontal*11,),
                    SizedBox(width: context.blockSizeHorizontal*.45,),

                    InsideText(text1: "Total Disc. :  ",height: context.blockSizeVertical*4.5,width: context.blockSizeHorizontal*11,text2: widget.totalDiscount,),
                    SizedBox(width: context.blockSizeHorizontal*.45,),
                    InsideText(text1: "Vatable Amt :  ",height: context.blockSizeVertical*4.5,width: context.blockSizeHorizontal*11,text2: widget.totalVatable,),
                    SizedBox(width: context.blockSizeHorizontal*.45,),
                    InsideText(text1: "Delivery Charge :  ",height: context.blockSizeVertical*3.8,width: context.blockSizeHorizontal*11,text2: widget.deliveryChargdeTotal,),
                    SizedBox(width: context.blockSizeHorizontal*.45,),

                    InsideText(text1: "Grand Total :  ",height: context.blockSizeVertical*3.8,width: context.blockSizeHorizontal*11,text2: widget.totalPrice,),
                  ]



                ],
              ),
            ),

            const Spacer(),if(widget.isRejectOrApprove ||widget.isRejectOrApproveCart)...[
              CommonButtonGradiant2(

                margin: EdgeInsets.zero,
                width: context.blockSizeHorizontal*6,
                height: context.blockSizeVertical*5,
                label:"Reject All",
                linearGraidiant:LinearGradient(
      colors:patchList.any((element) => element.needApproval==true)!=true?[Color(0xffcDcDcD),
      Color(0xffcDcDcD),
      //add more colors for gradient
      ]:IsClicked?[Color(0xffcDcDcD),
        Color(0xffcDcDcD),
        //add more colors for gradient
      ]:[ Colors.red,
        Colors.red,

        //add more colors for gradient
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter, //end of the gradient color
      stops: [ 0.5, 0.8] //stops for individual color
      //set the stops number equal to numbers of color
      ),
                onTap: (){

                  if(widget.isRejectOrApprove){
                    if(  patchList.any((element) => element.needApproval==true)!=true){
                      context.showSnackBarError("please press reset buttion");
                    }else{
                      for( int i=0;i<patchList.length; i++){
                        if(patchList[i].needApproval==true){
                          patchList[i]=patchList[i].copyWith(
                              isApproved: false,
                              approvalStatus: "rejected",
                              isCheck: true,
                              needApproval: false

                          );
                        }
                      }

                      IsClicked=true;
                      allTotalCalculation();
                      widget.refresh();
                    }


                  }
                  else if(widget.isRejectOrApproveCart){
                    if(  widget.approveOrderCartLis.any((element) => element.needApproval==true)!=true){
                      context.showSnackBarError("please press rest buttion");
                    }else{
                      for( int i=0;i<widget.approveOrderCartLis.length; i++){
                        if(widget.approveOrderCartLis?[i].needApproval==true){
                          widget.approveOrderCartLis[i]=widget.approveOrderCartLis[i].copyWith(
                              isApproved: false,
                              approvalStatus: "rejected",
                              isCheck: true,
                              needApproval: false

                          );
                        }
                      }
                      IsClicked=true;
                      allTotalCartCalculation();
                      widget.refresh();
                    }


                  }
                },

              ),
              SizedBox(width: context.blockSizeHorizontal*.3,),
              CommonButtonGradiant2(
                margin: EdgeInsets.zero,
                width: context.blockSizeHorizontal*6,
                height: context.blockSizeVertical*5,
                linearGraidiant: LinearGradient(colors:patchList.any((element) => element.needApproval==true)!=true?[Color(0xffcDcDcD),
                  Color(0xffcDcDcD),
                  //add more colors for gradient
                ]:IsClicked?[Color(0xffcDcDcD),
      Color(0xffcDcDcD),
      //add more colors for gradient
      ]:[ Color(0xff08A521),
      Color(0xff08A521),

      //add more colors for gradient
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter, //end of the gradient color
      stops: [ 0.5, 0.8] //stops for individual color
      //set the stops number equal to numbers of color
      ),
                label:"Approve All",
                onTap: (){
                  if(widget.isRejectOrApprove){
                    if(  patchList.any((element) => element.needApproval==true)!=true){
                      context.showSnackBarError("please press rest buttion");
                    }else{
                      for( int i=0;i<patchList.length; i++){
                        if(patchList[i].needApproval==true){
                          patchList[i]=patchList[i].copyWith(
                              isApproved: true,
                              approvalStatus: "approved",
                              isCheck: false,
                              needApproval: false

                          );
                        }
                      }
                      setState(() {

                      });
                      IsClicked=true;
                      allTotalCalculation();
                      widget.refresh();
                    }

                  }
                  else if(widget.isRejectOrApproveCart){
                    for( int i=0;i<widget.approveOrderCartLis.length; i++){
                      if(widget.approveOrderCartLis[i].needApproval==true){
                        widget.approveOrderCartLis[i]=widget.approveOrderCartLis[i].copyWith(
                            isApproved: true,
                            approvalStatus: "approved",
                            isCheck: false,
                            needApproval: false

                        );
                      }
                    }
                    setState(() {

                    });
                    IsClicked=true;
                    allTotalCartCalculation();
                    widget.refresh();
                  }



                },

              ),
              SizedBox(width: context.blockSizeHorizontal*.5,),
            ]else...[
              if(invoicePage!=true)
                CommonButtonGradiant(
                  isFocus: widget.tabActiveCount==2?true:false,
                  margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                  label:"Remarks" ,
                  isInActive:widget.isholded ,
                  height: context.blockSizeVertical*4.5,
                  width: context.blockSizeHorizontal*8.5 ,
                  onTap: (){
                    if(widget.isholded){
                      context.showSnackBarError("Please Press UnHold");
                    }
                    else{
                      showDailogPopUp(
                        context,
                        ThirdPopUp(
                          notesOrRemarks: widget.notesOrRemark,
                          remarkTextEditing: widget.remarkTextEditing,
                        ),
                      );
                    }
                  },

                ),
              // Container(
              //   height: context.blockSizeVertical*4.5,
              //   width: context.blockSizeHorizontal*8.5 ,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(2),
              //     color:const Color(0xff687892),
              //
              //   ),
              //   child: InkWell(
              //     onTap: (){  showDailogPopUp(
              //       context,
              //       ThirdPopUp(
              //         notesOrRemarks: notesOrRemark,
              //       ),
              //     );},
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "Notes & Remarks",
              //             style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
              //           ),
              //         ],
              //       )),
              // ),
              SizedBox(width: context.blockSizeHorizontal*.45,),
              // CommonButtonGradiant(
              //   margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
              //   label:"Order Info" ,
              //   height: context.blockSizeVertical*4.5,
              //   width: context.blockSizeHorizontal*7.5 ,
              //   onTap: (){ },
              //
              // ),
              // Container(
              //   height: context.blockSizeVertical*4.5,
              //   width: context.blockSizeHorizontal*7.5 ,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(2),
              //     color:const Color(0xff687892),
              //
              //   ),
              //   child: InkWell(
              //       onTap: (){},
              //
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "Order Info",
              //             style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
              //           ),
              //         ],
              //       )),
              // ),
              // SizedBox(width: context.blockSizeHorizontal*.8,),
              invoicePage?
              CommonButtonGradiant(
                  isIndiactor: widget.isInvoiceLoading,
                  isFocus: widget.tabActiveCount==2?true:false,
                  isIcon:widget.invoicebuttonLabel=="INVOICED"?true:false ,
                  margin: EdgeInsets.zero,
                  width: context.blockSizeHorizontal*12.1,
                  height: context.blockSizeVertical*6,
                  label:widget.invoicebuttonLabel,onTap: (){
                widget.onTapInvoice!();
              })
              // SizedBox(
              //   height: context.blockSizeVertical*4.5,
              //   child: TextButton(
              //       onPressed: (){
              //         showDailogPopUp(
              //           context,
              //           TenthPopUp(
              //             amountTotal: totalPrice,
              //            orderId: orderId,
              //           ),
              //         );
              //       },
              //       style: ButtonStyle(
              //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(2),
              //             // side: BorderSide(color: Color(0xffF4F4F4))
              //           )),
              //           backgroundColor: MaterialStateProperty.all(Color(0xff219F54))),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "PAY NOW",
              //             style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
              //           ),
              //         ],
              //       )),
              // )
                  :
              SizedBox(),
              SizedBox(width: context.blockSizeHorizontal*.5,),
            ]


          ],
        ),),
    );
  }
}
