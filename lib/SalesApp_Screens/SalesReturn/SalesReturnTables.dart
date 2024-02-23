import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Cubit/Invoice_Code_Cubit/invoice_code_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Cubit/read_sales_return_cubit.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';
import 'package:salesapp/Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import 'package:salesapp/Models/SalesInvoiceCodeList/Sales_Invoice_Code_List.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

import '../../Widgets/ItemCard.dart';
import '../../Widgets/Reusable_widget_web.dart';
import '../../Widgets/popupinputfield.dart';
import '../../color_palette/color_palette.dart';
import '../../custom_table/costumtable.dart';
import '../SalesGenaral/SalesGenaralTables.dart';
import 'SalesReturn.dart';



class TopHeaderReturn extends StatelessWidget {
final VoidCallback onTaped;
  const TopHeaderReturn({Key? key, required this.onTaped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Palette.white,
    ),
      height: context.blockSizeVertical * 8,
      child: Row(
        children: [
          SizedBox(width: context.blockSizeHorizontal * 3.5,),
           // TextButtonLarge(text: "New request", images: "asset_images/plus.png",),
          Spacer(),
          //  ImageButtonSmall(images: "asset_images/print.png"),
          // SizedBox(width: context.blockSizeHorizontal * .5,),
           TextButtonLarge2(images: "asset_images/eye.png", text: "Preview",onTap: onTaped,),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           TextButtonLarge2(images: "asset_images/share.png", text: "Share"),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           ImageButtonSmall(images: "asset_images/arrow2.png"),
          SizedBox(width: context.blockSizeHorizontal * 1.5,),

        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
class TablePartReturn extends StatefulWidget {
  final double taxaAmd;
  final double totalva;
  final double disc;
  final double vatt;
  final double sellP;
  final double unitc;
  final double exss;
  final List<OrderLinesReturn>? totalData;

  final TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController orderCode;
  final TextEditingController orderDate;
  final TextEditingController inventoryId;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController shippingAddressId;
  final TextEditingController billingAddressId;
  final TextEditingController salesQuotes;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController excessTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;
  final TextEditingController warrantyPrice;
  final TextEditingController invoiceCode;


  const TablePartReturn({Key? key,
    required this.orderType,
    required this.orderMode,
    required this.orderCode,
    required this.orderDate,
    required this.inventoryId,
    required this.customerId,
    required this.trnNumber,
    required this.shippingAddressId,
    required this.billingAddressId,
    required this.salesQuotes,
    required this.paymentId,
    required this.paymentStatus,
    required this.orderStatus,
    required this.note,
    required this.remarks,
    required this.invoiceStatus,
    required this.unitCost,
    required this.discount,
    required this.excessTax,
    required this.taxableAmount,
    required this.vat,
    required this.sellingPriceTotal,
    required this.totalPrice, required this.warrantyPrice,

    this.totalData, required this.invoiceCode, required this.taxaAmd, required this.totalva, required this.disc, required this.vatt, required this.sellP, required this.unitc, required this.exss,


  }) : super(key: key);

  @override
  State<TablePartReturn> createState() => _TablePartReturnState();
}

class _TablePartReturnState extends State<TablePartReturn> {
  // InvoiceReadData? readData;
  // List<Lines> table = [];
  ReadSalesReturn? readData;
  List<OrderLinesReturn> table = [];

  @override
  Widget build(BuildContext context) {


        return BlocConsumer<ReadSalesReturnCubit, ReadSalesReturnState>(
         listener: (context, state) {

           state.maybeWhen(
               orElse: () {},
               error: () {
                 print("error..");
               },
               success: (data) {
                 setState(() {
                   readData=data;
                   data.orderLines != null ?
                   table = data.orderLines ?? [] : table = [];


                   widget.orderType.text=data.orderType??"";
                   widget.orderDate.text=data.returnedDate??"";
                   widget.orderCode.text=data.purchaseReturnOrderCode??"";
                   widget.orderStatus.text=data.orderStatus??"";
                   widget.orderMode.text=data.orderMode??"";
                   widget.totalPrice.text=data.totalPrice.toString();
                   widget.vat.text=data.vat.toString();
                   widget.trnNumber.text=data.trnNumber.toString();
                   widget.paymentId.text=data.paymentId??"";
                   widget.paymentStatus.text=data.paymentStatus??"";
                   widget.customerId.text=data.customerId??"";
                   widget.orderStatus.text=data.orderStatus??"";
                   widget.invoiceStatus.text=data.invoiceStatus.toString();
                   widget.note.text=data.reason??"";
                   widget.discount.text=data.discount.toString();
                   widget.remarks.text=data.remarks??"";
                   widget.unitCost.text=data.unitCost.toString()??"";
                   widget.taxableAmount.text=data.taxableAmount.toString()??"";
                   widget.sellingPriceTotal.text=data.returnPriceTotal.toString()??"";
                   widget.excessTax.text=data.excessTax.toString()??"";
                   widget.vat.text=data.vat.toString()??"";
                   Variable.invoiceCode=data.salesInvoiceId.toString()??"";


                 });

               }
           );
  },
  builder: (context, state) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 880) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NormalTextField(text: "Order Type",controller: widget.orderType,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Order Mode",controller: widget.orderMode,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Return Order Code",controller: widget.orderCode,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                // DateForTextField(text: "Ordered date",
                //   read: true,
                //   controller: widget.orderDate,
                //   // readOnlyField: false,
                //   format: DateFormat('yyyy-MM-dd'),
                //   onSaved: (newValue) {
                //     widget.orderDate.text = newValue
                //         ?.toIso8601String()
                //         .split("T")[0] ??
                //         "";
                //   },
                //   enable: true,
                // ),
                NormalTextField(text: "Ordered date",controller: widget.orderDate,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Customer Id",controller: widget.customerId,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Trn Number",controller: widget.trnNumber,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Invoice Status",controller: widget.invoiceStatus,readOnlyField: true,),


              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SelectableDropDownpopUp(
                  controller1: widget.invoiceCode..text = Variable.invoiceCode,
                  label: "Sales Invoice Code",
                  type: "SalesInvoiceCode",
                  value: Variable.invoiceCode,
                  onSelection: (InvoiceCodeList? va) {
                    setState(() {
                      Variable.invoiceCode = va?.invoiceCode ?? "";
                      // Variable.name=va?.name??"";
                    });
                    setState(() {
                      context.read<InvoiceCodeCubit>().getItemListInvoiceCode();
                    });
                  },
                  // onAddNew: (){},
                  restricted: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Payment Id",controller: widget.paymentId,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Payment Status",controller: widget.paymentStatus,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Order Status",controller: widget.orderStatus,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                LargeTextField(text: "Reason",controller: widget.note,readOnlyField: false,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                LargeTextField(text: "Remarks",controller: widget.remarks,readOnlyField: false,),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NormalTextField(text: "Unit cost",controller: ontap?TextEditingController(text: widget.unitc.toString()):widget.unitCost,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Discount",controller: ontap?TextEditingController(text: widget.disc.toString()):widget.discount,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Excise tax",controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Taxable Amount",controller: ontap?TextEditingController(text: widget.taxaAmd.toString()):widget.taxableAmount,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Vat",controller: ontap?TextEditingController(text: widget.vatt.toString()):widget.vat,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Selling price total",controller: ontap?TextEditingController(text: widget.sellP.toString()):widget.sellingPriceTotal,readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextField(text: "Total price",controller: ontap?TextEditingController(text: widget.totalva.toString()):widget.totalPrice,readOnlyField: true,),
              ],
            ),
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextFieldTab(text: "Order type",
                    controller: widget.orderType,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Order mode",
                    controller: widget.orderMode,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Return Order code",
                    controller: widget.orderCode,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  // DateForTextFieldTab(text: "Ordered date",
                  //   controller: widget.orderDate,
                  //   // readOnlyField: false,
                  //   format: DateFormat('yyyy-MM-dd'),
                  //   onSaved: (newValue) {
                  //     widget.orderDate.text = newValue
                  //         ?.toIso8601String()
                  //         .split("T")[0] ??
                  //         "";
                  //   },
                  //   enable: true,
                  // ),
                  NormalTextFieldTab(text: "Ordered date",controller: widget.orderDate,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Customer Id",
                    controller: widget.paymentStatus,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "trn number",
                    controller: widget.customerId,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Trn Number",
                    controller: widget.trnNumber,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Billing address id",
                    controller: widget.billingAddressId,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Shipping Address Id",
                    controller: widget.salesQuotes,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Payment id",
                    controller: widget.paymentId,
                    readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Payment Status",
                    controller: widget.paymentStatus,
                    readOnlyField: true,),

                ],
              ),
            ),

            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                NormalTextFieldTab(text: "Order status",
                  controller: widget.orderStatus,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                LargeTextFieldTab(text: "Reason",
                  controller: widget.note,
                  readOnlyField: false,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                LargeTextFieldTab(text: "remarks",
                  controller: widget.remarks,
                  readOnlyField: false,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Invoice status",
                    controller: widget.invoiceStatus,
                    readOnlyField: true),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Unit cost",
                  controller: ontap?TextEditingController(text: widget.unitc.toString()):widget.unitCost,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Discount",
                  controller: ontap?TextEditingController(text: widget.disc.toString()):widget.discount,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Exsise tax",
                  controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Taxable Amount",
                  controller: ontap?TextEditingController(text: widget.taxaAmd.toString()):widget.taxableAmount,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(
                  text: "Vat", controller: ontap?TextEditingController(text: widget.vatt.toString()):widget.vat,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Selling price total",
                  controller: ontap?TextEditingController(text: widget.sellP.toString()):widget.sellingPriceTotal,
                  readOnlyField: true,),
                SizedBox(height: context.blockSizeVertical * 2.5,),
                NormalTextFieldTab(text: "Total price",
                  controller: ontap?TextEditingController(text: widget.totalva.toString()):widget.totalPrice,
                  readOnlyField: true,),

              ],
            ),
          ],
        );
      }
    }

    );
  },
);

  }
}
////////////////////////////////////////////////////////////////

