import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Cubit/Assign_To_OrgList_Cubit/assign_to_org_list_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Invoice_Cubit/read_return_invoice_cubit.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';
import 'package:salesapp/Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../Widgets/CustomCheckBox.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/Reusable_widget_web.dart';
import '../../Widgets/dropdownbutton.dart';
import '../../Widgets/popupinputfield.dart';
import '../../color_palette/color_palette.dart';
import '../../custom_table/costumtable.dart';
import '../SalesGenaral/SalesGenaralTables.dart';
import 'SalesReturnInvoice.dart';



class TopHeaderReturnInvoice extends StatelessWidget {
  final VoidCallback onTaped;
  const TopHeaderReturnInvoice({Key? key, required this.onTaped}) : super(key: key);

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
class TablePartReturnInvoice extends StatefulWidget {
  final List<SalesRetunnInvoiceOrderLines>? totalData;
  final double taxaAmd;
  final double totalva;
  final double disc;
  final double vatt;
  final double sellP;
  final double unitc;
  final double exss;

  final TextEditingController invoiceCode;
  final TextEditingController invoiceDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignTo;
  final TextEditingController reason;
  final TextEditingController remarks;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController excessTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;

  const TablePartReturnInvoice({Key? key,
    required this.customerId,
    required this.trnNumber,
    required this.paymentId,
    required this.paymentStatus,
    required this.orderStatus,
    required this.remarks,
    required this.invoiceStatus,
    required this.unitCost,
    required this.discount,
    required this.excessTax,
    required this.taxableAmount,
    required this.vat,
    required this.sellingPriceTotal,
    required this.totalPrice,
    this.totalData,
    required this.invoiceCode,
    required this.invoiceDate,
    required this.paymentMethod,
    required this.assignTo,
    required this.reason, required this.taxaAmd, required this.totalva, required this.disc, required this.vatt, required this.sellP, required this.unitc, required this.exss,


  }) : super(key: key);

  @override
  State<TablePartReturnInvoice> createState() => _TablePartReturnInvoiceState();
}

class _TablePartReturnInvoiceState extends State<TablePartReturnInvoice> {

  ReadSalesReturnInvoice? readData;
  List<SalesRetunnInvoiceOrderLines> table = [];
  late AutoScrollController controller;
  @override
  void initState() {


    Variable.organisationCode="";
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);    super.initState();
  }

