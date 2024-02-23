import 'package:flutter/material.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import '../../Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import '../../Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import '../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import 'CallCenterTabScreen.dart';

class TableDetails extends StatefulWidget {
  final List<ReadVarriant>? readVariant;
  final List<LinesCallcenter>? lineCall;
  final List<LinesInvoiceCallcenter>? lineInvoice;
  final Function (String name,double price,String uom,int qty,double discount,double vatable,double vat,double total)? editfields;

  const TableDetails({Key? key, this.readVariant, this.lineCall, this.lineInvoice, this.editfields, }) : super(key: key);

  @override
  State<TableDetails> createState() => _TableDetailsState();
}
  bool editOption=false;
class _TableDetailsState extends State<TableDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        alignment: Alignment.topRight,
        height: context.blockSizeVertical*34,

        child: Column(
          children: [
            Row(
              children: [

                SizedBox(
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
                      8: const FlexColumnWidth(2),
                      9: const FlexColumnWidth(1),

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
                              'Item Name',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: 50,
                              size: 13,
                            ),
                            tableHeadtextTwo(
                              'Price',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: 50,
                              size: 13,
                            ),
                            tableHeadtextTwo(
                              'UOM',
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
                              'Vatable Amount',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: 50,
                              size: 13,
                            ),

                            tableHeadtextTwo(
                              'Vat',
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
                            tableHeadtextTwo(
                              '',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: 50,
                              size: 13,
                            )



                          ]),

                      if(variantList!=null)
                        for(var i=0;i<variantList.length;i++)


                          TableRow(
                              children: [

                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo((i+1).toString(),
                                            (){
                                              print("SlNo");

                                    })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].name.toString(),
                                            (){
                                      Variable.indexVariantList=i;
                                      print("tapp");
                                      setState(() {
                                        editOption=true;
                                        String productName="";
                                        double? price=0.0;
                                        int? qty=0;
                                        String uom="";
                                        double? discount=0.0;
                                        double? vatableAmd=0.0;
                                        double? vat=0.0;
                                        double? total=0.0;

                                        productName=variantList[i].name.toString();
                                        price=variantList[i].priceData;
                                        qty=variantList[i].qty;
                                        uom=variantList[i].salesUom.toString();
                                        discount=variantList[i].discountData?.discountPercentagePrice;
                                        vat=variantList[i].vat;
                                        vatableAmd=variantList[i].vatable;
                                        total=variantList[i].total;


                                        print("edit list$productName");
                                        widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                      });

                                              // widget.changeTable!(editList);
                                    })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(
                                        variantList[i].priceData.toString(),
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;


                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].salesUom.toString()??"",
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;


                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].qty.toString(),
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;


                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].discountData?.discountPercentagePrice.toString()??"",
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;


                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].vatable.toString(),
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;


                                                print("edit list$vatableAmd");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].vat.toString(),
                                            (){
                                              setState(() {
                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;

                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(variantList[i].total.toString(),
                                            (){

                                              setState(() {

                                                editOption=true;
                                                String productName="";
                                                double? price=0.0;
                                                int? qty=0;
                                                String uom="";
                                                double? discount=0.0;
                                                double? vatableAmd=0.0;
                                                double? vat=0.0;
                                                double? total=0.0;

                                                productName=variantList[i].name.toString();
                                                price=variantList[i].priceData;
                                                qty=variantList[i].qty;
                                                uom=variantList[i].salesUom.toString();
                                                discount=variantList[i].discountData?.discountPercentagePrice;
                                                vat=variantList[i].vat;
                                                vatableAmd=variantList[i].vatable;
                                                total=variantList[i].total;

                                                print("edit list$productName");
                                                widget.editfields!(productName,price??0.0,uom??"",qty??0,discount??0.0,vat??0.0,vatableAmd??0.0,total??0.0);
                                              });
                                            })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: IconButton(
                                      icon: Icon(Icons.dangerous,color: Colors.red,),
                                      onPressed: (){
                                        setState(() {
                                          variantList.remove(variantList[i]);
                                        });

                                      },)),
                              ]
                          ),

                      if(widget.lineCall!=null)
                        for(var i=0;i<widget.lineCall!.length;i++)


                          TableRow(
                              children: [
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo((i+1).toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].variantName.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].sellingPrice.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].uomName.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].quantity.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].discount.toString()??"",(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].vatableAmount.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo("",(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineCall![i].totalAmount.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: IconButton(icon: Icon(Icons.dangerous,color: Colors.red),
                                      onPressed: (){
                                        widget.lineCall?.remove(widget.lineCall![i]);
                                      },)),
                              ]
                          ),

                      if(widget.lineInvoice!=null)
                        for(var i=0;i<widget.lineInvoice!.length;i++)

                          TableRow(
                              children: [
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo((i+1).toString(),(){

                                    })),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].variantName.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].sellingPrice.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].uomName.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].quantity.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].discount.toString()??"",(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].vatableAmount.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo("",(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: textPaddingTwo(widget.lineInvoice![i].totalAmount.toString(),(){})),
                                TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: IconButton(icon: Icon(Icons.dangerous,color: Colors.red),
                                      onPressed: (){
                                        widget.lineInvoice?.remove(widget.lineInvoice![i]);
                                      },)),
                              ]
                          ),

                    ],
                  ),
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
