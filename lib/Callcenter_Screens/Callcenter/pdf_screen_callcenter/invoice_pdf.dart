import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Cubit/Read_Business%20Data/read_business_data_cubit.dart';
import 'package:salesapp/Models/Business_Unit_Data/Business_Unit_Data.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import 'package:salesapp/Models/usermodel/customer_model.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import '../../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';



class CallCenterInvoicePrintScreen extends StatefulWidget {
  final String vendorCode;
  final String note;
  final bool select;
  final String orderCode;
  final String orderDate;
  final String remarks;
  final String pageName;
  final double? discount;
  final double? vat;
  final double? taxableAmount;
  final double? totalPrice;
  final InventoryListModel? model;
  final  List<dynamic> table;

  CallCenterInvoicePrintScreen({
    this.vendorCode="",
    this.orderCode="",
    this.note="",
    this.remarks="",
    this.pageName="INVOICE",
    this.orderDate="",
    required this.table,
    required this.model,
    this.taxableAmount=0.00,
    this.totalPrice=0.00,
    this.select=false,
    this.discount=0.00,
    this.vat=0.00,
    // this.unitCost=0.00,
    // this.excisetax=0.00,




  });

  @override
  _CallCenterInvoicePrintScreenState createState() => _CallCenterInvoicePrintScreenState();
}

class _CallCenterInvoicePrintScreenState extends State<CallCenterInvoicePrintScreen> {
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

