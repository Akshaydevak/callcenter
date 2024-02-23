import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Cubit/Assign_To_Cubit/assign_to_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Invoice_Cubit/read_sales_invoice_cubit.dart';
import 'package:salesapp/Models/Assign_To_List/Assign_To_List.dart';
import 'package:salesapp/Models/Read_sales_invoice/Read_Sales_Invoice.dart';
import 'package:salesapp/salesapp_Screens/Sales_Invoice/SalesInvoice.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/Reusable_widget_web.dart';
import '../../Widgets/dropdownbutton.dart';
import '../../Widgets/popupinputfield.dart';
import '../../custom_table/costumtable.dart';
import '../../utils/variables.dart';
import '../SalesGenaral/SalesGenaralTables.dart';

class TopHeaderInvoice extends StatelessWidget {
   final VoidCallback? onTap;
  const TopHeaderInvoice({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
      height: context.blockSizeVertical * 8,
      child: Row(
        children: [
          SizedBox(width: context.blockSizeHorizontal * 2,),
           // const TextButtonLarge(text: "New request", images: "asset_images/plus.png",),
          const Spacer(),
          //  const ImageButtonSmall(images: "asset_images/print.png"),
          // SizedBox(width: context.blockSizeHorizontal * .5,),
            TextButtonLarge2(images: "asset_images/eye.png", text: "Preview",
           onTap: onTap,),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           const TextButtonLarge2(images: "asset_images/share.png", text: "Share"),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           const ImageButtonSmall(images: "asset_images/arrow2.png"),
          SizedBox(width: context.blockSizeHorizontal * 1.5,),

        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
class TablePartInvoice extends StatefulWidget {
  final double taxaAmd;
  final double totalva;
  final double disc;
  final double vatt;
  final double sellP;
  final double unitc;
  final double exss;
  final double warp;

  final TextEditingController invoiceCode;
  final TextEditingController onvoiceDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController warrantyPrice;
  final TextEditingController trnNumber;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignTo;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController excessTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;

  const TablePartInvoice({Key? key,
    required this.invoiceCode,
    required this.onvoiceDate,
    required this.paymentId,
    required this.paymentStatus,
    required this.paymentMethod,
    required this.customerId,
    required this.warrantyPrice,
    required this.trnNumber,
    required this.orderStatus,
    required this.invoiceStatus,
    required this.assignTo,
    required this.note,
    required this.remarks,
    required this.unitCost,
    required this.discount,
    required this.excessTax,
    required this.taxableAmount,
    required this.vat,
    required this.sellingPriceTotal,
    required this.totalPrice,
    required this.taxaAmd,
    required this.totalva,
    required this.disc,
    required this.vatt,
    required this.sellP,
    required this.unitc,
    required this.exss, required this.warp,
    // this.totalData,
  }) : super(key: key);

  @override
  State<TablePartInvoice> createState() => _TablePartInvoiceState();
}

class _TablePartInvoiceState extends State<TablePartInvoice> {

  ReadSalesInvoice? readData;
  List<OrderLineInvoice> table = [];

  late AutoScrollController controller;
  @override
  void initState() {
    Variable.customerCode="";
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ReadSalesInvoiceCubit, ReadSalesInvoiceState>(
     listener: (context, state) {
       state.maybeWhen(
           orElse: () {},
           error: () {
             print("error..p");
           },
           success: (data) {
             setState(() {
               readData=data;
               data.orderLineInvoice != null ?
               table = data.orderLineInvoice ?? [] : table = [];

               if(readData?.invoiceDatas==null) {
                 widget.warrantyPrice.text = data.warrantyPrice.toString();
                 widget.sellingPriceTotal.text =
                     data.sellingPriceTotal.toString();
                 widget.totalPrice.text = data.totalPrice.toString();
                 widget.vat.text = data.vat.toString();
                 widget.trnNumber.text = data.trnNumber.toString();
                 widget.paymentId.text = data.paymentId ?? "";
                 widget.paymentStatus.text = data.paymentStatus ?? "";
                 widget.customerId.text = data.customerId ?? "";
                 widget.orderStatus.text = data.orderStatus ?? "";
                 widget.discount.text = data.discount.toString();
                 widget.unitCost.text = data.unitCost.toString();
                 widget.taxableAmount.text = data.taxableAmount.toString();
                 widget.excessTax.text = data.excessTax.toString();
                 widget.vat.text = data.vat.toString();
               }else {
                 // widget.warrantyPrice.text = data.invoiceDatas?.warrantyPrice.toString()??"";
                 widget.sellingPriceTotal.text =
                     data.invoiceDatas?.sellingPriceTotal.toString()??"";
                 widget.totalPrice.text = data.invoiceDatas?.totalPrice.toString()??"";
                 // widget.trnNumber.text = data.invoiceDatas?.trnNumber.toString()??"";
                 // widget.paymentId.text = data.invoiceDatas?.paymentId ?? "";
                 // widget.paymentStatus.text = data.invoiceDatas?.paymentStatus ?? "";
                 widget.customerId.text = data.customerId ?? "";
                 // widget.orderStatus.text = data.invoiceDatas?.orderStatus ?? "";
                 widget.discount.text = data.invoiceDatas?.discount.toString()??"";
                 widget.unitCost.text = data.invoiceDatas?.unitCost.toString()??"";
                 widget.taxableAmount.text = data.invoiceDatas?.taxableAmount.toString()??"";
                 widget.excessTax.text = data.invoiceDatas?.excessTax.toString()??"";
                 widget.vat.text = data.invoiceDatas?.vat.toString()??"";
                 widget.invoiceCode.text =
                     data.invoiceDatas?.invoiceCode.toString() ?? "";
                 widget.onvoiceDate.text =
                     data.invoiceDatas?.createdDate.toString() ?? "";
                 widget.invoiceStatus.text =
                     data.invoiceDatas?.invoiceStatus.toString() ?? "";
                 Variable.customerCode =
                     data.invoiceDatas?.assignTo.toString() ?? "";
                 widget.remarks.text =
                     data.invoiceDatas?.remarks.toString() ?? "";
                 widget.note.text = data.invoiceDatas?.notes.toString() ?? "";
               }
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
          NormalTextField(text: "Invoice Code",
            controller: widget.invoiceCode,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          // DateForTextField(text: "Invoice date",
          //   read: true,
          //   controller: widget.onvoiceDate,
          //   // readOnlyField: false,
          //   format: DateFormat('yyyy-MM-dd'),
          //   onSaved: (newValue) {
          //     widget.onvoiceDate.text = newValue
          //         ?.toIso8601String()
          //         .split("T")[0] ??
          //         "";
          //   },
          //   enable: true,
          // ),
          NormalTextField(text: "Invoice date",controller: widget.onvoiceDate,readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Payment id",
            controller: widget.paymentId,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Payment status",
            controller: widget.paymentStatus,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Payment method",
            controller: widget.paymentMethod,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Customer Id",
            controller: widget.customerId,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Trn Number",
            controller: widget.trnNumber,
            readOnlyField: true,),

        ],
      ),
      Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [

          NormalTextField(text: "Order status",
            controller: widget.orderStatus,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          NormalTextField(text: "Invoice status",
            controller: widget.invoiceStatus,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          SelectableDropDownpopUp(
            controller1: widget.assignTo..text = Variable.customerCode,
            label: "Assign to",
            type: "AssignTo",
            value: Variable.customerCode,
            onSelection: (AssignToList? va) {
              setState(() {
                Variable.customerCode = va?.customerUserCode ?? "";
                // Variable.name=va?.name??"";
              });
              setState(() {
                context.read<AssignToCubit>().getItemListAssignTo();
              });
            },
            // onAddNew: (){},
            restricted: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          LargeTextField(text: "Remarks",
            controller: widget.remarks,
            readOnlyField: false,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          LargeTextField(
            text: "note", controller: widget.note, readOnlyField: false,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          // NormalTextField(text: "Warranty price",
          //   controller: ontap?TextEditingController(text: widget.warp.toString()):widget.warrantyPrice,
          //   readOnlyField: true,),
          NormalTextField(text: "Unit cost",
            controller: ontap?TextEditingController(text: widget.unitc.toString()):widget.unitCost,
            readOnlyField: true,),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //
            // SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(text: "Discount",
              controller: ontap?TextEditingController(text: widget.disc.toString()):widget.discount,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(text: "Excise tax",
              controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(text: "Taxable Amount",
              controller: ontap?TextEditingController(text: widget.taxaAmd.toString()):widget.taxableAmount,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(
              text: "Vat", controller: ontap?TextEditingController(text: widget.vatt.toString()):widget.vat, readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(text: "Selling price total",
              controller: ontap?TextEditingController(text: widget.sellP.toString()):widget.sellingPriceTotal,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextField(text: "Total price",
              controller: ontap?TextEditingController(text: widget.totalva.toString()):widget.totalPrice,
              readOnlyField: true,),
          ],
        ),
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
            NormalTextFieldTab(text: "Invoice Code",
              controller: widget.invoiceCode,
              readOnlyField: false,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            // DateForTextFieldTab(text: "Invoice date",
            //   controller: widget.onvoiceDate,
            //   // readOnlyField: false,
            //   format: DateFormat('yyyy-MM-dd'),
            //   onSaved: (newValue) {
            //     widget.onvoiceDate.text = newValue
            //         ?.toIso8601String()
            //         .split("T")[0] ??
            //         "";
            //   },
            //   enable: true,
            // ),
            NormalTextFieldTab(text: "Invoice date",controller: widget.onvoiceDate,readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Payment id",
              controller: widget.paymentId,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Payment status",
              controller: widget.paymentStatus,
              readOnlyField: true,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Payment method",
              controller: widget.paymentMethod,
              readOnlyField: false,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Customer Id",
              controller: widget.customerId,
              readOnlyField: false,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            // NormalTextFieldTab(text: "Warranty price",
            //   controller: widget.warrantyPrice,
            //   readOnlyField: false,),
            NormalTextFieldTab(text: "Trn Number",
              controller: widget.trnNumber,
              readOnlyField: false,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Order status",
              controller: widget.orderStatus,
              readOnlyField: false,),
            SizedBox(height: context.blockSizeVertical * 2.5,),
            NormalTextFieldTab(text: "Invoice status",
              controller: widget.invoiceStatus,
              readOnlyField: true,),
          ],
        ),
      ),

      Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SelectableDropDownpopUpTab(
            controller1: widget.assignTo..text = Variable.customerCode,
            label: "Assign to",
            type: "AssignTo",
            value: Variable.customerCode,
            onSelection: (AssignToList? va) {
              setState(() {
                Variable.customerCode = va?.customerUserCode ?? "";
                // Variable.name=va?.name??"";
              });
              setState(() {
                context.read<AssignToCubit>().getItemListAssignTo();
              });
            },
            // onAddNew: (){},
            restricted: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          LargeTextFieldTab(text: "Remarks",
            controller: widget.remarks,
            readOnlyField: true,),
          SizedBox(height: context.blockSizeVertical * 2.5,),
          LargeTextFieldTab(
            text: "note", controller: widget.note, readOnlyField: false,),
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
            text: "Vat", controller: ontap?TextEditingController(text: widget.vatt.toString()):widget.vat, readOnlyField: true,),
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

class ScrollTablesInvoice extends StatefulWidget {
  final ReadSalesInvoice? newData;
  final Function (List<InvoiceLinesCreate>)? changeTable;
  final Function (double value,double total,double sellPrice,double vattt,double exTax,double disco,double unitt)? taxaAmd;
  const ScrollTablesInvoice({Key? key,
    this.newData, this.changeTable, this.taxaAmd,

  }) : super(key: key);

  @override
  State<ScrollTablesInvoice> createState() => _ScrollTablesInvoiceState();
}
class _ScrollTablesInvoiceState extends State<ScrollTablesInvoice> {
  bool isSelected=false;
  bool isPress=true;
  List<TextEditingController> varrientId=[];
  List<TextEditingController> varrientInventoryId=[];
  List<TextEditingController> barCode=[];
  List<TextEditingController> salesOrderLineCode=[];
  List<TextEditingController> returnBasedOn=[];
  List<TextEditingController> returnTime=[];
  List<TextEditingController> isInvoiced=[];
  List<TextEditingController> salesUom=[];
  List<TextEditingController> discountType=[];
  List<TextEditingController> unitCost=[];
  List<TextEditingController> discount=[];
  List<TextEditingController> sellingPrice=[];
  List<TextEditingController> taxableAmount=[];
  List<TextEditingController> excessTax=[];
  List<TextEditingController> totalPrice=[];
  List<TextEditingController> vat=[];
  List<TextEditingController> isActive=[];
  List<TextEditingController> quandity=[];
  List<TextEditingController> warrentyPrice=[];

  List<double>VatFoc=[];

  double VatAmounts=0.0;
  double ActualGC=0.0;
  double VatWithFoc=0.0;
  void taxableAmountCalcutatingMethod(int Qty,double unitCst,double exTaxx,int disct,){
    VatAmounts = (((Qty*unitCst)+exTaxx)-disct);
  }
  void TotalpriceCal(double VatAmounts,double vatt,double waryPrice){
    ActualGC = ((VatAmounts+waryPrice)+((VatAmounts*vatt)/100));
  }
  void vatAmountWithFoc(double VatAmount,double foc,double unitCost){
    VatWithFoc = (VatAmount-(foc*unitCost));
  }
  List<bool> isInvoiceData=[];
  @override
  Widget build(BuildContext context) {
    if(widget.newData?.orderLineInvoice?.length!=null)
      for(var i=0;i<widget.newData!.orderLineInvoice!.length;i++) {
        isInvoiceData.add(
            widget.newData!.orderLineInvoice![i].isInvoiced ?? false);
      }

    if(isSelected==false){
      taxableAmount.clear();
      totalPrice.clear();
      discount.clear();
      excessTax.clear();
      vat.clear();
      warrentyPrice.clear();
    if (widget.newData?.orderLineInvoice != null ) {
      for (var i = 0; i < widget.newData!.orderLineInvoice!.length; i++) {
        varrientId.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].variantId.toString() ??
                ""));
        varrientInventoryId.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].variantInventoryId
                .toString() ?? ""));
        barCode.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].barcode.toString() ??
                ""));
        salesOrderLineCode.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].salesOrderLineCode
                .toString() ?? ""));
        isInvoiced.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].isInvoiced.toString() ??
                ""));
        salesUom.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].salesUom.toString() ??
                ""));
        unitCost.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].unitCost.toString() ??
                ""));
        discountType.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].discountType
                .toString() ?? ""));
        discount.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].discount.toString() ??
                ""));
        excessTax.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].excessTax.toString() ??
                ""));
        sellingPrice.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].sellingPrice
                .toString() ?? ""));
        taxableAmount.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].taxableAmount
                .toString() ?? ""));
        vat.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].vat.toString() ?? ""));
        quandity.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].quantity.toString() ??
                ""));
        // warrentyPrice.add(TextEditingController(
        //     text: widget.newData?.orderLineInvoice?[i].warrantyPrice
        //         .toString() ?? ""));
        totalPrice.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].totalPrice.toString() ??
                ""));
        isActive.add(TextEditingController(
            text: widget.newData?.orderLineInvoice?[i].isActive.toString() ??
                ""));
      }
    }
    }
    isSelected=false;
    ScrollController? scrollController = ScrollController();
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
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
                        SizedBox(width: context.blockSizeHorizontal * 1.3,),
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
                                  20: const FlexColumnWidth(3),
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
                                          'Inventory Id ',
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
                                          'Sales order line code',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Return based on ',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'return time',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'is invoiced',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Sales uom',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Quantity',
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

                                  if(widget.newData?.invoiceDatas==null)

                                    for (var i = 0; i < widget.newData!.orderLineInvoice!.length; i++)
                                      TableRow(
                                          children: [
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(
                                                    (i + 1).toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i].variantId
                                                    .toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i]
                                                    .variantInventoryId
                                                    .toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i].barcode
                                                    .toString()??"")),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i]
                                                    .salesOrderLineCode
                                                    .toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i].returnType
                                                    .toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(widget.newData!
                                                    .orderLineInvoice![i].returnTime
                                                    .toString())),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: CheckedBoxs(color:Color(0xff3E4F5B) ,
                                                  valueChanger:  isInvoiceData[i],
                                                  onSelection: (bool? value ) {
                                                    setState(() {

                                                      isInvoiceData[i]=!isInvoiceData[i];
                                                    });
                                                  },

                                                ),
                                            ),

                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .salesUom
                                                  .toString())
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .quantity
                                                  .toString())
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .unitCost
                                                  .toString())
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child:textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .excessTax
                                                  .toString())
                                            ),

                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .discountType
                                                  .toString())
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .discount
                                                  .toString())
                                            ),

                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: textPadding(
                                                    taxableAmount[i].text)
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .vat
                                                  .toString())
                                            ),
                                            TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .orderLineInvoice![i]
                                                  .sellingPrice
                                                  .toString())
                                            ),
                                            // TableCell(
                                            //   verticalAlignment: TableCellVerticalAlignment
                                            //       .middle,
                                            //   child: textPadding(widget.newData!
                                            //       .orderLineInvoice![i]
                                            //       .warrantyPrice
                                            //       .toString())
                                            // ),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,

                                                child: textPadding(
                                                    totalPrice[i].text)
                                            ),

                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: CheckedBoxTable(
                                                  valueChanger: widget.newData
                                                      ?.orderLineInvoice![i]
                                                      .isActive ?? false,
                                                  onSelection: (bool? value) {},
                                                )
                                            ),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                child: TextButton(
                                                  child:Container(
                                                      height: context.blockSizeVertical*4,
                                                      // width: context.blockSizeHorizontal*1,
                                                      child: Center(child: Text("Set"))),

                                                  onPressed: () {
                                                    ontap = true;
                                                    isSelected=true;
                                                    double taxaAmd = 0;
                                                    double total = 0;
                                                    double sell = 0;
                                                    double exes = 0;
                                                    double unit = 0;
                                                    double vatt = 0;
                                                    double dis = 0;
                                                    double warP=0;

                                                    for (var i = 0; i <
                                                        widget.newData!
                                                            .orderLineInvoice!
                                                            .length; i++) {
                                                      if(isInvoiceData[i]==true){
                                                      taxaAmd += double.tryParse(
                                                          taxableAmount[i].text) ??
                                                          0;
                                                      total += double.tryParse(
                                                          totalPrice[i].text) ?? 0;
                                                      dis += double.tryParse(
                                                          discount[i].text) ?? 0;
                                                      sell += double.tryParse(
                                                          sellingPrice[i].text) ??
                                                          0;
                                                      vatt += double.tryParse(
                                                          vat[i].text) ?? 0;
                                                      unit += double.tryParse(
                                                          unitCost[i].text) ?? 0;
                                                      exes += double.tryParse(
                                                          excessTax[i].text) ?? 0;
                                                      // warP += double.tryParse(
                                                      //     warrentyPrice[i].text) ?? 0;
                                                    }}
                                                    print("ttt${taxaAmd}");

                                                    if (widget.newData
                                                        ?.orderLineInvoice
                                                        ?.length != null)
                                                      // ignore: curly_braces_in_flow_control_structures
                                                      if(isPress) {
                                                        for (var i = 0; i <
                                                            widget.newData!
                                                                .orderLineInvoice!
                                                                .length; i++) {
                                                          invoiceLinescreate.add(
                                                              InvoiceLinesCreate(
                                                                salesOrderLineCode: widget.newData?.orderLineInvoice![i].salesOrderLineCode,
                                                                // warrantyPrice: double.tryParse(warrentyPrice[i].text),
                                                                taxableAmount: double.tryParse(taxableAmount[i].text),
                                                                totalPrice: double.tryParse(totalPrice[i].text),
                                                                discount: double.tryParse(discount[i].text),
                                                                unitCost: double.tryParse(unitCost[i].text),
                                                                excessTax: double.tryParse(excessTax[i].text),
                                                                vat: double.tryParse(vat[i].text),
                                                                quantity: int.tryParse(quandity[i].text),
                                                                isActive: widget.newData!.orderLineInvoice![i].isActive,
                                                                sellingPrice: double.tryParse(sellingPrice[i].text),
                                                                isInvoiced: isInvoiceData[i],

                                                              ));
                                                        }
                                                        setState(() {
                                                          isPress=false;
                                                        });
                                                      }
                                                    widget.changeTable!(invoiceLinescreate);
                                                    widget.taxaAmd!(taxaAmd, total, sell,vatt, exes, dis, unit);
                                                    print("ttt$invoiceLinescreate");
                                                  },
                                                )
                                            )
                                          ]
                                      ),

                                  if(widget.newData?.invoiceDatas!=null)
                                  for (var i = 0; i < widget.newData!.invoiceDatas!.invoiceLinesRead!.length; i++)
                                    TableRow(
                                        children: [
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(
                                                  (i + 1).toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].variantId.toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].variantInventoryId.toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].barcode
                                                  .toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!
                                                  .invoiceDatas!.invoiceLinesRead![i]
                                                  .salesOrderLineCode
                                                  .toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].returnType.toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].returnTime.toString())),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: CheckedBoxs(color:Color(0xff3E4F5B) ,
                                                valueChanger:  isInvoiceData[i],
                                                onSelection: (bool? value ) {
                                                  setState(() {

                                                    isInvoiceData[i]=!isInvoiceData[i];
                                                  });
                                                },

                                              ),
                                          ),

                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].salesUom.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].totalQty.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].unitCost.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].excessTax.toString())
                                          ),

                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].discountType.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].discount.toString())
                                          ),

                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: textPadding(
                                                  widget.newData!.invoiceDatas!.invoiceLinesRead![i].taxableAmount.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].vat.toString())
                                          ),
                                          TableCell(
                                            verticalAlignment: TableCellVerticalAlignment
                                                .middle,
                                            child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].sellingPrice.toString())
                                          ),
                                          // TableCell(
                                          //   verticalAlignment: TableCellVerticalAlignment
                                          //       .middle,
                                          //   child: textPadding(widget.newData!.invoiceDatas!.invoiceLinesRead![i].warrantyPrice.toString())
                                          // ),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,

                                              child: textPadding(
                                                  widget.newData!.invoiceDatas!.invoiceLinesRead![i].totalPrice.toString())
                                          ),

                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: CheckedBoxTable(
                                                valueChanger: widget.newData!.invoiceDatas!.invoiceLinesRead![i].isActive == null
                                                    ? false
                                                    : widget.newData!.invoiceDatas!.invoiceLinesRead![i].isActive,
                                                onSelection: (bool? value) {},
                                              )
                                          ),
                                          TableCell(
                                              verticalAlignment: TableCellVerticalAlignment
                                                  .middle,
                                              child: TextButton(
                                                child:Container(
                                                    height: context.blockSizeVertical*4,
                                                    // width: context.blockSizeHorizontal*1,
                                                    child: Center(child: Text("Set"))),

                                                onPressed: () {
                                                  ontap = true;
                                                  isSelected=true;
                                                  double taxaAmd = 0;
                                                  double total = 0;
                                                  double sell = 0;
                                                  double exes = 0;
                                                  double unit = 0;
                                                  double vatt = 0;
                                                  double dis = 0;
                                                  double warP = 0;

                                                  for (var i = 0; i <
                                                      widget.newData!
                                                          .orderLineInvoice!
                                                          .length; i++) {
                                                    taxaAmd += double.tryParse(
                                                        taxableAmount[i].text) ??
                                                        0;
                                                    total += double.tryParse(
                                                        totalPrice[i].text) ?? 0;
                                                    dis += double.tryParse(
                                                        discount[i].text) ?? 0;
                                                    sell += double.tryParse(
                                                        sellingPrice[i].text) ??
                                                        0;
                                                    vatt += double.tryParse(
                                                        vat[i].text) ?? 0;
                                                    unit += double.tryParse(
                                                        unitCost[i].text) ?? 0;
                                                    exes += double.tryParse(
                                                        excessTax[i].text) ?? 0;
                                                    // warP+= double.tryParse(
                                                    //     warrentyPrice[i].text) ?? 0;
                                                  }
                                                  print("ttt${taxaAmd}");

                                                  if (widget.newData?.orderLineInvoice?.length != null)

                                                    // ignore: curly_braces_in_flow_control_structures
                                                    if(isPress){
                                                    for (var i = 0; i <
                                                        widget.newData!
                                                            .orderLineInvoice!
                                                            .length; i++) {
                                                      invoiceLinescreate.add(
                                                          InvoiceLinesCreate(
                                                            salesOrderLineCode: widget
                                                                .newData
                                                                ?.orderLineInvoice![i]
                                                                .salesOrderLineCode,
                                                            // warrantyPrice: double
                                                            //     .tryParse(
                                                            //     warrentyPrice[i]
                                                            //         .text),
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
                                                            quantity: int
                                                                .tryParse(
                                                                quandity[i].text),
                                                            isActive: widget
                                                                .newData!
                                                                .orderLineInvoice![i]
                                                                .isActive,
                                                            sellingPrice: double
                                                                .tryParse(
                                                                sellingPrice[i]
                                                                    .text),
                                                            isInvoiced: isInvoiceData[i],
                                                            // widget.newData!.orderLineInvoice![i].isInvoiced,


                                                          ));
                                                    }
                                                    setState(() {
                                                      isPress=false;
                                                    });
                                                    }

                                                  widget.changeTable!(
                                                      invoiceLinescreate);
                                                  widget.taxaAmd!(
                                                      taxaAmd,
                                                      total,
                                                      sell,
                                                      vatt,
                                                      exes,
                                                      dis,
                                                      unit,
                                                  // warP
                                                  );
                                                  print("ttt$invoiceLinescreate");
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
class BottomHeaderInvoice extends StatefulWidget {
  final VoidCallback? onTap;

  const BottomHeaderInvoice({Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<BottomHeaderInvoice> createState() => _BottomHeaderInvoiceState();
}
class _BottomHeaderInvoiceState extends State<BottomHeaderInvoice> {

  @override
  Widget build(BuildContext context) {
    return Container(height: context.blockSizeVertical * 8,
      color: const Color(0xff687892),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          // const TextOnlyButton(text: "CLEAR", color1: 0xffF4F4F4, color2: 0xff3E4F5B,),
          // SizedBox(width: context.blockSizeHorizontal * 1,),
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