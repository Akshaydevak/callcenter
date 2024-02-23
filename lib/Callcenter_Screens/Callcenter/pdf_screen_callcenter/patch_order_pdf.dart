import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:salesapp/Cubit/Read_Business%20Data/read_business_data_cubit.dart';
import 'package:salesapp/Models/Business_Unit_Data/Business_Unit_Data.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../Models/Call_Center_Model/Read_Orders/Read_Orders.dart';



class CallCenterPatchPrintScreen extends StatefulWidget {
  final String vendorCode;
  final String note;
  final bool select;
  final String orderCode;
  final String orderDate;
  final String remarks;
  final double? discount;
  final double? vat;
  final double? taxableAmount;
  final double? totalPrice;
  // final double? unitCost;
  // final double? excisetax;
  final  List<LinesCallcenter> table;
  final InventoryListModel? model;

  CallCenterPatchPrintScreen({
    this.vendorCode="",
    this.orderCode="",
    this.note="",
    this.remarks="",
    this.orderDate="",
    required this.model,
    required this.table,
    this.taxableAmount=0.00,
    this.totalPrice=0.00,
    this.select=false,
    this.discount=0.00,
    this.vat=0.00,
    // this.unitCost=0.00,
    // this.excisetax=0.00,




  });

  @override
  _CallCenterPatchPrintScreenState createState() => _CallCenterPatchPrintScreenState();
}