class ScrollTablesReturn extends StatefulWidget {
  final ReadSalesReturn? newData;
  final Function (double value,double total,double sellPrice,double vattt,double exTax,double disco,double unitt)? taxaAmd;
  final Function (List<OrderLinesReturn>)? changeTable;


  const ScrollTablesReturn({Key? key,
    this.newData,
    this.changeTable, this.taxaAmd,

  }) : super(key: key);

  @override
  State<ScrollTablesReturn> createState() => _ScrollTablesReturnState();
}

class _ScrollTablesReturnState extends State<ScrollTablesReturn> {
  bool isSelected=false;
  bool isPress=false;
  List<OrderLinesReturn> table = [];

  List<TextEditingController> varrientId=[];
  List<TextEditingController> varrientName=[];
  List<TextEditingController> barCode=[];
  List<TextEditingController> returnBasedOn=[];
  List<TextEditingController> returnTime=[];
  List<TextEditingController> warranty=[];
  List<TextEditingController> salesUom=[];
  List<TextEditingController> discountType=[];
  List<TextEditingController> unitCost=[];
  List<TextEditingController> foc=[];
  List<TextEditingController> discount=[];
  List<TextEditingController> soldPrice=[];
  List<TextEditingController> taxableAmount=[];
  List<TextEditingController> excessTax=[];
  List<TextEditingController> totalPrice=[];
  List<TextEditingController> vat=[];
  List<TextEditingController> isInvoiced=[];
  List<TextEditingController> isActive=[];
  List<TextEditingController> quandity=[];
  List<TextEditingController> warrentyPrice=[];