  @override
  Widget build(BuildContext context) {


        return BlocConsumer<ReadReturnInvoiceCubit, ReadReturnInvoiceState>(
         listener: (context, state) {

           state.maybeWhen(
               orElse: () {},
               error: () {
                 print("error..Read Invoice rEturn");
               },
               success: (data) {
                 setState(() {
                   readData=data;
                   data.salesReturnInvoiceOrderLines != null ?
                   table = data.salesReturnInvoiceOrderLines ?? [] : table = [];

                   if(readData?.invoiceDataSalesReturn==null){
                     widget.orderStatus.text=data.orderStatus??"";
                     widget.totalPrice.text=data.totalPrice.toString()??"";
                     widget.vat.text=data.vat.toString()??"";
                     widget.trnNumber.text=data.trnNumber.toString()??"";
                     widget.paymentId.text=data.paymentId.toString()??"";
                     widget.paymentStatus.text=data.paymentStatus??"";
                     widget.customerId.text=data.customerId??"";
                     widget.orderStatus.text=data.orderStatus??"";
                     widget.reason.text=data.reason??"";
                     widget.discount.text=data.discount.toString()??"";
                     widget.remarks.text=data.remarks??"";
                     widget.unitCost.text=data.unitCost.toString()??"";
                     widget.taxableAmount.text=data.taxableAmount.toString()??"";
                     widget.excessTax.text=data.excessTax.toString()??"";
                     widget.vat.text=data.vat.toString()??"";
                     widget.sellingPriceTotal.text=data.returnPriceTotal.toString()??"";
                     widget.invoiceDate.text=data.returnedDate.toString()??"";
                   }
                   else{
                     widget.invoiceCode.text=data?.invoiceDataSalesReturn?.salesReturnInvoiceCode.toString()??"";
                     widget.totalPrice.text=data.invoiceDataSalesReturn?.totalPrice.toString()??"";
                     widget.vat.text=data.invoiceDataSalesReturn?.vat.toString()??"";
                     widget.trnNumber.text=data.invoiceDataSalesReturn?.trnNumber.toString()??"";
                     // widget.paymentId.text=data.invoiceDataSalesReturn?.paymentId.toString()??"";
                     widget.paymentStatus.text=data.invoiceDataSalesReturn?.paymentStatus??"";
                     widget.customerId.text=data.invoiceDataSalesReturn?.customerId??"";
                     // widget.orderStatus.text=data.orderStatus??"";
                     Variable.organisationCode=data.invoiceDataSalesReturn?.assignTo??"";
                     widget.invoiceStatus.text=data.invoiceDataSalesReturn?.invoiceStatus??"";
                     widget.reason.text=data.invoiceDataSalesReturn?.notes??"";
                     widget.discount.text=data.invoiceDataSalesReturn?.discount.toString()??"";
                     widget.remarks.text=data.invoiceDataSalesReturn?.remarks??"";
                     widget.unitCost.text=data.invoiceDataSalesReturn?.unitCost.toString()??"";
                     widget.taxableAmount.text=data.invoiceDataSalesReturn?.taxableAmount.toString()??"";
                     widget.excessTax.text=data.invoiceDataSalesReturn?.excessTax.toString()??"";
                     widget.vat.text=data.invoiceDataSalesReturn?.vat.toString()??"";
                     widget.sellingPriceTotal.text=data.invoiceDataSalesReturn?.returnPriceTotal?.toString()??"";
                     widget.invoiceDate.text=data.invoiceDataSalesReturn?.createdDate.toString()??"";
                   }





                 });

               }
           );
  },
  builder: (context, state) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if(constraints.maxWidth>880) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NormalTextField(text: "Invoice Code",controller: widget.invoiceCode,readOnlyField: true,),
                    SizedBox(height: context.blockSizeVertical * 2.5,),
                    // DateForTextField(text: "Invoiced date",
                    //   read: true,
                    //   controller: widget.invoiceDate,
                    //   // readOnlyField: false,
                    //   format: DateFormat('yyyy-MM-dd'),
                    //   onSaved: (newValue) {
                    //     widget.invoiceDate.text = newValue
                    //         ?.toIso8601String()
                    //         .split("T")[0] ??
                    //         "";
                    //   },
                    //   enable: true,
                    // ),
                    NormalTextField(text: "Invoiced date",controller: widget.invoiceDate,readOnlyField: true,),
                    SizedBox(height: context.blockSizeVertical * 2.5,),
                    NormalTextField(text: "Payment Id",controller: widget.paymentId,readOnlyField: true,),
                    SizedBox(height: context.blockSizeVertical * 2.5,),
                    NormalTextField(text: "Payment Status",controller: widget.paymentStatus,readOnlyField: true,),
                    SizedBox(height: context.blockSizeVertical * 2.5,),
                    NormalTextField(text: "Payment Method",controller: widget.paymentMethod,readOnlyField: true,),
                    SizedBox(height: context.blockSizeVertical * 2.5,),
                    NormalTextField(text: "Customer Id",controller: widget.customerId,readOnlyField: true,),

                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextField(text: "Trn Number",controller: widget.trnNumber,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Order Status",controller: widget.orderStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Invoice Status",controller: widget.invoiceStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  SelectableDropDownpopUp(
                    controller1: widget.assignTo..text = Variable.organisationCode,
                    label: "Assign to",
                    type: "orgCode",
                    value: Variable.organisationCode,
                    onSelection: (OrgList? va) {
                      setState(() {
                        Variable.organisationCode = va?.orgCode ?? "";
                        // Variable.name=va?.name??"";
                      });
                      setState(() {
                        context.read<AssignToOrgListCubit>().getItemListAssignToOrgList();
                      });
                    },
                    // onAddNew: (){},
                    restricted: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  LargeTextField(text: "Reason",controller: widget.reason,readOnlyField: false,),
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
                  NormalTextField(text: "Exsise tax",controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,readOnlyField: true,),
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
              padding: const EdgeInsets.only(bottom: 90),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextFieldTab(text: "Invoice Code",controller: widget.invoiceCode,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  // DateForTextFieldTab(text: "Invoiced date",
                  //   controller: widget.invoiceDate,
                  //   // readOnlyField: false,
                  //   format: DateFormat('yyyy-MM-dd'),
                  //   onSaved: (newValue) {
                  //     widget.invoiceDate.text = newValue
                  //         ?.toIso8601String()
                  //         .split("T")[0] ??
                  //         "";
                  //   },
                  //   enable: true,
                  // ),
                  NormalTextFieldTab(text: "Invoiced date",controller: widget.invoiceDate,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Payment Id",controller: widget.paymentId,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Payment Status",controller: widget.paymentStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Payment Method",controller: widget.paymentMethod,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Customer Id",controller: widget.customerId,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Trn Number",controller: widget.trnNumber,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Order Status",controller: widget.orderStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Invoice Status",controller: widget.invoiceStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  SelectableDropDownpopUpTab(
                    controller1: widget.assignTo..text = Variable.organisationCode,
                    label: "Assign to",
                    type: "orgCode",
                    value: Variable.organisationCode,
                    onSelection: (OrgList? va) {
                      setState(() {
                        Variable.organisationCode = va?.orgCode ?? "";
                        // Variable.name=va?.name??"";
                      });
                      setState(() {
                        context.read<AssignToOrgListCubit>().getItemListAssignToOrgList();
                      });
                    },
                    // onAddNew: (){},
                    restricted: true,),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 85),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  LargeTextFieldTab(text: "Reason",controller: widget.reason,readOnlyField: false,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  LargeTextFieldTab(text: "Remarks",controller: widget.remarks,readOnlyField: false,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Unit cost",controller: ontap?TextEditingController(text: widget.unitc.toString()):widget.unitCost,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Discount",controller: ontap?TextEditingController(text: widget.disc.toString()):widget.discount,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Exsise tax",controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Taxable Amount",controller: ontap?TextEditingController(text: widget.taxaAmd.toString()):widget.taxableAmount,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Vat",controller: ontap?TextEditingController(text: widget.vatt.toString()):widget.vat,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Selling price total",controller: ontap?TextEditingController(text: widget.sellP.toString()):widget.sellingPriceTotal,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextFieldTab(text: "Total price",controller: ontap?TextEditingController(text: widget.totalva.toString()):widget.totalPrice,readOnlyField: true,),

                ],
              ),
            ),
          ],
        );
      }
    },
    );
  },
);

  }
}
////////////////////////////////////////////////////////////////