class _CallCenterPatchPrintScreenState extends State<CallCenterPatchPrintScreen> {
  List<BusinessUnitData>? readData;
  String Email="";
  String Mobile="";
  late AutoScrollController _scrollController;
  @override
  void initState() {

    _scrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return BlocListener<ReadBusinessDataCubit, ReadBusinessDataState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..");
            },
            success: (data) {
              setState(() {
                readData=data;
                print("READING$readData");
                Mobile=readData![0].contact?.primary.toString()??"";
                Email=readData![0].email.toString()??"";

              });

            }
        );

      },
      child: Scaffold(

        body:PdfPreview(
          build: (format) => _generatePdf(format,"title",widget.orderDate, widget.orderCode,context,widget.vendorCode,
              widget.discount,widget.totalPrice,widget.taxableAmount,widget.vat,
              widget.note,widget.remarks,widget.table,Mobile,Email,widget.model),
        ),

      ),
    );
  }
}
Future<Uint8List> _generatePdf(PdfPageFormat format, String title,String orderDate,String orderCode,BuildContext context,String vendorCode,
    double? discount,double? actualCost,double? variableAmount,double? vat,String note,String remarks,List<LinesCallcenter>table,String mobile,String email, InventoryListModel? model) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  final font = await PdfGoogleFonts.nunitoExtraLight();

  pdf.addPage(
    pw.Page(
      pageFormat:    format.copyWith(marginLeft: 0, marginTop: 0, marginRight: 0, marginBottom: 0),
      build: (context) {
        return
          pw. Container(

            // backgroundColor: Colors.white,
            child:pw.Column(
              children: [

                pw.  Container(
                  height:height*.155 ,


                  color: PdfColor.fromInt(0xAAF7F7F7),
                  child:pw. Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      // pw.  Container(
                      //
                      //     height: 16,
                      //     width: 16,
                      //     // decoration: pw. BoxDecoration(
                      //     //     image:pw. DecorationImage(
                      //     //         image: NetworkImage("https://i.pinimg.com/736x/d2/53/fb/d253fbcb29b2c743b57816b23746fe12--portugal-national-team-cristiano-ronaldo-portugal.jpg")
                      //     //     )
                      //     // ),
                      //     child: pw. Container(
                      //         child: pw.Image(logo)),
                      //
                      //   ),
                      pw. Spacer(),
                      pw. Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        // padding:pw. EdgeInsets.only(right: width*.01),

                        child:pw. Column(
                          crossAxisAlignment:pw. CrossAxisAlignment.end,
                          children: [
                            pw.  SizedBox(height: height*.06,),
                            pw.  Text(mobile,
                              style: pw.TextStyle(
                                // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                            pw.  SizedBox(height: height*.005,),
                            pw. Text(email,
                              style:pw. TextStyle(
                                // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                            pw.   SizedBox(height: height*.009,),
                            pw. Text("CALL CENTER ORDER",
                              style:pw. TextStyle(

                                color: PdfColor.fromInt(0xff6F91CB),
                                fontSize:height*.029,fontWeight: pw.FontWeight.bold ,  letterSpacing: 2.0,),),
                            pw.  SizedBox(height: height*.009,)

                          ],
                        ),
                      ),




                    ],
                  ),
                ),

                // pw.   PrintTitleScreen(),


                pw.   Container(
                  // color:pw. Colors.white,
                  child:pw. Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pw.  SizedBox(height: 10,),
                      pw.  Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:pw. Row(
                          mainAxisAlignment:  pw.MainAxisAlignment.start,
                          children: [
                            pw. Container(
                              height: 70,
                              child: pw.Column(
                                crossAxisAlignment:pw. CrossAxisAlignment.start,
                                children: [
                                  pw.   Text(model?.name??""
                                    ,
                                    style:  pw.TextStyle( fontSize:14,fontWeight:pw. FontWeight.bold ),),
                                  pw.  SizedBox(height: 2,),
                                  pw.  Text(model?.addressOne??"",
                                    style:  pw.TextStyle(  fontSize:9 ),),
                                  pw.  Text(model?.addressTwo??"",
                                    style:  pw.TextStyle(  fontSize:9 ),),
                                  pw.   SizedBox(height: 2,),
                                  pw. Text(model?.email??"",
                                    style:  pw.TextStyle( fontSize:9),)

                                ],
                              ),
                            ),
                            pw.  Spacer(),

                            pw.   Container(
                              height: 70,
                              child: pw. Row(
                                children: [
                                  pw.  Column(
                                    crossAxisAlignment:  pw.CrossAxisAlignment.end,
                                    children: [
                                      pw. Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("Date :",style:  pw.TextStyle(fontSize:9))),
                                      pw.  Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("Sales order code :",style:  pw.TextStyle(fontSize:9))),

                                    ],
                                  ),
                                  pw. Column(
                                    mainAxisAlignment:pw. MainAxisAlignment.start,
                                    children: [

                                      pw. Container(
                                          padding:  pw.EdgeInsets.only(top: 9),
                                          decoration:  pw.BoxDecoration(
                                            // color:PdfColor.fromInt(0xAAACACAC),

                                              border: pw.Border(
                                                bottom:pw. BorderSide(width: .5,),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderDate==""?DateTime.now()
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "".toString():orderDate.toString(),style:  pw.TextStyle(fontSize:9))
                                      ),
                                      pw.  Container(
                                          padding:  pw.EdgeInsets.only(top:orderCode==""?18:9),
                                          decoration: pw. BoxDecoration(
                                              border: pw.Border(
                                                bottom: pw. BorderSide(width: .5,
                                                  // color: Color(0xffACACAC66).withOpacity(.4)
                                                ),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderCode?.toString()??"",style:  pw.TextStyle(fontSize:9))
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      // pw. SizedBox(height: 30,),
                      pw. Container(
                        width: width,
                        height: height*.15,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        decoration: pw. BoxDecoration(

                            border: pw. Border.all(
                              width: .6,

                              color: PdfColor.fromInt(0xAAACACAC),


                            )
                        ),
                        child:  pw.Column(
                          crossAxisAlignment:  pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                              height:height*.04,
                              width: width,
                              color: PdfColor.fromInt(0xff6F91CB),
                              child:  pw.Center(
                                child: pw. Container(
                                    alignment:  pw.Alignment.topLeft,


                                    margin:pw. EdgeInsets.only(left: width*.01,top: 8),
                                    child: pw.Text("Basic Details",style:pw. TextStyle(fontSize:8,color: PdfColors.white,),)),
                              ),

                            ),
                            pw. Expanded(child: pw. Container(
                              //color: Colors.red,
                              child: pw.Center(
                                child: pw. Row(

                                  mainAxisAlignment: pw. MainAxisAlignment.spaceAround,
                                  children: [
                                    pw. Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("Customer Code",
                                            style:
                                            pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                            )),

                                        pw.SizedBox(height: 3,),
                                        pw.Text(vendorCode,style:  pw.TextStyle(fontWeight:pw. FontWeight.bold,fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment:  pw.MainAxisAlignment.center,
                                      crossAxisAlignment: pw. CrossAxisAlignment.start,
                                      children: [
                                        pw.Text("ORDER CODE",style: pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                        )),
                                        pw. SizedBox(height: 3,),
                                        pw. Text(orderCode??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("ORDER DATE",style:pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                        ),),
                                        pw.SizedBox(height: 3,),
                                        pw.  Text(orderDate??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            // color: pw.C.black,
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw. SizedBox(width: 12,)
                                  ],
                                ),
                              ) ,
                            ))
                          ],
                        ),
                      ),
                      pw.SizedBox(height: 3),
                      pw.Container(
                        // height: 400,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:  pw.Table(
                          border: const pw.TableBorder(
                            bottom:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            right:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            left:pw. BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                            verticalInside: pw.BorderSide(
                                width: .5,
                                color: PdfColors.grey,
                                style:
                                pw. BorderStyle.solid),
                          ),
                          // tableWidth:.5,
                          columnWidths: {

                            0: pw.FlexColumnWidth(2),
                            1:pw. FlexColumnWidth(3),
                            2:pw. FlexColumnWidth(5),
                            3: pw.FlexColumnWidth(3),
                            4:pw. FlexColumnWidth(3),
                            5:pw. FlexColumnWidth(2),
                            6: pw.FlexColumnWidth(2),
                            7:pw. FlexColumnWidth(2),
                            8: pw.FlexColumnWidth(3),
                            9: pw.FlexColumnWidth(2),
                            10:pw. FlexColumnWidth(2),
                            11:pw. FlexColumnWidth(4),
                            12: pw.FlexColumnWidth(4),
                            13:pw. FlexColumnWidth(4),
                            14:pw. FlexColumnWidth(4),
                            15:pw. FlexColumnWidth(3),
                            16:pw. FlexColumnWidth(3),
                            17: pw.FlexColumnWidth(3),


                          },
                          children: [
                            pw. TableRow(

                                children: [
                                  pw. Container(
                                    color:  PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Sl.No',style:pw. TextStyle(fontSize:height*.013, color: PdfColors.white,)),
                                    height: 35,

                                  ),
                                  pw. Container(
                                    color:  PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(  'Variant Name',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),


                                  pw.  Container(
                                    color: PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('UOM',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('Quantity',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,

                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Price',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),



                                  pw.   Container(
                                    color: PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('Discount',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color:  PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('Vatable Amount',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  pw.  Container(
                                    color: PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text('VAT',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                                    height: 35,

                                  ),

                                  pw.  Container(
                                    color: PdfColor.fromInt(0xff6F91CB),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Total amount',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                                    height: 35,
                                  ),
                                  // pw.       Container(
                                  //   color:  PdfColor.fromInt(0xff687892),
                                  //   alignment:pw. Alignment.center,
                                  //   child:pw.Text( 'Vat',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                                  //   height: 35,
                                  //
                                  // ),
                                  // pw. Container(
                                  //   color:  PdfColor.fromInt(0xff687892),
                                  //   alignment:pw. Alignment.center,
                                  //   child:pw.Text( 'Total price',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                                  //   height: 35,
                                  // ),


                                ]),
                            if (table != null)...[
                              for (var i = 0;
                              i < table.length;
                              i++)
                                pw. TableRow(
                                    children: [

                                      pw.    Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,

                                        child: pw.Text(   (i + 1)
                                            .toString(),style:pw. TextStyle(fontSize: height*.013)),


                                      ),

                                      pw.  Container(
                                        // padding: pw.EdgeInsets.only(top:height*.010),
                                        alignment:pw. Alignment.center,
                                        // height: 40,
                                        child:pw. Text(
                                            table[i].variantName==null||table[i].variantName=="null"?"":       table[i].variantName?.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                      ),
                                      pw.   Container(
                                        // padding: pw.EdgeInsets.only(top: height*.014),
                                        alignment:pw. Alignment.center,
                                        height: 40,
                                        child:pw. Text(
                                            table[i].uomName==null||table[i].uomName=="null"?"":          table[i]?.uomName??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].quantity==null||table[i].quantity=="null"?"":      table[i]?.quantity.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].sellingPrice==null||table[i].sellingPrice=="null"?"":  table[i]?.sellingPrice.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),

                                      pw. Container(
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].discount==null||table[i].discount=="null"?"":         table[i].discount?.toString()??"",style:pw. TextStyle(fontSize:height*.013)),


                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019),

                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].vatableAmount==null||table[i].vatableAmount=="null"?"":            table[i]?.vatableAmount.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                        // fontSize: 12,


                                      ),
                                      pw. Container(
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].vat==null||table[i].vat=="null"?"":         table[i]?.vat.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                      ),

                                      pw. Container(
                                        alignment:pw. Alignment.center,
                                        padding: pw.EdgeInsets.only(top:height*.019),
                                        child:pw. Text(
                                            table[i].totalAmount==null||table[i].totalAmount=="null"?"":         table[i]?.totalAmount.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                        // fontSize: 12,
                                      ),
                                      // pw.  Container(
                                      //   padding: pw.EdgeInsets.only(top: height*.019),
                                      //   alignment:pw. Alignment.center,
                                      //   child: pw.Text(
                                      //       table[i].vat.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                      //   // fontSize: 12,
                                      //
                                      // ),
                                      // pw.  Container(
                                      //   padding: pw.EdgeInsets.only(top:height*.019),
                                      //   alignment:pw. Alignment.center,
                                      //   child:pw. Text(table[i].total.toString()??"",style:pw. TextStyle(fontSize:height*.013)),
                                      //
                                      // ),
                                    ]
                                )
                            ]

                          ],
                        ),
                        // width: width,

                      ),
                      pw.SizedBox(height: 3),

                      pw.  Container(
                          margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                          width: width,
                          height: 27,

                          decoration:pw. BoxDecoration(

                            color:  PdfColor.fromInt(0xAAF7F7F7),
                          ),
                          child:pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                            children: [
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw.Text("Vatable Amount:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw. Text(variableAmount?.toString()??"",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),)
                                  ],
                                ),
                              ),

                              // pw. Container(
                              //   child: pw.Row(
                              //     children: [
                              //       pw. Text("UnitCost:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),),
                              //       pw. Text(unitCost.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),)
                              //     ],
                              //   ),
                              // ),
                              // pw.  Container(
                              //   child:pw. Row(
                              //     children: [
                              //       pw.  Text("Excise Tax:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                              //       pw. Text(excisetax.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                              //     ],
                              //   ),
                              // ),
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("Discount :",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(discount?.toString()??"",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw.  Text("Vat:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw.Text(vat?.toString()??"",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("Total price:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(actualCost?.toString()??"",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      //calculation
                      pw.  SizedBox(height: height*0.045,),
                      //
                      pw.  Row(
                        children: [
                          pw.  Container(

                            width:width/5,
                            margin: pw.EdgeInsets.symmetric(horizontal: width*.02),
                            child:pw. Column(
                              crossAxisAlignment:pw. CrossAxisAlignment.start,
                              children: [


                                pw. Text("Note:",style:pw. TextStyle(fontWeight: pw.FontWeight.normal,fontSize: height*.018,),),
                                pw. SizedBox(height: height*0.01,),
                                pw. Container(
                                  child:


                                  pw.  Text(note??"",style: pw.TextStyle(
                                    // color: Color(0xff252525),
                                      fontSize: height*.015),),


                                ),
                                pw.  SizedBox(height: height*.03,),
                                pw. Text("Remarks:",style: pw.TextStyle(fontWeight:pw. FontWeight.normal, fontSize: height*.018,),),
                                pw. SizedBox(height: height*0.01,),
                                pw.Container(
                                  child:


                                  pw.Text(remarks??"",style: pw.TextStyle(
                                    // color: Color(0xff252525),
                                      fontSize: height*.015),),

                                ),
                              ],
                            ),
                          ),

                          pw.  Spacer(),
                          pw.   Container(
                            margin: pw.EdgeInsets.only(right: width*.02),
                            // height: 70,
                            child: pw. Row(
                              children: [
                                pw.  Column(
                                  crossAxisAlignment:  pw.CrossAxisAlignment.end,
                                  children: [
                                  pw.Row(children: [
                                    pw. Container(
                                        padding: pw. EdgeInsets.only(top: 9),

                                        child:  pw.Text("Receivers' Sign : ",style:  pw.TextStyle(fontSize:9))),
                                          pw. Container(
                                              padding:  pw.EdgeInsets.only(top: 12.5),
                                              decoration:  pw.BoxDecoration(
                                                // color:PdfColor.fromInt(0xAAACACAC),

                                                  border: pw.Border(
                                                    bottom:pw. BorderSide(width: .5,),
                                                  )
                                              ),
                                              width: 120,
                                              child: pw.Text("")
                                          ),
                                  ]) ,

                                    pw.SizedBox(height: height*.03),
                                    pw.Row(children: [
                                    pw. Container(
                                        padding: pw. EdgeInsets.only(top: 9),

                                        child:  pw.Text("Checked by : ",style:  pw.TextStyle(fontSize:9))),
                                          pw. Container(
                                              padding:  pw.EdgeInsets.only(top: 12.5),
                                              decoration:  pw.BoxDecoration(
                                                // color:PdfColor.fromInt(0xAAACACAC),

                                                  border: pw.Border(
                                                    bottom:pw. BorderSide(width: .5,),
                                                  )
                                              ),
                                              width: 120,
                                              child: pw.Text("")
                                          ),
                                  ]) ,
                                    pw.SizedBox(height: height*.03),
                                    pw.Row(children: [
                                    pw. Container(
                                        padding: pw. EdgeInsets.only(top: 9),

                                        child:  pw.Text("Salesman Sign : ",style:  pw.TextStyle(fontSize:9))),
                                          pw. Container(
                                              padding:  pw.EdgeInsets.only(top: 12.5),
                                              decoration:  pw.BoxDecoration(
                                                // color:PdfColor.fromInt(0xAAACACAC),

                                                  border: pw.Border(
                                                    bottom:pw. BorderSide(width: .5,),
                                                  )
                                              ),
                                              width: 120,
                                              child: pw.Text("")
                                          ),
                                  ]) ,


                                  ],
                                ),
                              // pw.Container(
                              //     height: 70,child:  pw. Column(
                              //     mainAxisAlignment:pw. MainAxisAlignment.start,
                              //     children: [
                              //
                              //       pw. Container(
                              //           padding:  pw.EdgeInsets.only(top: 9),
                              //           decoration:  pw.BoxDecoration(
                              //             // color:PdfColor.fromInt(0xAAACACAC),
                              //
                              //               border: pw.Border(
                              //                 bottom:pw. BorderSide(width: .5,),
                              //               )
                              //           ),
                              //           width: 120,
                              //           child: pw.Text("")
                              //       ),
                              //       pw.  Container(
                              //           padding:  pw.EdgeInsets.only(top:orderCode==""?18:9),
                              //           decoration: pw. BoxDecoration(
                              //               border: pw.Border(
                              //                 bottom: pw. BorderSide(width: .5,
                              //                   // color: Color(0xffACACAC66).withOpacity(.4)
                              //                 ),
                              //               )
                              //           ),
                              //           width: 120,
                              //           child: pw.Text('')
                              //       ),    pw.  Container(
                              //           padding:  pw.EdgeInsets.only(top:orderCode==""?18:9),
                              //           decoration: pw. BoxDecoration(
                              //               border: pw.Border(
                              //                 bottom: pw. BorderSide(width: .5,
                              //                   // color: Color(0xffACACAC66).withOpacity(.4)
                              //                 ),
                              //               )
                              //           ),
                              //           width: 120,
                              //           child: pw.Text('')
                              //       ),
                              //
                              //     ],
                              //   ))
                              ],
                            ),
                          ),
                          // pw. Container(
                          //   margin: pw.EdgeInsets.only(right: width*.02),
                          //   height: height*.12,
                          //   width:width*.14,
                          //   decoration:pw. BoxDecoration(
                          //       border:pw. Border.all(
                          //           width: .6,
                          //
                          //
                          //           color: PdfColor.fromInt(0xAAACACAC)
                          //       )
                          //   ),
                          //   child:pw. Column(
                          //     crossAxisAlignment:pw. CrossAxisAlignment.start,
                          //     children: [
                          //       pw. Container(
                          //           margin:pw. EdgeInsets.only(
                          //             top:height*.018,
                          //             left:height*.015,
                          //           ),
                          //           child: pw.Text("Authorized by:",style:pw. TextStyle(
                          //             // color: Colors.black,
                          //             fontWeight:pw. FontWeight.normal,fontSize:height*.016,),)),
                          //       //
                          //       // Row(
                          //       //   children: [
                          //       //     Text("Aftabu rahman",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,height: 19),),
                          //       //
                          //       //   ],
                          //       // )
                          //
                          //     ],
                          //   ),
                          //
                          // )

                        ],
                      )
                      //last section



                    ],
                  ),

                ),
                pw.   SizedBox(height: height*.03,)

              ],
            ) ,
          );


      },
    ),
  );

  return pdf.save();
}