  List<double>VatFoc=[];


  double VatAmounts=0.0;
  double ActualGC=0.0;
  double VatWithFoc=0.0;

  void taxableAmountCalcutatingMethod(int Qty,double unitCst,double exTaxx,int disct,String type){
    if(type=="price"){
      VatAmounts = (((Qty*unitCst)+exTaxx)-disct);
    }else if(type=="percentage"){
      double total = 0;
      total = (Qty * unitCst) + exTaxx;
      VatAmounts = (total - ((total * disct) / 100));
    }
    // print(VatAmounts);
  }
  void TotalpriceCal(double VatAmounts,double vatt,double waryPrice){

    ActualGC = ((VatAmounts+waryPrice)+((VatAmounts*vatt)/100));
    // print(ActualGC);
  }
  void vatAmountWithFoc(double VatAmount,double foc,double unitCost){
    VatWithFoc = (VatAmount-(foc*unitCost));
    // print("Shiiiiiii$VatWithFoc");
  }
  List<bool> isActiveData=[];

  @override
  Widget build(BuildContext context) {
    if(widget.newData?.orderLines?.length!=null)
      for(var i=0;i<widget.newData!.orderLines!.length;i++) {
        isActiveData.add(
            widget.newData!.orderLines![i].isActive ?? false);
      }

    if(isSelected==false){
      taxableAmount.clear();
      totalPrice.clear();
      discount.clear();
      excessTax.clear();
      vat.clear();
      warrentyPrice.clear();
    if (widget.newData?.orderLines != null &&widget.newData!.orderLines!.isNotEmpty) {
      for (var i = 0; i < widget.newData!.orderLines!.length; i++) {
        varrientId.add(TextEditingController(
            text: widget.newData?.orderLines?[i].variantId.toString() ?? ""));
        barCode.add(TextEditingController(
            text: widget.newData?.orderLines?[i].barcode.toString() ?? ""));
        returnBasedOn.add(TextEditingController(
            text: widget.newData?.orderLines?[i].returnType.toString() ?? ""));
        returnTime.add(TextEditingController(
            text: widget.newData?.orderLines?[i].returnTime.toString() ?? ""));
        isInvoiced.add(TextEditingController(
            text: widget.newData?.orderLines?[i].isInvoiced.toString() ?? ""));
        warranty.add(TextEditingController(
            text: widget.newData?.orderLines?[i].warrantyId.toString() ?? ""));
        salesUom.add(TextEditingController(
            text: widget.newData?.orderLines?[i].salesUom.toString() ?? ""));
        unitCost.add(TextEditingController(
            text: widget.newData?.orderLines?[i].unitCost.toString() ?? ""));
        discountType.add(TextEditingController(
            text: widget.newData?.orderLines?[i].discountType.toString() ??
                ""));
        discount.add(TextEditingController(
            text: widget.newData?.orderLines?[i].discount.toString() ?? ""));
        excessTax.add(TextEditingController(
            text: widget.newData?.orderLines?[i].excessTax.toString() ?? ""));
        soldPrice.add(TextEditingController(
            text: widget?.newData?.orderLines?[i].soldPrice.toString() ?? ""));
        taxableAmount.add(TextEditingController(
            text: widget.newData?.orderLines?[i].taxableAmount.toString() ??
                ""));
        vat.add(TextEditingController(
            text: widget.newData?.orderLines?[i].vat.toString() ?? ""));
        quandity.add(TextEditingController(
            text: widget.newData?.orderLines?[i].quantity.toString() ?? ""));
        // warrentyPrice.add(TextEditingController(
        //     text: widget.newData?.orderLines?[i].warrantyPrice.toString() ??
        //         ""));
        totalPrice.add(TextEditingController(
            text: widget.newData?.orderLines?[i].totalPrice.toString() ?? ""));
        isActive.add(TextEditingController(
            text: widget.newData?.orderLines?[i].isActive.toString() ?? ""));
      }
    }}
    isSelected=false;

    ScrollController? scrollController = ScrollController();
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Order Lines",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1.1,fontWeight: FontWeight.w500),),
        ),
        SizedBox(
          height: context.blockSizeVertical * 40,
          // width: context.blockSizeHorizontal*85,
          child: Scrollbar(
            controller: scrollController,
            child: Container(
              alignment: Alignment.topRight,
              height: context.blockSizeVertical * 0.25,
              child: ListView(
                  controller: scrollController,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: context.blockSizeHorizontal * 1,),
                        SingleChildScrollView(
                            child: Container(
                              width: context.blockSizeHorizontal * 150,
                              padding: const EdgeInsets.all(10),
                              child: customTable(
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

                                  0: const FlexColumnWidth(2.5),
                                  1: const FlexColumnWidth(5),
                                  2: const FlexColumnWidth(5),
                                  3: const FlexColumnWidth(8),
                                  4: const FlexColumnWidth(4),
                                  5: const FlexColumnWidth(4),
                                  6: const FlexColumnWidth(4),
                                  7: const FlexColumnWidth(5),
                                  8: const FlexColumnWidth(4),
                                  9: const FlexColumnWidth(4),
                                  10: const FlexColumnWidth(4),
                                  11: const FlexColumnWidth(4),
                                  12: const FlexColumnWidth(4),
                                  13: const FlexColumnWidth(6),
                                  14: const FlexColumnWidth(4),
                                  15: const FlexColumnWidth(6),
                                  16: const FlexColumnWidth(4),
                                  17: const FlexColumnWidth(4),
                                  18: const FlexColumnWidth(4),
                                  19: const FlexColumnWidth(4),


                                },
                                childrens: [
                                  TableRow(

                                      children: [
                                        tableHeadtext(

                                          'Sl.No',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Variant Id ',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Barcode',
                                          // padding:
                                          // const EdgeInsets.all(13),
                                          height: 50,
                                          size: 13,
                                        ),

                                        tableHeadtext(
                                          'Return Type',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Return Time',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Is invoiced',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Warranty ',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Sales Uom',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Qty',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Unit cost',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Excess tax',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Discount type',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Discount',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Taxable Amount',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Vat',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Selling price',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        // tableHeadtext(
                                        //   'Warranty price',
                                        //   // padding:
                                        //   // const EdgeInsets.all(15),
                                        //   height: 50,
                                        //   size: 13,
                                        // ),
                                        tableHeadtext(
                                          'Total price',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Is active',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Action',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),


                                      ]),

                                  if(widget.newData?.orderLines!=null)

                                    for (var i = 0; i < widget.newData!.orderLines!.length; i++)
                                      TableRow(
                                          children: [
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding((i+1).toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].variantId.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].barcode.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].returnType.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].returnTime.toString())),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: CheckedBoxTable(
                                                valueChanger: widget.newData?.orderLines![i].isInvoiced ?? false,
                                                onSelection: (bool? value) {  },
                                              )
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].warrantyId.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].salesUom.toString()??""),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].quantity.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].unitCost.toString()??"")
                                            ),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                controller: excessTax[i],
                                                onChanged: (sh){
                                                  isSelected=true;

                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(quandity[i].text)??0,
                                                      double.tryParse(unitCost[i].text)??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                  discountType[i].text);
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i] =
                                                        TextEditingController(
                                                            text: VatAmounts
                                                                .toString());
                                                    totalPrice[i] =
                                                        TextEditingController(
                                                            text: ActualGC
                                                                .toString());
                                                  });

                                                },

                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].discountType.toString()??"")
                                            ),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child:   UnderLinedInput(
                                                controller: discount[i],
                                                onChanged: (sh){
                                                  isSelected=true;

                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(quandity[i].text)??0,
                                                      double.tryParse(unitCost[i].text)??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                      discountType[i].text);
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i] =
                                                        TextEditingController(
                                                            text: VatAmounts
                                                                .toString());
                                                    totalPrice[i] =
                                                        TextEditingController(
                                                            text: ActualGC
                                                                .toString());
                                                  });
                                                },

                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(taxableAmount[i].text??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                controller: vat[i],
                                                onChanged: (sh){
                                                  isSelected=true;

                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(quandity[i].text)??0,
                                                      double.tryParse(unitCost[i].text)??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                      discountType[i].text);
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i] =
                                                        TextEditingController(
                                                            text: VatAmounts
                                                                .toString());
                                                    totalPrice[i] =
                                                        TextEditingController(
                                                            text: ActualGC
                                                                .toString());
                                                  });
                                                },
                                              )
                                              ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child:textPadding(widget.newData?.orderLines![i].soldPrice.toString()??"")
                                            ),
                                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            //   child: UnderLinedInput(
                                            //     controller: warrentyPrice[i],
                                            //     onChanged: (sh){
                                            //       isSelected=true;
                                            //
                                            //       taxableAmountCalcutatingMethod(
                                            //           int.tryParse(quandity[i].text)??0,
                                            //           double.tryParse(unitCost[i].text)??0,
                                            //           double.tryParse(excessTax[i].text)??0,
                                            //           int.tryParse(discount[i].text)??0,
                                            //           discountType[i].text);
                                            //       TotalpriceCal(VatAmounts,
                                            //           double.tryParse(vat[i].text)??0,
                                            //           double.tryParse(warrentyPrice[i].text)??0
                                            //       );
                                            //       setState(() {
                                            //         taxableAmount[i] =
                                            //             TextEditingController(
                                            //                 text: VatAmounts
                                            //                     .toString());
                                            //         totalPrice[i] =
                                            //             TextEditingController(
                                            //                 text: ActualGC
                                            //                     .toString());
                                            //       });
                                            //     },
                                            //
                                            //   ),
                                            // ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,

                                                child: textPadding(totalPrice[i].text)
                                            ),


                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child:CheckedBoxTable(
                                                  valueChanger: widget.newData?.orderLines![i].isActive ?? false,
                                                  onSelection: (bool? value) {  },
                                                )
                                            ),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: TextButton(
                                                  child:Container(
                                                      height: context.blockSizeVertical*4,
                                                      // width: context.blockSizeHorizontal*1,
                                                      child: Center(child: Text("Set"))),

                                                  onPressed: (){
                                                    ontap = true;
                                                    isSelected=true;
                                                    double taxaAmd = 0;
                                                    double total = 0;
                                                    double sell = 0;
                                                    double exes = 0;
                                                    double unit = 0;
                                                    double vatt = 0;
                                                    double dis = 0;
                                                    for (var i = 0; i < widget.newData!.orderLines!.length; i++) {
                                                    if(isActiveData[i]==true){
                                                      taxaAmd += double.tryParse(
                                                          taxableAmount[i].text) ??
                                                          0;
                                                      total += double.tryParse(
                                                          totalPrice[i].text) ?? 0;
                                                      dis += double.tryParse(
                                                          discount[i].text) ?? 0;
                                                      sell += double.tryParse(soldPrice[i].text) ?? 0;
                                                      vatt += double.tryParse(
                                                          vat[i].text) ?? 0;
                                                      unit += double.tryParse(
                                                          unitCost[i].text) ?? 0;
                                                      exes += double.tryParse(
                                                          excessTax[i].text) ?? 0;
                                                    }}
                                                    print("ttt${taxaAmd}");


                                                    if(widget.newData?.orderLines?.length!=null)
// ignore: curly_braces_in_flow_control_structures
                                                      for(var i=0;i<widget.newData!.orderLines!.length;i++) {
                                                        returnLines.add(OrderLinesReturn(
                                                          variantId: varrientId[i].text,
                                                          id: widget.newData!.orderLines![i].id,
                                                          // warrantyPrice:double.tryParse(warrentyPrice[i].text),
                                                          taxableAmount:  double.tryParse(taxableAmount[i].text),
                                                          totalPrice: double.tryParse(totalPrice[i].text),
                                                          discount: double.tryParse(discount[i].text),
                                                          unitCost: double.tryParse(unitCost[i].text),
                                                          excessTax: double.tryParse(excessTax[i].text),
                                                          vat: double.tryParse(vat[i].text),
                                                          quantity: int.tryParse(quandity[i].text),
                                                          isActive: isActiveData[i],
                                                          barcode:barCode[i].text,
                                                          discountType: discountType[i].text,
                                                          salesUom: salesUom[i].text,
                                                          soldPrice: double.tryParse(soldPrice[i].text),
                                                          returnTime: int.tryParse(returnTime[i].text),
                                                          returnType: returnBasedOn[i].text

                                                        ));
                                                      }

                                                    widget.changeTable!(returnLines);
                                                    widget.taxaAmd!(taxaAmd, total, sell, vatt, exes, dis, unit);
                                                    print("ttt$returnLines");
                                                  },
                                                )
                                            )


                                          ]
                                      ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ),
      ],
    );
  }
}
////////////////////////////////////////////////////////////////////////////////
class BottomHeaderReturn extends StatefulWidget {
  final VoidCallback? onTap;

  const BottomHeaderReturn({Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<BottomHeaderReturn> createState() => _BottomHeaderReturnState();
}

class _BottomHeaderReturnState extends State<BottomHeaderReturn> {

  @override
  Widget build(BuildContext context) {
    return Container(height: context.blockSizeVertical * 8,
      color: const Color(0xff687892),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          // TextOnlyButton(text: "CLEAR", color1: 0xff3E4F5B, color2: 0xffF4F4F4,),
          SizedBox(width: context.blockSizeHorizontal * 1,),
          TextOnlyButton(text: "SAVE", color1: 0xffFFFFFF, color2: 0xff687892,
            onTap:
           widget.onTap ,
          ),
          SizedBox(width: context.blockSizeHorizontal * 2.2,),
        ],
      ),
    );
  }
}