class ScrollTablesReturnInvoice extends StatefulWidget {
  final ReadSalesReturnInvoice? newData;
  final Function (List<SalesRetunnInvoiceOrderLines>)? changeTable;
  final Function (double value,double total,double sellPrice,double vattt,double exTax,double disco,double unitt)? taxaAmd;


  const ScrollTablesReturnInvoice({Key? key,
    this.newData,
    this.changeTable, this.taxaAmd,

  }) : super(key: key);

  @override
  State<ScrollTablesReturnInvoice> createState() => _ScrollTablesReturnInvoiceState();
}

class _ScrollTablesReturnInvoiceState extends State<ScrollTablesReturnInvoice> {
  @override
  void initState() {
    isInvoiceData.clear();

    super.initState();
  }
  bool isSelected=false;
  bool isPress=true;
  List<TextEditingController> varrientId=[];
  List<TextEditingController> salesOrderLineCode=[];
  List<TextEditingController> barCode=[];
  List<TextEditingController> salesUom=[];
  List<TextEditingController> discountType=[];
  List<TextEditingController> unitCost=[];
  List<TextEditingController> discount=[];
  List<TextEditingController> soldPrice=[];
  List<TextEditingController> taxableAmount=[];
  List<TextEditingController> excessTax=[];
  List<TextEditingController> totalPrice=[];
  List<TextEditingController> vat=[];
  List<TextEditingController> quandity=[];
  List<TextEditingController> warrentyPrice=[];
  List<bool> isInvoiceData=[];

  double VatAmounts=0.0;
  double ActualGC=0.0;
  double VatWithFoc=0.0;

  void taxableAmountCalcutatingMethod(int Qty,double unitCst,double exTaxx,int disct,){
    VatAmounts = (((Qty*unitCst)+exTaxx)-disct);
    // print(VatAmounts);
  }
  void TotalpriceCal(double VatAmounts,double vatt,double waryPrice){

    ActualGC = ((VatAmounts+waryPrice)+((VatAmounts*vatt)/100));
    // print(ActualGC);
  }
  void vatAmountWithFoc(double VatAmount,double foc,double unitCost){
    VatWithFoc = (VatAmount-(foc*unitCost));

  }