        body:SingleChildScrollView(
          child: Container(
            color: Colors.green,
            height: 1000,
            child: PdfPreview(

              build: (format) => _generatePdf(format,"title",widget.orderDate, widget.orderCode,context,widget.vendorCode,
                  widget.discount,widget.totalPrice,widget.taxableAmount,widget.vat,
                  widget.note,widget.remarks,widget.table,Mobile,Email,widget.model,widget.pageName),
            ),
          ),
        ),

      ),
    );
  }
}
Future<Uint8List> _generatePdf(PdfPageFormat format, String title,String orderDate,String orderCode,BuildContext context,String vendorCode,
    double? discount,double? actualCost,double? variableAmount,double? vat,String note,String remarks,List<dynamic> table,String mobile,String email,  InventoryListModel? model,String pageName) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  final font = await PdfGoogleFonts.nunitoExtraLight();
  final ByteData image = await rootBundle.load('asset_images/sidralogo.png');
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? taxNum = prefs.getString('taxNum');
  Uint8List imageData = (image).buffer.asUint8List();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  String? email = sharedPreferences.getString('inventoryEmail');
  String? contact = sharedPreferences.getString('contact');
  print("emailemailemailemailemailemailemailemailemailemailemailemailemailemailemail$email");
  print("emailemailemailemailemailemailemailemailemailemailemailemailemailemailemail$contact");


  pdf.addPage(
    pw.Page(
      pageFormat:    format.copyWith(marginLeft: 0, marginTop: 0, marginRight: 0, marginBottom: 0),
      build: (context) {
        return  pw. Container(

          // backgroundColor: Colors.white,
          child:pw.Column(
            children: [

              pw.  Container(
                height:height*.115 ,
                padding:  pw.EdgeInsets.symmetric(horizontal:width/103),


                color: PdfColor.fromInt(0xAAF7F7F7),
                child:pw. Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                        crossAxisAlignment:  pw.CrossAxisAlignment.start,
                        children: [
                          pw.  SizedBox(height: height*.01,),
                          pw.  Container(


                            height:100 ,
                            width: 100,
                            // decoration: pw. BoxDecoration(
                            //     image:pw. DecorationImage(
                            //         image: NetworkImage("https://i.pinimg.com/736x/d2/53/fb/d253fbcb29b2c743b57816b23746fe12--portugal-national-team-cristiano-ronaldo-portugal.jpg")
                            //     )
                            // ),
                            child: pw. Container(
                                child:pw.Image(pw.MemoryImage(imageData),)),

                          ),

                          pw. Text(model?.name??"",
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.009,fontWeight: pw.FontWeight.bold ,),),


                          pw. Text(model?.addressOne??"",
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.009,fontWeight: pw.FontWeight.bold ,),),
                          pw.  SizedBox(height: height*.001,),
                          pw. Text(model?.addressTwo??"",
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.009,fontWeight: pw.FontWeight.bold ,),),
                          pw. Text("Phone : ${Variable.invcontact}",
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.009,fontWeight: pw.FontWeight.bold ,),),
                          pw. Text("Email : ${Variable.invemail??""}",
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.009,fontWeight: pw.FontWeight.bold ,),),
                        ]
                    ),

                    pw. Spacer(),
                    pw. Container(
                      // margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                      // padding:pw. EdgeInsets.only(right: width*.01),

                      child:pw. Column(
                        crossAxisAlignment:pw. CrossAxisAlignment.end,
                        children: [
                          pw.  SizedBox(height: height*.03,),
                          pw. Text(pageName,
                            style:pw. TextStyle(
                              font: font,

                              color: PdfColor.fromInt(0x000000),
                              fontSize:height*.026,fontWeight: pw.FontWeight.bold ,),),
                          pw.  SizedBox(height: height*.004,),
                          pw.Row(
                              children: [
                               if(createOrPatch==true || invoicePage==true)   pw. Text(invoicePage?"INVOICE CODE : ":"ORDER CODE :",
                                  style:pw. TextStyle(
                                    font: font,

                                    color: PdfColor.fromInt(0xff3E4F5B),
                                    fontSize:height*.011,fontWeight: pw.FontWeight.normal ,),),
                                pw. Text(orderCode,
                                  style:pw. TextStyle(
                                    font: font,

                                    color: PdfColor.fromInt(0x000000),
                                    fontSize:height*.011,fontWeight: pw.FontWeight.bold ,),),

                              ]
                          ),
                          pw.Row(
                              children: [
                                pw. Text("TRN NO : ",
                                  style:pw. TextStyle(
                                    font: font,

                                    color: PdfColor.fromInt(0xff3E4F5B),
                                    fontSize:height*.011,fontWeight: pw.FontWeight.normal ,),),
                                pw. Text(taxNum??"",
                                  style:pw. TextStyle(
                                    font: font,

                                    color: PdfColor.fromInt(0x000000),
                                    fontSize:height*.011,fontWeight: pw.FontWeight.bold ,),),

                              ]
                          ),

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
                    pw.  SizedBox(height: 5,),
                    pw.  Container(
                      margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                      child:pw. Row(
                        mainAxisAlignment:  pw.MainAxisAlignment.start,
                        children: [

                          pw.  Spacer(),

                          pw.   Container(
                            height: 30,
                            child: pw. Row(
                              children: [
                                pw.  Column(
                                  crossAxisAlignment:  pw.CrossAxisAlignment.end,
                                  children: [
                                    pw. Container(
                                        padding: pw. EdgeInsets.only(top: 9),

                                        child:  pw.Text("Date : ",style:  pw.TextStyle(font: font,
                                            fontSize:9),)),

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
                                            "".toString():orderDate.toString(),style:  pw.TextStyle(
                                            font: font,fontSize:9))
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
                      height: height*.12,
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
                            height:height*.025,
                            width: width,
                            color: PdfColor.fromInt(0x000000),
                            child:  pw.Center(
                              child: pw. Container(
                                  alignment:  pw.Alignment.topLeft,


                                  margin:pw. EdgeInsets.only(left: width*.01,top:5 ),
                                  child: pw.Text("Basic Details",style:pw. TextStyle(
                                    // font: font,
                                    fontSize:8,color: PdfColors.white,),)),
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
                                      pw. Text("CUSTOMER DETAILS",
                                          style:
                                          pw. TextStyle(fontSize:height*.010,font: font,color: PdfColor.fromInt(0xAA565555)
                                          )),

                                      pw.SizedBox(height: 3,),
                                      pw.Text(listCustomer?.customerName??"",style:  pw.TextStyle(
                                          // font: font,
                                          fontWeight:pw. FontWeight.bold,fontSize:height*.012,color: PdfColor.fromInt(0x000000)),),
                                      pw.SizedBox(height: 1.5,),
                                      pw.Text("Email :${listCustomer?.email??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
                                      pw.SizedBox(height: 1.5,),
                                      pw.Text("Phone :${listCustomer?.mobile??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
                                    ],
                                  ),
                                  if(createOrPatch==true || invoicePage==true)  pw.  SizedBox(width: 12,),
                                 if(createOrPatch==true || invoicePage==true)   pw.  Column(
                                    mainAxisAlignment:  pw.MainAxisAlignment.center,
                                    crossAxisAlignment: pw. CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(invoicePage?"DELIVERY ADDRESS":"ORDER CODE",style: pw. TextStyle(font: font,fontSize:height*.010,color: PdfColor.fromInt(0xAA565555)
                                      )),
                                      pw. SizedBox(height: 3,),   pw.Text("${listCustomer?.customerMeta?.street??""}, ${listCustomer?.customerMeta?.area??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
                                      pw.SizedBox(height: 1,),
                                      pw.Text("${listCustomer?.customerMeta?.country??""}, ${listCustomer?.customerMeta?.state??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
                                    ],
                                  ),
                                  pw.  SizedBox(width: 12,),
                                  pw.  Column(
                                    mainAxisAlignment: pw. MainAxisAlignment.center,
                                    crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                    children: [
                                      pw. Text(invoicePage?" BILLING ADDRESS":"ORDER DATE",style:pw. TextStyle(font: font,
                                          fontSize:height*.010,color: PdfColor.fromInt(0xAA565555)
                                      ),),
                                      pw.SizedBox(height: 3,),
                                      pw.Text("${listCustomer?.customerMeta?.street??""}, ${listCustomer?.customerMeta?.area??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
                                      pw.SizedBox(height: 1,),
                                      pw.Text("${listCustomer?.customerMeta?.country??""}, ${listCustomer?.customerMeta?.state??""}",style:  pw.TextStyle(
                                        // font: font,
                                          fontWeight:pw. FontWeight.normal,fontSize:height*.010,color: PdfColor.fromInt(0xff3E4F5B)),),
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
                    pw.SizedBox(height: 5),
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

                          0: pw.FlexColumnWidth(1.5),
                          1:pw. FlexColumnWidth(5),
                          2:pw. FlexColumnWidth(2),
                          3: pw.FlexColumnWidth(2),
                          4:pw. FlexColumnWidth(2),
                          5:pw. FlexColumnWidth(2),
                          6: pw.FlexColumnWidth(2.5),
                          7:pw. FlexColumnWidth(2),
                          8: pw.FlexColumnWidth(2.5),
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
                                  padding: pw.EdgeInsets.all(5),
                                  color:  PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text( 'Sl.No',style:pw. TextStyle(
                                    // font: font,
                                    fontSize:height*.010, color: PdfColors.white,)),
                                  height:height*.025,

                                ),
                                pw. Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color:  PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text(  'Variant Name',style:pw. TextStyle(
                                    // font: font,
                                    fontSize:height*.010,color: PdfColors.white,)),
                                  height:height*.025,
                                ),


                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color: PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text('UOM',style:pw. TextStyle(
                                    // font: font,
                                    fontSize:height*.010,color: PdfColors.white,)),
                                  height:height*.025,
                                ),
                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color:  PdfColor.
                                  fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text('Quantity',style:pw. TextStyle(
                                    // font: font,
                                    fontSize:height*.010,color: PdfColors.white,)),
                                  height:height*.025,

                                ),
                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color:  PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text( 'Price',style:pw. TextStyle(
                                    // font: font,
                                    fontSize: height*.010,color: PdfColors.white,)),
                                  height:height*.025,
                                ),



                                pw.   Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color: PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text('Discount',style:pw. TextStyle(
                                    // font: font,
                                    fontSize: height*.010,color: PdfColors.white,)),
                                  height:height*.025,
                                ),
                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color:  PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text('Vatable Amt',style:pw. TextStyle(fontSize:height*.010,color: PdfColors.white,)),
                                  height:height*.025,
                                ),
                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color: PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text('VAT',style:pw. TextStyle(
                                    // font: font,
                                    fontSize:height*.010,color: PdfColors.white,)),
                                  height:height*.025,

                                ),

                                pw.  Container(
                                  padding: pw.EdgeInsets.all(5),
                                  color: PdfColor.fromInt(0x000000),
                                  alignment:pw. Alignment.center,
                                  child:pw.Text( 'Total',style:pw. TextStyle(
                                    // font: font,
                                    fontSize: height*.010,color: PdfColors.white,)),
                                  height:height*.025,
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
                            if(createOrPatch==true || invoicePage==true)...[
                              for (var i = 0;
                              i < table.length;
                              i++)
                                pw. TableRow(
                                    children: [

                                      pw.    Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,

                                        child: pw.Text(   (i + 1)
                                            .toString(),style:pw. TextStyle(font: font,fontSize: height*.013)),


                                      ),

                                      pw.  Container(
                                        // height: 40,
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        // height: 40,
                                        child:pw. Text(
                                            table[i].variantName==null||table[i].variantName=="null"?"":       table[i].variantName?.toString()??"",style:pw. TextStyle(font: font,fontSize: height*.013)),
                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        // height: 40,
                                        child:pw. Text(
                                            table[i].uomName==null||table[i].uomName=="null"?"":        table[i].uomName?.toString()??"",style:pw. TextStyle(font: font,fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw.Alignment.topLeft,
                                        child:pw. Text(table[i].quantity==null||table[i].quantity=="null"?"":  table[i]?.quantity?.toString()??"",style:pw. TextStyle(font: font,fontSize: height*.013)),

                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw.Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].sellingPrice==null||table[i].sellingPrice=="null"?"":        table[i]?.sellingPrice?.toString()??"",style:pw. TextStyle(font: font,fontSize: height*.013)),

                                      ),

                                      pw. Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw.Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].discount==null||table[i].discount=="null"?"":        table[i]?.discount?.toString()??"",style:pw. TextStyle(font: font,fontSize:height*.013)),


                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.all(5),

                                        alignment:pw. Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].vatableAmount==null||table[i].vatableAmount=="null"?"":          table[i]?.vatableAmount?.toString()??"",style:pw. TextStyle(font: font,fontSize: 8)),
                                        // fontSize: 12,


                                      ),
                                      pw. Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw.Alignment.topLeft,
                                        child:pw. Text(
                                            table[i].vat?.toString()??"",style:pw. TextStyle(font: font,fontSize: 8)),
                                      ),

                                      pw. Container(
                                        alignment:pw. Alignment.topLeft,
                                        padding: pw.EdgeInsets.all(5),
                                        child:pw. Text(
                                            table[i].totalAmount==null||table[i].totalAmount=="null"?"":          table[i]?.totalAmount?.toString()??"",style:pw. TextStyle(font: font,fontSize: height*.013)),
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
                            ],
                            if(createOrPatch!=true && invoicePage!=true)...[
                              for (var i = 0;
                              i < table.length;
                              i++)
                                pw. TableRow(
                                    children: [

                                      pw.    Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,

                                        child: pw.Text(   (i + 1)
                                            .toString(),style:pw. TextStyle(fontSize: height*.013)),


                                      ),

                                      pw.  Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        // height: 40,
                                        child:pw. Text(
                                            table[i].name==null||table[i].name=="null"?"":     table[i]?.name?.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        child:pw. Text(
                                            table[i]?.salesUomName?.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        child:pw. Text(
                                            table[i].qty==null||table[i].qty=="null"?"":       table[i]?.qty.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].priceData==null||table[i].priceData=="null"?"":       table[i]?.priceData.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                                      ),

                                      pw. Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].discountData?.discountPercentagePrice==null||table[i].discountData?.discountPercentagePrice=="null"?"":        table[i]?.discountData?.discountPercentagePrice?.toString()??"",style:pw. TextStyle(fontSize:height*.013)),


                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.all(5),

                                        alignment:pw. Alignment.topLeft,
                                        child: pw.Text(
                                            table[i].vatable==null||table[i].vatable=="null"?"": table[i]?.vatable?.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                        // fontSize: 12,


                                      ),
                                      pw. Container(
                                        padding: pw.EdgeInsets.all(5),
                                        alignment:pw. Alignment.topLeft,
                                        child:pw. Text(
                                            table[i].vat==null||table[i].vat=="null"?"":      table[i]?.vat.toString()??"",style:pw. TextStyle(fontSize: 8)),
                                      ),

                                      pw. Container(
                                        alignment:pw. Alignment.topLeft,
                                        padding: pw.EdgeInsets.all(5),
                                        child:pw. Text(
                                            table[i].total==null||table[i].total=="null"?"":          table[i]?.total.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
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

                          ]

                        ],
                      ),
                      // width: width,

                    ),
                    pw.SizedBox(height: 8),
                    pw. Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                            children: [
                              pw.Row(
                                // mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.Spacer(),
                                  pw. Text("Total Discount   : ",
                                    style:pw. TextStyle(font: font,
                                      // font: font,

                                      color: PdfColor.fromInt(0xff3E4F5B),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.normal ,),),
                                  pw. Text(discount?.toString()??"",
                                    style:pw. TextStyle(
                                      font: font,

                                      color: PdfColor.fromInt(0x000000),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.bold ,),),

                                ],

                              ),
                              pw.SizedBox(height: 2.5),
                              pw.Row(
                                // mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.Spacer(),
                                  pw. Text("Total Vatable Amount : ",
                                    style:pw. TextStyle(
                                      font: font,

                                      color: PdfColor.fromInt(0xff3E4F5B),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.normal ,),),
                                  pw. Text(variableAmount?.toString()??"",
                                    style:pw. TextStyle(
                                      font: font,

                                      color: PdfColor.fromInt(0x000000),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.bold ,),),

                                ],),
                              pw.SizedBox(height: 2.5),

                              pw.Row(
                                // mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.Spacer(),
                                  pw. Text("Total Vat : ",
                                    style:pw. TextStyle(
                                      font: font,

                                      color: PdfColor.fromInt(0xff3E4F5B),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.normal ,),),
                                  pw. Text(vat?.toString()??"",
                                    style:pw. TextStyle(
                                      font: font,

                                      color: PdfColor.fromInt(0x000000),
                                      fontSize:height*.011,fontWeight: pw.FontWeight.bold ,),),

                                ],),

                              pw.SizedBox(height: 3.5),
                              pw.Container(width: 200,
                                padding: pw.EdgeInsets.all(5),
                                color:PdfColor.fromInt(0xF7F7F7) ,
                                child:     pw.Row(
                                  // mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Spacer(),
                                    pw. Text("Total Amount : ",
                                      style:pw. TextStyle(
                                        // font: font,

                                        color: PdfColor.fromInt(0xff3E4F5B),
                                        fontSize:height*.012,fontWeight: pw.FontWeight.bold ,),),
                                    pw. Text(actualCost?.toString()??"",
                                      style:pw. TextStyle(
                                        // font: font,

                                        color: PdfColor.fromInt(0x000000),
                                        fontSize:height*.012,fontWeight: pw.FontWeight.bold ,),),

                                  ],),
                              )
                            ]

                        )
                    ),




                    // pw.  Container(
                    //     margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                    //     padding:  pw.EdgeInsets.symmetric(horizontal:width/103),
                    //     width: width,
                    //     height: 27,
                    //
                    //     decoration:pw. BoxDecoration(
                    //
                    //       color:  PdfColor.fromInt(0xAAF7F7F7),
                    //     ),
                    //     child:pw.Row(
                    //       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         pw.Container(
                    //           child:pw. Row(
                    //             children: [
                    //               pw.Text("Vatable Amount:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                    //               pw. Text(variableAmount?.toString()??"",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),)
                    //             ],
                    //           ),
                    //         ),
                    //
                    //         // pw. Container(
                    //         //   child: pw.Row(
                    //         //     children: [
                    //         //       pw. Text("UnitCost:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),),
                    //         //       pw. Text(unitCost.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),)
                    //         //     ],
                    //         //   ),
                    //         // ),
                    //         // pw.  Container(
                    //         //   child:pw. Row(
                    //         //     children: [
                    //         //       pw.  Text("Excise Tax:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                    //         //       pw. Text(excisetax.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                    //         //     ],
                    //         //   ),
                    //         // ),
                    //         pw.Container(
                    //           child:pw. Row(
                    //             children: [
                    //               pw. Text("Discount :",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                    //               pw.Text(discount?.toString()??"",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                    //             ],
                    //           ),
                    //         ),
                    //         pw. Container(
                    //           child:pw. Row(
                    //             children: [
                    //               pw.  Text("VAT:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                    //               pw.Text(vat?.toString()??"",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                    //             ],
                    //           ),
                    //         ),
                    //         pw. Container(
                    //           child:pw. Row(
                    //             children: [
                    //               pw. Text("Total price:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                    //               pw.Text(actualCost?.toString()??"",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                    //             ],
                    //           ),
                    //         )
                    //
                    //       ],
                    //     )
                    // ),
                    //calculation
                    pw.  SizedBox(height: height*0.02,),
                    //
                    pw.  Row(
                      children: [
                        pw.  Container(

                          width:width/5,
                          margin: pw.EdgeInsets.symmetric(horizontal: width*.02),
                          child:pw. Column(
                            crossAxisAlignment:pw. CrossAxisAlignment.start,
                            children: [


                              pw. Text("Note:",style:pw. TextStyle(
                                font: font,
                                fontWeight: pw.FontWeight.normal,fontSize: height*.018,),),
                              pw. SizedBox(height: height*0.01,),
                              pw. Container(
                                child:


                                pw.  Text(note??"",style: pw.TextStyle(
                                    font: font,
                                    // color: Color(0xff252525),
                                    fontSize: height*.015),),


                              ),
                              pw.  SizedBox(height: height*.03,),
                              pw. Text("Remarks:",style: pw.TextStyle(font: font,
                                fontWeight:pw. FontWeight.normal, fontSize: height*.018,),),
                              pw. SizedBox(height: height*0.01,),
                              pw.Container(
                                child:


                                pw.Text(remarks??"",style: pw.TextStyle(
                                    font: font,
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

                                        child:  pw.Text("Receivers' Sign : ",style:  pw.TextStyle(font: font,fontSize:9))),
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

                                        child:  pw.Text("Checked by : ",style:  pw.TextStyle(font: font,fontSize:9))),
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

                                        child:  pw.Text("Salesman Sign : ",style:  pw.TextStyle(font: font,fontSize:9))),
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





class CustomerStateMentPdf extends StatefulWidget {
  final String vendorCode;



  final String orderCode;
  final String pageName;
  final String orderDate;


  final InventoryListModel? model;
  final  List<UserCustomerStatementListModel> table;

  CustomerStateMentPdf({
    this.vendorCode="",
    this.orderCode="",

    this.orderDate="",

    required this.table,
    required this.model,
    required this.pageName,







  });

  @override
    _CustomerStateMentPdfState createState() => _CustomerStateMentPdfState();
}

class _CustomerStateMentPdfState extends State<CustomerStateMentPdf> {
  // late AutoScrollController _scrollController;
  // @override
  // void initState() {
  //
  //   _scrollController = AutoScrollController(
  //       viewportBoundaryGetter: () =>
  //           Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
  //       axis: Axis.vertical);
  //   super.initState();
  //   // context.read<InventorysearchCubit>().getSearch("code").then((value) {
  //   //   print("ak test"+value.toString());
  //   // });
  // }


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body:PdfPreview(
        build: (format) => _customerStatementPdf(format,"title",widget.orderDate, widget.orderCode,context,widget.vendorCode,widget.table??[],widget.pageName,widget.model!,),
      ),

    );
  }
}
Future<Uint8List> _customerStatementPdf(PdfPageFormat format, String title,String orderDate,String orderCode,BuildContext context,String vendorCode,List<UserCustomerStatementListModel> table,String pageName,InventoryListModel model) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  var url = "https://sidra-bazar-uat-products.s3.ap-south-1.amazonaws.com/logo/rawabi.png";
  // final netImage = await networkImage(model.storeLogo??"");
  final font = await PdfGoogleFonts.nunitoExtraLight();
  // final logo = await networkImage('https://rgcdynamics-logos.s3.ap-south-1.amazonaws.com/Ahlan%20New-03.png');
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
                  height:height*.105 ,


                  color: PdfColor.fromInt(0xAAF7F7F7),
                  child:pw. Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Container(
                        margin: pw.EdgeInsets.symmetric(vertical: 7,horizontal:width/103),
                        height:70 ,
                        width: 70,

                      ),
                      pw. Spacer(),
                      // pw. Container(
                      //   margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                      //   // padding:pw. EdgeInsets.only(right: width*.01),
                      //
                      //   child:pw. Column(
                      //     crossAxisAlignment:pw. CrossAxisAlignment.end,
                      //     children: [
                      //       pw.  SizedBox(height: height*.03,),
                      //       pw.  Text("Variable.mobileNumber",
                      //         style: pw.TextStyle(font: font,
                      //             // color:Color(0xff565555) ,
                      //             fontSize:7 ),),
                      //       pw.  SizedBox(height: height*.005,),
                      //       pw. Text("Variable.email",
                      //
                      //         style:pw. TextStyle(
                      //             font: font,
                      //
                      //             // color:Color(0xff565555) ,
                      //             fontSize:7 ),),
                      //       pw.   SizedBox(height: height*.009,),
                      //       pw. Text(pageName??"",
                      //         style:pw. TextStyle(
                      //           font: font,
                      //
                      //           color: PdfColor.fromInt(0xff3E4F5B),
                      //           fontSize:height*.026,fontWeight: pw.FontWeight.bold ,),),
                      //       pw.  SizedBox(height: height*.009,)
                      //
                      //     ],
                      //   ),
                      // ),




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
                                  pw.   Text(model.name??""
                                    ,
                                    style:  pw.TextStyle( fontSize:14,fontWeight:pw. FontWeight.bold ),),
                                  pw.  SizedBox(height: 2,),
                                  pw.  Text(model.addressOne??"",
                                    style:  pw.TextStyle(  fontSize:9 ),),
                                  pw.  Text(model.addressTwo??"",
                                    style:  pw.TextStyle(  fontSize:9 ),),
                                  pw.   SizedBox(height: 2,),
                                  pw. Text(model.email??"",
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

                                          child:  pw.Text("Date : ",style:  pw.TextStyle( fontSize:9))),
                                      pw.  Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("Customer User code : ",style:  pw.TextStyle(fontSize:9))),

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
                                                bottom:pw. BorderSide(width: .3,),
                                              )
                                          ),
                                          width: 80,
                                          child: pw.Text(orderDate==""? DateFormat('dd-MM-yyyy').format(DateTime.now()):orderDate.toString(),style:  pw.TextStyle(fontSize:9,))
                                      ),
                                      pw.  Container(
                                          padding:  pw.EdgeInsets.only(top:orderCode==""?18:9),
                                          decoration: pw. BoxDecoration(
                                              border: pw.Border(
                                                bottom: pw. BorderSide(width: .3,
                                                  // color: Color(0xffACACAC66).withOpacity(.4)
                                                ),
                                              )
                                          ),
                                          width: 80,
                                          child: pw.Text(orderCode?.toString()??"",style:  pw.TextStyle( fontSize:9))
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
                      // pw. Container(
                      //   width: width,
                      //   height: height*.11,
                      //   margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                      //   decoration: pw. BoxDecoration(
                      //
                      //       border: pw. Border.all(
                      //         width: .6,
                      //
                      //         color: PdfColor.fromInt(0xAAACACAC),
                      //
                      //
                      //       )
                      //   ),
                      //   child:  pw.Column(
                      //     crossAxisAlignment:  pw.CrossAxisAlignment.start,
                      //     children: [
                      //       pw.Container(
                      //         height:height*.04,
                      //         width: width,
                      //         color: PdfColor.fromInt(0xff3E4F5B),
                      //         child:  pw.Center(
                      //           child: pw. Container(
                      //               alignment:  pw.Alignment.topLeft,
                      //
                      //
                      //               margin:pw. EdgeInsets.only(left: width*.01,top: 8),
                      //               child: pw.Text("Basic Details",style:pw. TextStyle( fontSize:9,color: PdfColors.white,),)),
                      //         ),
                      //
                      //       ),
                      //       pw. Expanded(child: pw. Container(
                      //         //color: Colors.red,
                      //         child: pw.Center(
                      //           child: pw. Row(
                      //
                      //             mainAxisAlignment: pw. MainAxisAlignment.spaceAround,
                      //             children: [
                      //               // if(vendorCode!="Not")    pw. Column(
                      //               //   mainAxisAlignment: pw. MainAxisAlignment.center,
                      //               //   crossAxisAlignment:  pw.CrossAxisAlignment.start,
                      //               //   children: [
                      //               //
                      //               //     pw. Text("VENDOR CODE",
                      //               //         style: pw.TextStyle(fontWeight:pw. FontWeight.bold, fontSize: height*.014
                      //               //         )),
                      //               //
                      //               //     pw.SizedBox(height: 3,),
                      //               //     pw.Text(vendorCode,style:  pw.TextStyle( fontWeight:pw. FontWeight.bold,fontSize:height*.014,color: PdfColor.fromInt(0xAA565555)),),
                      //               //   ],
                      //               // ),
                      //               pw.  SizedBox(width: 12,),
                      //               pw.  Column(
                      //                 mainAxisAlignment:  pw.MainAxisAlignment.center,
                      //                 crossAxisAlignment: pw. CrossAxisAlignment.start,
                      //                 children: [
                      //                   pw.Text("ORDER CODE",style: pw.TextStyle(fontWeight:pw. FontWeight.bold, fontSize: height*.014
                      //                     // color:Color(0xff565555),
                      //                   )),
                      //                   pw. SizedBox(height: 3,),
                      //                   pw. Text(orderCode??"",style: pw. TextStyle(
                      //
                      //                       fontSize:height*.014,color: PdfColor.fromInt(0xAA565555),
                      //                       // color: Colors.black,
                      //                       fontWeight: pw.FontWeight.bold),),
                      //                 ],
                      //               ),
                      //               pw.  SizedBox(width: 12,),
                      //               pw.  Column(
                      //                 mainAxisAlignment: pw. MainAxisAlignment.center,
                      //                 crossAxisAlignment:  pw.CrossAxisAlignment.start,
                      //                 children: [
                      //                   pw. Text("ORDER DATE",style: pw.TextStyle(fontWeight:pw. FontWeight.bold, fontSize: height*.014
                      //                   ),),
                      //                   pw.SizedBox(height: 3,),
                      //                   pw.  Text(orderDate.isEmpty?DateFormat('dd-MM-yyyy').format(DateTime.now()):orderDate,style: pw. TextStyle(
                      //
                      //                       fontSize:height*.014,color: PdfColor.fromInt(0xAA565555),
                      //                       // color: pw.C.black,
                      //                       fontWeight: pw.FontWeight.bold),),
                      //                 ],
                      //               ),
                      //               pw. SizedBox(width: 12,)
                      //             ],
                      //           ),
                      //         ) ,
                      //       ))
                      //     ],
                      //   ),
                      // ),
                      pw.SizedBox(height: 15),
                      pw.Container(
                        // height: 400,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:  pw.Table(
                          border: pw. TableBorder(
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
                            // horizontalInside:
                            // pw.   BorderSide(
                            //
                            //     width: .5,
                            //     color: PdfColors.grey,
                            //     style:
                            //     pw.  BorderStyle.solid)
                          ),
                          // tableWidth:.5,
                          columnWidths: {
                            0: pw.FlexColumnWidth(1.5),
                            1:pw. FlexColumnWidth(4),
                            2:pw. FlexColumnWidth(3),
                            3: pw.FlexColumnWidth(4),
                            4:pw. FlexColumnWidth(2.5),
                            5:pw. FlexColumnWidth(2),
                            6: pw.FlexColumnWidth(2),
                            7:pw. FlexColumnWidth(2),
                            8: pw.FlexColumnWidth(3),
                            9: pw.FlexColumnWidth(2),
                            10:pw. FlexColumnWidth(2),
                            11:pw. FlexColumnWidth(2),
                            12: pw.FlexColumnWidth(4),
                            13:pw. FlexColumnWidth(4),
                            14:pw. FlexColumnWidth(4),
                            15:pw. FlexColumnWidth(3),
                            16:pw. FlexColumnWidth(3),
                            17: pw.FlexColumnWidth(3),17: pw.FlexColumnWidth(3),


                          },
                          children: [
                            pw. TableRow(

                                children: [
                                  pw. Container( padding: pw.EdgeInsets.all(10),

                                    color:  PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Sl.No',style:pw. TextStyle(fontSize:height*.012, color: PdfColors.white,)),
                                    height: 30,

                                  ),
                                  pw. Container(
                                    padding: pw.EdgeInsets.all(5),

                                    color:  PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(  'Order Id ',style:pw. TextStyle( fontSize:height*.012,color: PdfColors.white,)),
                                    height: 30,
                                  ),


                                  pw.  Container(
                                    padding: pw.EdgeInsets.all(5),
                                    color: PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(   'Channel Details Id',style:pw. TextStyle(fontSize:height*.012,color: PdfColors.white,)),
                                    height: 30,
                                  ),
                                  pw.  Container(
                                    padding: pw.EdgeInsets.all(5),
                                    color:  PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Invoice Code',style:pw. TextStyle( fontSize: height*.012,color: PdfColors.white,)),
                                    height: 30,

                                  ),

                                    pw.  Container(
                                      color:  PdfColor.fromInt(0xff3E4F5B),
                                      alignment:pw. Alignment.center,
                                      child:pw.Text( 'Invoiced Date',style:pw. TextStyle(fontSize: height*.012,color: PdfColors.white,)),
                                      height: 30,
                                    ),


                                  pw.  Container(
                                    padding: pw.EdgeInsets.all(5),
                                    color:  PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text( 'Order type',style:pw. TextStyle( fontSize: height*.012,color: PdfColors.white,)),
                                    height: 30,
                                  ),



                                  pw.   Container(
                                    padding: pw.EdgeInsets.all(5),
                                    color: PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(   'Total Amount',style:pw. TextStyle( fontSize: height*.012,color: PdfColors.white,)),
                                    height: 30,
                                  ),
                                  pw.  Container(
                                    padding: pw.EdgeInsets.all(5),
                                    color:  PdfColor.fromInt(0xff3E4F5B),
                                    alignment:pw. Alignment.center,
                                    child:pw.Text(  'Invoice Status',style:pw. TextStyle( fontSize:height*.012,color: PdfColors.white,)),
                                    height: 30,
                                  ),





                                  // tableHeadtext(
                                  //   'Is free',
                                  //   padding:
                                  //   EdgeInsets.all(15),
                                  //   height: 80,
                                  //   size: 13,
                                  //     color:  Color(0xff1F6BA9)
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
                                        height: 40,
                                        child:pw. Text(
                                            table[i].orderId.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                                      ),
                                      pw.   Container(
                                        // padding: pw.EdgeInsets.only(top: height*.014),
                                        alignment:pw. Alignment.center,
                                        height: 40,
                                        child:pw. Text(
                                            table[i].channelDetailsId==null||table[i].channelDetailsId=="null"?"":    table[i].channelDetailsId.toString()??"",style:pw. TextStyle( fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.019,right: 5,left: 5),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].invoiceCode==null||table[i].invoiceCode=="null"?"": table[i].invoiceCode??"",style:pw. TextStyle( fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.019,right: 5,left: 5),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].invoiceDate==null||table[i].invoiceDate=="null"?"": table[i].invoiceDate??"",style:pw. TextStyle( fontSize: height*.013)),

                                      ),
                                      pw.   Container(
                                        padding: pw.EdgeInsets.only(top: height*.019,right: 5,left: 5),
                                        alignment:pw. Alignment.center,
                                        child:pw. Text(
                                            table[i].orderType==null||table[i].orderType=="null"?"": table[i].orderType??"",style:pw. TextStyle( fontSize: height*.013)),

                                      ),

                                      pw. Container(
                                        padding: pw.EdgeInsets.only(top: height*.019,right: 5,left: 5),
                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].totalAmount==null||table[i].totalAmount=="null"?"": table[i].totalAmount?.toString()??"",style:pw. TextStyle( fontSize:height*.013)),
                                      ),
                                      pw.  Container(
                                        padding: pw.EdgeInsets.only(top: height*.019,right: 5,left: 5),

                                        alignment:pw. Alignment.center,
                                        child: pw.Text(
                                            table[i].invoiceStatus==null||table[i].invoiceStatus=="null"?"": table[i].invoiceStatus?.toString()??"",style:pw. TextStyle( fontSize: 8)),
                                        // fontSize: 12,
                                      ),
                                    ]
                                )
                            ],
                            if(table.isEmpty)...[
                              pw. TableRow(
                                  children: [

                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),
                                    pw.    Container(
                                      padding: pw.EdgeInsets.only(top: height*.019),
                                      height: 40,
                                    ),

                                  ])

                            ]


                          ],
                        ),
                        // width: width,

                      ),

                      //last section



                    ],
                  ),

                ),
                pw.   SizedBox(height: height*.03,)

              ],
            ) ,
          );

        //   pw.Column(
        //   children: [
        //     pw.SizedBox(
        //       width: double.infinity,
        //       child: pw.FittedBox(
        //         child: pw.Text(title, style: pw.TextStyle(font: font)),
        //       ),
        //     ),
        //     pw.SizedBox(height: 20),
        //     pw.Flexible(child: pw.FlutterLogo())
        //   ],
        // );
      },
    ),
  );

  return pdf.save();
}
