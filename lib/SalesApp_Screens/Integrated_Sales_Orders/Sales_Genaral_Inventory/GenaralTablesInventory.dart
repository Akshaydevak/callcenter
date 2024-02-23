import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import 'package:salesapp/Widgets/ItemCard.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/custom_table/costumtable.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../inventery_Cubit/Read_Sales_Order_Inventory/read_sales_order_inventory_cubit.dart';




class TopHeaderGenaralInventory extends StatelessWidget {
  final VoidCallback? onTap;
  const TopHeaderGenaralInventory({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF),),
      height: context.blockSizeVertical * 8,
      child: Row(
        children: [
          // SizedBox(width: context.blockSizeHorizontal * 3.5,),
          //  TextButtonLarge(text: "New request", images: "asset_images/plus.png",),
          Spacer(),
          //  ImageButtonSmall(images: "asset_images/print.png"),
          // SizedBox(width: context.blockSizeHorizontal * .5,),
           TextButtonLarge2(images: "asset_images/eye.png", text: "Preview",
           onTap: onTap,),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           TextButtonLarge2(images: "asset_images/share.png", text: "Share"),
          SizedBox(width: context.blockSizeHorizontal * .5,),
           ImageButtonSmall(images: "asset_images/arrow2.png"),
          SizedBox(width: context.blockSizeHorizontal * 2.5,),

        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
class TablePartGenaralInventory extends StatefulWidget {
  final List<OrderLines>? totalData;
  final double taxaAmd;
  final double totalva;
  final double disc;
  final double vatt;
  final double sellP;
  final double unitc;
  final double exss;

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



  const TablePartGenaralInventory({Key? key,
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

    this.totalData, required this.totalva, required this.taxaAmd, required this.disc, required this.vatt, required this.sellP, required this.unitc, required this.exss,


  }) : super(key: key);

  @override
  State<TablePartGenaralInventory> createState() => _TablePartGenaralInventoryState();
}
bool ontap=false;
class _TablePartGenaralInventoryState extends State<TablePartGenaralInventory> {
  ReadSalesGenaral? readData;
  List<OrderLines> table = [];

  @override
  Widget build(BuildContext context) {


        return BlocConsumer<ReadSalesOrderInventoryCubit, ReadSalesOrderInventoryState>(
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
                   widget.orderCode.text=data.salesOrderCode??"";
                   widget.orderStatus.text=data.orderStatus??"";
                   widget.orderDate.text=data.orderedDate??"";
                   widget.orderMode.text=data.orderMode??"";
                   widget.warrantyPrice.text=data.warrantyPrice.toString()??"";
                   widget.sellingPriceTotal.text=data.sellingPriceTotal.toString()??"";
                   widget.totalPrice.text=data.totalPrice.toString()??"";
                   widget.vat.text=data.vat.toString()??"";
                   widget.trnNumber.text=data.trnNumber.toString()??"";
                   widget.paymentId.text=data.paymentId??"";
                   widget.paymentStatus.text=data.paymentStatus??"";
                   widget.customerId.text=data.customerId??"";
                   widget.orderStatus.text=data.orderStatus??"";
                   widget.invoiceStatus.text=data.invoiceStatus??"";
                   widget.note.text=data.note??"";
                   widget.discount.text=data.discount.toString()??"";
                   widget.remarks.text=data.remarks??"";
                   widget.unitCost.text=data.unitCost.toString()??"";
                   widget.taxableAmount.text=data.taxableAmount.toString()??"";
                   widget.excessTax.text=data.excessTax.toString()??"";
                   widget.vat.text=data.vat.toString()??"";


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

              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextField(text: "Order type",controller: widget.orderType,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Order mode",controller: widget.orderMode,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Order code",controller: widget.orderCode,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  // DateForTextField(text: "Order date",
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
                  NormalTextField(text: "Order date",controller: widget.orderDate,readOnlyField: true,),
                  // SizedBox(height: context.blockSizeVertical * 2.5,),
                  // NormalTextField(text: "Inventory id",controller: widget.inventoryId,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Customer Id",controller: widget.customerId,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Trn Number",controller: widget.trnNumber,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Shipping Address id",controller: widget.shippingAddressId,readOnlyField: true,),

                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextField(text: "Billing address id",controller: widget.billingAddressId,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  // NormalTextField(text: "Sales quotes",controller: widget.salesQuotes,readOnlyField: false,),
                  // SizedBox(height: context.blockSizeVertical * 2.5,),
                  // NormalTextField(text: "Payment id",controller: widget.paymentId,readOnlyField: true,),
                  // SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Payment Status",controller: widget.paymentStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Order status",controller: widget.orderStatus,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  LargeTextField(text: "Note",controller: widget.note,readOnlyField: false,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  LargeTextField(text: "Remarks",controller: widget.remarks,readOnlyField: false,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Invoice status",controller: widget.invoiceStatus,readOnlyField: true),

                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextField(text: "Unit cost",controller: ontap?TextEditingController(text: widget.unitc.toString()):widget.unitCost,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Discount",controller: ontap?TextEditingController(text: widget.disc.toString()):widget.discount,readOnlyField: true,),
                  SizedBox(height: context.blockSizeVertical * 2.5,),
                  NormalTextField(text: "Excess tax",controller: ontap?TextEditingController(text: widget.exss.toString()):widget.excessTax,readOnlyField: true,),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NormalTextFieldTab(text: "Order type",controller: widget.orderType,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Order mode",controller: widget.orderMode,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Order code",controller: widget.orderCode,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              // DateForTextFieldTab(text: "Order date",
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
              NormalTextFieldTab(text: "Order date",controller: widget.orderDate,readOnlyField: true,),
              // SizedBox(height: context.blockSizeVertical * 2.5,),
              // NormalTextFieldTab(text: "Inventory id",controller: widget.paymentStatus,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Customer Id",controller: widget.customerId,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Trn Number",controller: widget.trnNumber,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Shipping Address id",controller: widget.shippingAddressId,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Billing address id",controller: widget.billingAddressId,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              // NormalTextFieldTab(text: "Sales quotes",controller: widget.salesQuotes,readOnlyField: false,),
              // SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Payment id",controller: widget.paymentId,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Order status",controller: widget.orderStatus,readOnlyField: true,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              LargeTextFieldTab(text: "Note",controller: widget.note,readOnlyField: false,),
              // NormalTextFieldTab(text: "Payment Status",controller: widget.paymentStatus,readOnlyField: true,),
            ],
          ),

          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              LargeTextFieldTab(text: "Remarks",controller: widget.remarks,readOnlyField: false,),
              SizedBox(height: context.blockSizeVertical * 2.5,),
              NormalTextFieldTab(text: "Invoice status",controller: widget.invoiceStatus,readOnlyField: true),
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

class ScrollTablesGenaralInventory extends StatefulWidget {
  final ReadSalesGenaral? newData;
  final Function (List<OrderLines>)? changeTable;
  final Function (double value,double total,double sellPrice,double vattt,double exTax,double disco,double unitt)? taxaAmd;


  const ScrollTablesGenaralInventory({Key? key,
    this.newData,
    this.changeTable,
    this.taxaAmd,

  }) : super(key: key);

  @override
  State<ScrollTablesGenaralInventory> createState() => _ScrollTablesGenaralInventoryState();
}
List<OrderLines> orderTable = [];
class _ScrollTablesGenaralInventoryState extends State<ScrollTablesGenaralInventory> {
  bool isSelected=false;
  bool isPress=false;
  List<bool> isActiveData=[];

  List<TextEditingController> varrientId=[];
  List<TextEditingController> variantInventoryId=[];
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
  List<bool> isActive=[];
  List<TextEditingController> quandity=[];
  List<TextEditingController> warrentyPrice=[];
  List<int> list = [];
  List<double>VatFoc=[];

  double VatAmounts=0.0;
  double ActualGC=0.0;
  double VatWithFoc=0.0;

  void taxableAmountCalcutatingMethod(int Qty,double unitCst,double exTaxx,int disct,String? type){
    if(type=="price"){
      VatAmounts = (((Qty*unitCst)+exTaxx)-disct);
    }else if(type=="percentage"){
      double total = 0;
      total = (Qty * unitCst) + exTaxx;
      VatAmounts = (total - ((total * disct) / 100));
    }

  }
  void TotalpriceCal(double VatAmounts,double vatt,double waryPrice){

    ActualGC = ((VatAmounts+waryPrice)+((VatAmounts*vatt)/100));
  }



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
      for (var i = 0; i < widget.newData!.orderLines!.length; i++) {
        varrientId.add(TextEditingController(text: widget.newData?.orderLines?[i].variantId.toString()??""));
        varrientName.add(TextEditingController(text: widget.newData?.orderLines?[i].variantName.toString()??""));
        variantInventoryId.add(TextEditingController(text: widget.newData?.orderLines?[i].variantInventoryId));
        barCode.add(TextEditingController(text: widget.newData?.orderLines?[i].barcode.toString()??""));
        returnBasedOn.add(TextEditingController(text: widget.newData?.orderLines?[i].returnType.toString()??""));
        returnTime.add(TextEditingController(text: widget.newData?.orderLines?[i].returnTime.toString()??""));
        isInvoiced.add(TextEditingController(text: widget.newData?.orderLines?[i].isInvoiced.toString()??""));
        warranty.add(TextEditingController(text: widget.newData?.orderLines?[i].warrantyId.toString()??""));
        salesUom.add(TextEditingController(text: widget.newData?.orderLines?[i].salesUom.toString()??""));
        unitCost.add(TextEditingController(text: widget.newData?.orderLines?[i].unitCost.toString()??""));
        discountType.add(TextEditingController(text: widget.newData?.orderLines?[i].discountType.toString()??""));
        discount.add(TextEditingController(text: widget.newData?.orderLines?[i].discount.toString()??""));
        excessTax.add(TextEditingController(text: widget.newData?.orderLines?[i].excessTax.toString()??""));
        soldPrice.add(TextEditingController(text: widget.newData?.orderLines?[i].sellingPrice.toString()??""));
        taxableAmount.add(TextEditingController(text: widget.newData?.orderLines?[i].taxableAmount.toString()??""));
        vat.add(TextEditingController(text: widget.newData?.orderLines?[i].vat.toString()??""));
        quandity.add(TextEditingController(text: widget.newData?.orderLines?[i].quantity.toString()??""));
        // warrentyPrice.add(TextEditingController(text: widget.newData?.orderLines?[i].warrantyPrice.toString()??""));
        totalPrice.add(TextEditingController(text: widget.newData?.orderLines?[i].totalPrice.toString()??""));
        isActive.add(widget.newData?.orderLines?[i].isActive??false);
      }}
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
              // color: Colors.yellow,
              alignment: Alignment.topRight,
              height: context.blockSizeVertical * 0.25,
              padding: EdgeInsets.only(left: 40,right: 15),
              child: ListView(
                  controller: scrollController,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
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
                                  3: const FlexColumnWidth(5),
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
                                  21: const FlexColumnWidth(3),

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
                                          'Variant name ',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Inventory Id',
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
                                          'Return based on',
                                          // padding:
                                          // const EdgeInsets.all(15),
                                          height: 50,
                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Return time ',
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
                                          'warranty',
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
                                          'Excess Tax',
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

                                  if(widget.newData?.orderLines!=null)

                                    for (var i = 0; i < widget.newData!.orderLines!.length; i++)
                                      TableRow(
                                          children: [
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding((i+1).toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].variantId.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].variantName.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].variantInventoryId.toString())),
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
                                                child: textPadding(widget.newData!.orderLines![i].warrantyId.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].salesUom.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(widget.newData!.orderLines![i].quantity.toString())),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(widget.newData!.orderLines![i].unitCost.toString())),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                controller: excessTax[i],
                                                onChanged: (sh){
                                                  isSelected=true;

                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(widget.newData!.orderLines![i].quantity.toString())??0,
                                                      double.tryParse(widget.newData!.orderLines![i].unitCost.toString())??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                    discountType[i].text
                                                  );
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i]=TextEditingController(text: VatAmounts.toString());
                                                    totalPrice[i]=TextEditingController(text: ActualGC.toString());

                                                  });

                                                },
                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(discountType[i].text??"")),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child:  UnderLinedInput(
                                                controller: discount[i],
                                                onChanged: (sh){
                                                  isSelected=true;

                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(widget.newData!.orderLines![i].quantity.toString())??0,
                                                      double.tryParse(widget.newData!.orderLines![i].unitCost.toString())??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                      discountType[i].text);
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      // double.tryParse(warrentyPrice[i].text)??
                                                          0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i]=TextEditingController(text: VatAmounts.toString());
                                                    totalPrice[i]=TextEditingController(text: ActualGC.toString());
                                                    print("VATA$VatAmounts");
                                                  });

                                                },

                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(taxableAmount[i].text)
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: UnderLinedInput(
                                                controller: vat[i],
                                                onChanged: (sh){
                                                  isSelected=true;


                                                  taxableAmountCalcutatingMethod(
                                                      int.tryParse(widget.newData!.orderLines![i].quantity.toString())??0,
                                                      double.tryParse(widget.newData!.orderLines![i].unitCost.toString())??0,
                                                      double.tryParse(excessTax[i].text)??0,
                                                      int.tryParse(discount[i].text)??0,
                                                      discountType[i].text);
                                                  TotalpriceCal(VatAmounts,
                                                      double.tryParse(vat[i].text)??0,
                                                      0
                                                  );
                                                  setState(() {
                                                    taxableAmount[i]=TextEditingController(text: VatAmounts.toString());
                                                    totalPrice[i]=TextEditingController(text: ActualGC.toString());
                                                  });
                                                },

                                              ),
                                            ),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                              child: textPadding(soldPrice[i].text)
                                            ),
                                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            //   child: UnderLinedInput(
                                            //     controller: warrentyPrice[i],
                                            //     onChanged: (sh){
                                            //       isSelected=true;
                                            //
                                            //
                                            //       taxableAmountCalcutatingMethod(
                                            //           int.tryParse(widget.newData!.orderLines![i].quantity.toString())??0,
                                            //           double.tryParse(widget.newData!.orderLines![i].unitCost.toString())??0,
                                            //           double.tryParse(excessTax[i].text)??0,
                                            //           int.tryParse(discount[i].text)??0,
                                            //           discountType[i].text);
                                            //       TotalpriceCal(VatAmounts,
                                            //           double.tryParse(vat[i].text)??0,
                                            //           double.tryParse(warrentyPrice[i].text)??0
                                            //       );
                                            //       setState(() {
                                            //         taxableAmount[i]=TextEditingController(text: VatAmounts.toString());
                                            //         totalPrice[i]=TextEditingController(text: ActualGC.toString());
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
                                                  valueChanger: widget.newData?.orderLines![i].isActive?? false,
                                                  onSelection: (bool? value) {  },
                                                )
                                                // CheckedBoxs(color:Color(0xff3E4F5B) ,
                                                //   valueChanger:  isActiveData[i],
                                                //   onSelection: (bool? value ) {
                                                //     setState(() {
                                                //
                                                //       isActiveData[i]=!isActiveData[i];
                                                //       // orderTable.removeAt(isActiveData[i]=false);
                                                //     });
                                                //   },
                                                //
                                                // ),
                                            ),
                                            TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: TextButton(
                                                  child: Container(
                                                    height: context.blockSizeVertical*4,
                                                      // width: context.blockSizeHorizontal*1,
                                                      child: Center(child: Text("Set"))),


                                                  onPressed: ()async{
                                                    ontap=true;
                                                    isSelected=true;
                                                    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                                    String? invId=sharedPreferences.getString('invId');
                                                    double taxaAmd=0;
                                                    double total=0;
                                                    double sell=0;
                                                    double exes=0;
                                                    double unit=0;
                                                    double vatt=0;
                                                    double dis=0;


                                                    for(var i=0;i<widget.newData!.orderLines!.length;i++) {
                                                      if(isActiveData[i]==true){

                                                      taxaAmd += double.tryParse(taxableAmount[i].text)??0;
                                                      total += double.tryParse(totalPrice[i].text)??0;
                                                      dis += double.tryParse(discount[i].text)??0;
                                                      sell += double.tryParse(soldPrice[i].text)??0;
                                                      vatt += double.tryParse(vat[i].text)??0;
                                                      unit += double.tryParse(unitCost[i].text)??0;
                                                      exes += double.tryParse(excessTax[i].text)??0;
                                                    }}
                                                    print("ttt${taxaAmd}");

                                                    if(widget.newData?.orderLines?.length!=null)

                                                      // ignore: curly_braces_in_flow_control_structures
                                                      for(var i=0;i<widget.newData!.orderLines!.length;i++) {

                                                        orderTable.add(OrderLines(
                                                          id: widget.newData?.orderLines![i].id,
                                                          invId: invId,
                                                          // warrantyPrice: double.tryParse(warrentyPrice[i].text),
                                                          taxableAmount:  double.tryParse(taxableAmount[i].text),
                                                          totalPrice: double.tryParse(totalPrice[i].text),
                                                          variantName: varrientName[i].text,
                                                          variantId: varrientId[i].text,
                                                          discount: double.tryParse(discount[i].text),
                                                          unitCost: double.tryParse(unitCost[i].text),
                                                          excessTax: double.tryParse(excessTax[i].text),
                                                          vat: double.tryParse(vat[i].text),
                                                          quantity: int.tryParse(quandity[i].text),
                                                          isActive: isActiveData[i],
                                                          barcode: barCode[i].text,
                                                          discountType: discountType[i].text,
                                                          salesUom: salesUom[i].text,
                                                          sellingPrice: double.tryParse(soldPrice[i].text),
                                                          isInvoiced: widget.newData!.orderLines![i].isInvoiced,
                                                          returnTime: int.tryParse(returnTime[i].text),
                                                          returnType:returnBasedOn[i].text

                                                        ));
                                                      }

                                                    widget.changeTable!(orderTable);
                                                      widget.taxaAmd!(taxaAmd,total, sell, vatt, exes, dis, unit);
                                                    print("ttt$orderTable");


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
class BottomHeaderGenaralInventory extends StatefulWidget {
  final VoidCallback? onTap;

  const BottomHeaderGenaralInventory({Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<BottomHeaderGenaralInventory> createState() => _BottomHeaderGenaralInventoryState();
}

class _BottomHeaderGenaralInventoryState extends State<BottomHeaderGenaralInventory> {

  @override
  Widget build(BuildContext context) {
    return Container(height: context.blockSizeVertical * 8,
      color: const Color(0xff687892),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          // TextOnlyButton(text: "CLEAR", color1: 0xffF4F4F4, color2: 0xff3E4F5B,),
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