  @override
  Widget build(BuildContext context) {

    if(widget.newData?.salesReturnInvoiceOrderLines?.length!=null){
      for(var i=0;i<widget.newData!.salesReturnInvoiceOrderLines!.length;i++) {
        isInvoiceData.add(
            widget.newData!.salesReturnInvoiceOrderLines![i].isInvoiced ?? false);
      }}


    if(isSelected==false){
      taxableAmount.clear();
      totalPrice.clear();
      discount.clear();
      excessTax.clear();
      vat.clear();
      warrentyPrice.clear();
    if (widget.newData?.salesReturnInvoiceOrderLines != null &&widget.newData!.salesReturnInvoiceOrderLines!.isNotEmpty) {

      for (var i = 0; i < widget.newData!.salesReturnInvoiceOrderLines!.length; i++) {
        varrientId.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].variantId.toString()??""));
        barCode.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].barcode.toString()??""));
        salesOrderLineCode.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].salesReturnOrderLineCode.toString()??""));
        salesUom.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].salesUom.toString()??""));
        unitCost.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].unitCost.toString()??""));
        discountType.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].discountType.toString()??""));
        discount.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].discount.toString()??""));
        excessTax.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].excessTax.toString()??""));
        soldPrice.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].soldPrice.toString()??""));
        taxableAmount.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].taxableAmount.toString()??""));
        vat.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].vat.toString()??""));
        quandity.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].quantity.toString()??""));
        // warrentyPrice.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].warrantyPrice.toString()??""));
        totalPrice.add(TextEditingController(text: widget.newData?.salesReturnInvoiceOrderLines?[i].totalPrice.toString()??""));
      }}}
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
                        SizedBox(width: context.blockSizeHorizontal *0.9,),
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
                                          'Sales Order Line Code',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Is invoiced ',
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
                                          'Exsise tax',
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
                                          'Taxable amount',
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
                                          'Action',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),


                                      ]),

                                  if(widget.newData?.invoiceDataSalesReturn==null)


                                    for (var i = 0; i < widget.newData!.salesReturnInvoiceOrderLines!.length; i++)
                                      TableRow(
                                          children: [
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding((i+1).toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].variantId.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].barcode.toString())),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].salesReturnOrderLineCode.toString())
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: CheckedBoxs(color:const Color(0xff3E4F5B) ,
                                                valueChanger:  isInvoiceData[i],
                                                onSelection: (bool? value ) {
                                                  setState(() {

                                                    isInvoiceData[i]=!isInvoiceData[i];
                                                    // widget.newData!.salesReturnInvoiceOrderLines![i].isInvoiced = !widget.newData!.salesReturnInvoiceOrderLines![i].isInvoiced!;
                                                  });
                                                },

                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].salesUom.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].quantity.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].unitCost.toString()??"")
                                            ),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].excessTax.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].discountType.toString()??"")
                                            ),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child:   textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].discount.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].taxableAmount.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].vat.toString()??"")
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].soldPrice.toString()??"")
                                            ),
                                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            //   child: textPadding(widget.newData!.salesReturnInvoiceOrderLines![i].warrantyPrice.toString()??"")
                                            // ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,

                                                child: textPadding(totalPrice[i].text)
                                            ),


                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: TextButton(child: Container(
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
                                                    for (var i = 0; i < widget.newData!.salesReturnInvoiceOrderLines!.length; i++) {
                                                   if(isInvoiceData[i]==true){
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

                                                    if(widget.newData?.salesReturnInvoiceOrderLines?.length!=null)
// ignore: curly_braces_in_flow_control_structures
                                                      if(isPress) {
                                                        for (var i = 0; i <
                                                            widget.newData!
                                                                .salesReturnInvoiceOrderLines!
                                                                .length; i++) {
                                                          returnInvoice.add(
                                                              SalesRetunnInvoiceOrderLines(
                                                                warrantyPrice: double.tryParse(warrentyPrice[i].text),
                                                                variantId: varrientId[i]
                                                                    .text,
                                                                salesReturnOrderLineId: widget
                                                                    .newData!
                                                                    .salesReturnInvoiceOrderLines![i]
                                                                    .id,
                                                                taxableAmount: double
                                                                    .tryParse(
                                                                    taxableAmount[i]
                                                                        .text),
                                                                totalPrice: double
                                                                    .tryParse(
                                                                    totalPrice[i]
                                                                        .text),
                                                                discount: double
                                                                    .tryParse(
                                                                    discount[i]
                                                                        .text),
                                                                unitCost: double
                                                                    .tryParse(
                                                                    unitCost[i]
                                                                        .text),
                                                                excessTax: double
                                                                    .tryParse(
                                                                    excessTax[i]
                                                                        .text),
                                                                vat: double
                                                                    .tryParse(
                                                                    vat[i].text),
                                                                totalQty: int
                                                                    .tryParse(
                                                                    quandity[i]
                                                                        .text),
                                                                isInvoiced: isInvoiceData[i],
                                                                barcode: barCode[i]
                                                                    .text,
                                                                discountType: discountType[i]
                                                                    .text,
                                                                salesUom: salesUom[i]
                                                                    .text,
                                                                soldPrice: double
                                                                    .tryParse(
                                                                    soldPrice[i]
                                                                        .text),
                                                              ));
                                                        }
                                                        setState(() {
                                                          isPress=false;
                                                        });
                                                      }

                                                    widget.changeTable!(returnInvoice);
                                                    widget.taxaAmd!(taxaAmd, total, sell, vatt, exes, dis, unit);
                                                    print("ttt$returnInvoice");
                                                  },
                                                )
                                            )


                                          ]
                                      ),

                                  if(widget.newData?.invoiceDataSalesReturn!=null)
                                    for (var i = 0; i < widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice!.length; i++)
                                    TableRow(
                                        children: [
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding((i+1).toString())),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].variantId.toString()??"")),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].barcode.toString()??"")),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].salesReturnOrderLineCode.toString())
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: CheckedBoxs(color:Color(0xff3E4F5B) ,
                                              valueChanger:  isInvoiceData[i],
                                              onSelection: (bool? value ) {
                                                setState(() {

                                                  isInvoiceData[i]=!isInvoiceData[i];
                                                  // widget.newData!.salesReturnInvoiceOrderLines![i].isInvoiced = !widget.newData!.salesReturnInvoiceOrderLines![i].isInvoiced!;
                                                });
                                              },

                                            ),
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].salesUom.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].totalQty.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].unitCost.toString()??"")
                                          ),

                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].excessTax.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].discountType.toString()??"")
                                          ),

                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            child:   textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].discount.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].taxableAmount.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].vat.toString()??"")
                                          ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].soldPrice.toString()??"")
                                          ),
                                          // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          //   child: textPadding(widget.newData!.invoiceDataSalesReturn!.linesReturnInvoice![i].warrantyPrice.toString()??"")
                                          // ),
                                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,

                                              child: textPadding(totalPrice[i].text)
                                          ),


                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: TextButton(
                                                child: Container(
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
                                                  for (var i = 0; i < widget.newData!.salesReturnInvoiceOrderLines!.length; i++) {
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
                                                  }
                                                  print("ttt${taxaAmd}");

                                                  if(widget.newData?.salesReturnInvoiceOrderLines?.length!=null)
// ignore: curly_braces_in_flow_control_structures
                                                    if(isPress) {
                                                      for (var i = 0; i <
                                                          widget.newData!
                                                              .salesReturnInvoiceOrderLines!
                                                              .length; i++) {
                                                        returnInvoice.add(
                                                            SalesRetunnInvoiceOrderLines(
                                                              variantId: varrientId[i]
                                                                  .text,
                                                              salesReturnOrderLineId: widget
                                                                  .newData!
                                                                  .salesReturnInvoiceOrderLines![i]
                                                                  .id,
                                                              taxableAmount: double
                                                                  .tryParse(
                                                                  taxableAmount[i]
                                                                      .text),
                                                              totalPrice: double
                                                                  .tryParse(
                                                                  totalPrice[i]
                                                                      .text),
                                                              discount: double
                                                                  .tryParse(
                                                                  discount[i].text),
                                                              unitCost: double
                                                                  .tryParse(
                                                                  unitCost[i].text),
                                                              excessTax: double
                                                                  .tryParse(
                                                                  excessTax[i]
                                                                      .text),
                                                              vat: double.tryParse(
                                                                  vat[i].text),
                                                              totalQty: int
                                                                  .tryParse(
                                                                  quandity[i].text),
                                                              isInvoiced: isInvoiceData[i],
                                                              barcode: barCode[i]
                                                                  .text,
                                                              discountType: discountType[i]
                                                                  .text,
                                                              salesUom: salesUom[i]
                                                                  .text,
                                                              soldPrice: double
                                                                  .tryParse(
                                                                  soldPrice[i]
                                                                      .text),
                                                            ));
                                                      }
                                                      setState(() {
                                                        isPress=false;
                                                      });
                                                    }

                                                  widget.changeTable!(returnInvoice);
                                                  widget.taxaAmd!(taxaAmd, total, sell, vatt, exes, dis, unit);
                                                  print("ttt$returnInvoice");
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
class BottomHeaderReturnInvoice extends StatefulWidget {
  final VoidCallback? onTap;

  const BottomHeaderReturnInvoice({Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<BottomHeaderReturnInvoice> createState() => _BottomHeaderReturnInvoiceState();
}

class _BottomHeaderReturnInvoiceState extends State<BottomHeaderReturnInvoice> {

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



