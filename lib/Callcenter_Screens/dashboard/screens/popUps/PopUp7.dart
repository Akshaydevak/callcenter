import 'package:flutter/material.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../../Widgets/ItemCard.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../CallCenterWidgets.dart';
import '../../../Callcenter/widgets.dart';



class SevanthPopUp extends StatefulWidget {

  const SevanthPopUp({Key? key,}) : super(key: key);

  @override
  State<SevanthPopUp> createState() => _SevanthPopUpState();
}

class _SevanthPopUpState extends State<SevanthPopUp> {
  TextEditingController noOfItems=TextEditingController();
  TextEditingController totalDisc=TextEditingController();
  TextEditingController Vatable=TextEditingController();
  TextEditingController actualCost=TextEditingController();
  TextEditingController grandTotal=TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Builder(
        builder: (context) {
          return
            AlertDialog(
              content: PopUpHeaderCallcenterTwo(
                width: context.blockSizeHorizontal*77,
                label: "Orderd Products",
                onApply: () {},
                onEdit: () {},
                dataField: SizedBox(
                  height: context.blockSizeVertical*50,

                  child: SingleChildScrollView(
                    child:
                    Container(
                      // color: Colors.red,
                      // height: 600,
                      // width: MediaQuery.of(context).size.width-20,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [

                                  SizedBox(height: context.blockSizeVertical*3,),
                      Container(
                        alignment: Alignment.topRight,
                        height: context.blockSizeVertical*40,

                        // color: Colors.yellow,
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Container(
                              width: context.blockSizeHorizontal * 72,
                              child: customTableTwo(
                                border: const TableBorder(
                                  verticalInside: BorderSide(
                                      width: 0.5,
                                      color: Colors.black45,
                                      style:
                                      BorderStyle.solid),
                                  horizontalInside:
                                  BorderSide(width: 0.5, color: Colors.black45,
                                      style:
                                      BorderStyle.solid),
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
                                      BorderStyle.solid),),
                                tableWidth: .5,
                                widths: {

                                  0: const FlexColumnWidth(1),
                                  1: const FlexColumnWidth(2),
                                  2: const FlexColumnWidth(2),
                                  3: const FlexColumnWidth(2),
                                  4: const FlexColumnWidth(2),
                                  5: const FlexColumnWidth(2),
                                  6: const FlexColumnWidth(2.5),
                                  7: const FlexColumnWidth(2),
                                  8: const FlexColumnWidth(3),
                                  9: const FlexColumnWidth(2),
                                  10: const FlexColumnWidth(3),
                                  11: const FlexColumnWidth(3),



                                },
                                childrens: [
                                  TableRow(

                                      children: [
                                        tableHeadtextTwo(

                                          'Sl.No',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Item Code',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Barcode',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Item Name',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Uom',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Rate(AED)',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Qty',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Discount(%)',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Amount',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Vatable',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Actual Cost',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtextTwo(
                                          'Total',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),




                                      ]),


                                  // TableRow(
                                  //     children: [
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //       TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  //           child: textPaddingTwo("")),
                                  //
                                  //
                                  //
                                  //
                                  //     ]
                                  // ),
                                ],
                              ),
                                ),
                              ],
                            ),

                          ],
                        ),

                      ),

                      Container(
                      height: context.blockSizeVertical*8,
                      // width: context.blockSizeHorizontal*55,
                      // color: Color(0xffFFFFFF),
                      child: Row(
                        children: [
                          TextFieldCallCenter(controller: noOfItems,text: "No.Of.Items",font: context.blockSizeHorizontal*0.8,readOnly: false),
                          SizedBox(width: context.blockSizeHorizontal*1.5,),
                          TextFieldCallCenter(controller: totalDisc,text: "Total Discount",font: context.blockSizeHorizontal*0.8,readOnly: false),
                          SizedBox(width: context.blockSizeHorizontal*1.5,),
                          TextFieldCallCenter(controller: Vatable,text: "Vatable Amount",font: context.blockSizeHorizontal*0.8,readOnly: false),
                          SizedBox(width: context.blockSizeHorizontal*1.5,),
                          TextFieldCallCenter(controller: actualCost,text: "Actual Cost",font: context.blockSizeHorizontal*0.8,readOnly: false),
                          SizedBox(width: context.blockSizeHorizontal*1.5,),
                          TextFieldCallCenter(controller: grandTotal,text: "Grand total",font: context.blockSizeHorizontal*0.8,readOnly: false),
                          SizedBox(width: context.blockSizeHorizontal*1.5,),
                          TextDropDown(),

                        ],
                      ),)
                                ],
                              )
                            ],
                          )


                        ],
                      ) ,

                    ),
                  ),
                ),
              ),
            );

        }
    );
  }
}