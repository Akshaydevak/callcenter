
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

import 'approve_cart/cubits/approve_cart_list/approve_cart_list_cubit.dart';
import 'approve_cart/cubits/read_approve_cart/read_approve_cart_cubit.dart';

class ApproveCartTable extends StatefulWidget {
  final  List<ApproveCartDisplayModel> orderLineRead;
  final Function refresh;
  final Function(bool) historyEnable;
  final TextEditingController? allCostemerId;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge)totalValue;

  const
  ApproveCartTable({Key? key, required this.orderLineRead,required this.refresh,  required this.totalValue, required this.historyEnable, this.allCostemerId}) : super(key: key);

  @override
  State<ApproveCartTable> createState() => _ApproveCartTableState();
}

class _ApproveCartTableState extends State<ApproveCartTable> {
  // List<LinesCallcenter> widget.orderLineRead=List.from([]);
  // ReadOrderCallCenter? readOrders;

  int selected=-1;
  tableSelctFunc(int index){
    widget.historyEnable(true);
    widget?.allCostemerId?.text=widget.orderLineRead[index].id.toString();
    selected=index;
    setState(() {

    });
  }

  void allCalculation(int Qty,double price,int index, ){






      double total = 0;
      total=(price*Qty);

    widget.orderLineRead[index]= widget.orderLineRead[index].copyWith(
    totalPrize: total
    );


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


  allTotalCalculation(){
    double totalQty = 0;
    double totaldiscount = 0;
    double vatableTotal = 0;
    double totalPrice=0;
    double deliveryCharge=0;
    double   pricetotal=0;
    List<String> deliveryChargeList=[];
    double vatTotal=0;






    for (var i = 0; i <widget. orderLineRead.length; i++) {
      if(widget.orderLineRead[i].isCheck!=true){


        totalQty +=  double.tryParse(widget.orderLineRead[i].quantity.toString())??0;
        totalPrice +=  double.tryParse(widget.orderLineRead[i].price.toString())??0;


      }




    }
    totalQty = widget.orderLineRead.length.toDouble();



    widget.totalValue!(totalQty,0,0,totalPrice,0,0,0);
  }
  @override
  Widget build(BuildContext context) {
    return     Builder(
        builder: (context) {
          return Container( width: context.blockSizeHorizontal*73,
            // height:  context.blockSizeVertical*61.4,
            child:
            Column(
              children: [
                Container(
                  color: Colors.white,
                  width: context.blockSizeHorizontal * 90,
                  child: customTableTwo(
                    border: const TableBorder(
                      horizontalInside:
                      BorderSide(width: 0.2, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                    ),
                    tableWidth: .5,
                    widths: {
                      0: const FlexColumnWidth(5),
                      1: const FlexColumnWidth(2),
                      2: const FlexColumnWidth(2),
                      3: const FlexColumnWidth(2),
                      4: const FlexColumnWidth(2),
                      5: const FlexColumnWidth(2),
                      6: const FlexColumnWidth(2),
                      7: const FlexColumnWidth(2),
                      8: const FlexColumnWidth(2),
                      9: const FlexColumnWidth(2.5),

                    },
                    childrens: [
                      TableRow(

                          children: [

                            tableHeadtextTwo(
                                'Item Name',
                                color: Color(0xff6F91CB),
                                align: Alignment.center,
                                height: 42,

                                textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                            ),
                            tableHeadtextTwo(
                                'Price',
                                align: Alignment.center,
                                color: Color(0xff6F91CB),
                                height: 42,
                                textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                            ),
                            tableHeadtextTwo(
                                'QTY',
                                color: Color(0xff6F91CB),
                                align: Alignment.center,
                                height: 42,
                                textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                            ),
                            tableHeadtextTwo(
                                'Total Price',
                                align: Alignment.center,

                                color: Color(0xff6F91CB),
                                height: 42,
                                textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                              // size: 13,
                            ), tableHeadtextTwo(
                                'Actions',
                                align: Alignment.center,
                                color: Color(0xff6F91CB),
                                height: 42,
                                textStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold )
                              // size: 13,
                            ),

                          ]),


                    ],

                  ),
                ),
                BlocBuilder<ApproveCartListCubit, ApproveCartListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return customCupertinoLoading();
    },
      success: (data){
      return data.data.isEmpty?
      Expanded(
        child: Container(
            // height: context.blockSizeVertical*60,
            // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
            color: Colors.white,
            child: EmptyDataDisplay()),
      ):
      BlocBuilder<ReadApproveCartCubit, ReadApproveCartState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: (){
            return customCupertinoLoading();
          },success: (data){
            return
              Expanded(child: widget.orderLineRead.isEmpty?
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
                      border: const TableBorder(
                        verticalInside: BorderSide(
                            width: 0.5,
                            color: Colors.black45,
                            style:
                            BorderStyle.solid),
                        horizontalInside:
                        BorderSide(width: 0.2, color: Colors.black45,
                            style: BorderStyle.solid),
                        top: BorderSide(width: 0.5, color: Colors.black45,
                            style:
                            BorderStyle.solid),
                        right: BorderSide(width: 0.5, color: Colors.black45,
                            style:
                            BorderStyle.solid),
                        left: BorderSide(width: 0.5, color: Colors.black45,
                            style:
                            BorderStyle.solid),
                        bottom: BorderSide(width: 0.5, color: Colors.black45,
                            style:
                            BorderStyle.solid),
                      ),
                      tableWidth: .5,
                      widths: {
                        0: const FlexColumnWidth(5),
                        1: const FlexColumnWidth(2),
                        2: const FlexColumnWidth(2),
                        3: const FlexColumnWidth(2),
                        4: const FlexColumnWidth(2),
                        5: const FlexColumnWidth(2),
                        6: const FlexColumnWidth(2),
                        7: const FlexColumnWidth(2),
                        8: const FlexColumnWidth(2),
                        9: const FlexColumnWidth(2.5),

                      },
                      childrens: [
                        for(var i=0;i<widget.orderLineRead.length;i++)
                          TableRow(
                              children: [

                                TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.orderLineRead[i].variantName.toString().toTitleCase()??"",(){
                                      tableSelctFunc(i);
                                    },align: Alignment.topLeft,)),

                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: UnderLinedInput(
                                    initialCheck: true,

                                    // controller: requestedListControllers[i],
                                    last:widget.orderLineRead[i].price?.toString()??"",
                                    onChanged: (va) {

                                      // // table[i] = table[i].copyWith(updateCheck: true);
                                      // setState(() {
                                      //
                                      // });
                                      // print(va);
                                      if (va == "") {

                                        widget.orderLineRead[i]= widget.orderLineRead[i].copyWith(
                                          quantity: 0,
                                          totalPrize: 0,
                                        );

                                        setState(() {});
                                      }
                                      else {
                                        widget.orderLineRead[i]=widget.orderLineRead[i].copyWith(price: double.tryParse(va));
                                        allCalculation(widget.orderLineRead[i].quantity??0,widget.orderLineRead[i].price??0,i);



                                      }

                                      setState(() {});
                                    },
                                  ),
                                ),


                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: UnderLinedInput(
                                    initialCheck: true,
                                    integerOnly: true,
                                    onClick: (){
                                      tableSelctFunc(i);
                                    },

                                    // controller: requestedListControllers[i],
                                    last:widget.orderLineRead[i].quantity?.toString()??"",
                                    onChanged: (va) {

                                      // // table[i] = table[i].copyWith(updateCheck: true);
                                      // setState(() {
                                      //
                                      // });
                                      // print(va);
                                      if (va == "") {

                                        widget.orderLineRead[i]= widget.orderLineRead[i].copyWith(
                                          quantity: 0,
                                          totalPrize: 0,);

                                        setState(() {});
                                      }
                                      else {
                                        widget.orderLineRead[i]=widget.orderLineRead[i].copyWith(quantity: int.tryParse(va));
                                        allCalculation(widget.orderLineRead[i].quantity??0,widget.orderLineRead[i].price??0,i,);



                                      }

                                      setState(() {});
                                    },
                                  ),
                                ),
                                // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                //     child: textPaddingTwo(widget.orderLineRead[i].quantity?.toString()??"",(){},align: Alignment.topLeft)),




                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.orderLineRead[i].totalPrize?.toString().toTitleCase()??"",(){
                                      tableSelctFunc(i);
                                    },align: Alignment.topLeft)),

                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child:Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            widget.orderLineRead[i].needApproval==true?  setState(() {
                                              widget.orderLineRead[i]=widget.orderLineRead[i].copyWith(
                                                  isApproved: true,
                                                  approvalStatus: "approved",
                                                  isCheck: false,
                                                  needApproval: false

                                              );
                                              widget.refresh();
                                            }):null;
                                            print("widget.orderLineRead${widget.orderLineRead}");
                                            allTotalCalculation();
                                            // Navigator.pop(context);
                                          },
                                          child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: widget.orderLineRead[i].needApproval==true? Colors.green:Colors.grey.withOpacity(.4),
                                              ),
                                              child: Icon(Icons.check,size:context.blockSizeHorizontal*1,color: Colors.white,)),
                                        ),
                                        SizedBox(width: context.blockSizeHorizontal*.5,),
                                        InkWell(
                                          onTap: (){
                                            widget.orderLineRead[i].needApproval==true?  showDailogPopUp(
                                                context,RejectOrderConfirmationPopup(
                                              onTap: (data){

                                                setState(() {

                                                  widget.orderLineRead[i]=widget.orderLineRead[i].copyWith(
                                                      isApproved: false,


                                                      approvalStatus: "rejected",
                                                      isCheck: true,
                                                      reasonApprovalObject:data,
                                                      needApproval: false

                                                  );
                                                  widget.refresh();
                                                });
                                                allTotalCalculation();
                                                Navigator.pop(context);

                                              },
                                            )):null;
                                          },
                                          child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: widget.orderLineRead[i].needApproval==true? Colors.red:Colors.grey.withOpacity(.4),
                                              ),
                                              child: Icon(Icons.clear,size:context.blockSizeHorizontal*1,color: Colors.white,)),
                                        ),

                                      ],
                                    )),




                              ]
                          ),

                      ],
                    ),
                  ),
                ),
              ),);
          });

        },
      );
      }
    );

  },
)
              ],
            ),);
        }
    );
  }
}
