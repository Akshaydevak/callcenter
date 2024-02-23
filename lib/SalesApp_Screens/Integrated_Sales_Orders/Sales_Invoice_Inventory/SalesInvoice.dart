import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Create_sales_invoice/create_sales_invoice_cubit.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/Models/Read_sales_invoice/Read_Sales_Invoice.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Read_Sales_Invoice_Inventory/read_sales_invoice_inventory_cubit.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Sales_Order_Sildelist_Cubit/inventory_sales_order_list_cubit.dart';
import 'package:salesapp/salesapp_Screens/Print_Screen/Pdf_Sales_Invoice.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SalesGenaralTables.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SideListSalesGenaral.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../utils/variables.dart';
import '../Sales_Genaral_Inventory/SideListGenaralInventory.dart';
import 'SalesInvoiceTables.dart';


class SalesInvoiceInventory extends StatefulWidget {


  const SalesInvoiceInventory({Key? key,

  }) : super(key: key);

  @override
  State<SalesInvoiceInventory> createState() => _SalesInvoiceInventoryState();
}
List<InvoiceLinesCreate>invoiceLinescreate = [];
class _SalesInvoiceInventoryState extends State<SalesInvoiceInventory> {
  List<InvoiceLinesCreate> newTable=[];
  void chaneTable(List<InvoiceLinesCreate> val){
    newTable=val;
    setState((){});
    print("uuu$newTable");
  }
  double taxaAmd=0;
  double tota=0;
  double exces=0;
  double uni=0;
  double vatt=0;
  double sellp=0;
  double disc=0;
  double warP=0;
  void calCulation(double taxa,double tot,double sellPrice,double vattt,double exTax,double disco,double unitt){
    taxaAmd=taxa;
    tota=tot;
    uni=unitt;
    disc=disco;
    vatt=vattt;
    sellp=sellPrice;
    exces=exTax;
    // warP=waraa;
    setState((){});
    print("uuu$taxaAmd");
  }
  ReadSalesInvoice? readData;
  List<OrderLineInvoice> result = [];

  TextEditingController invoiceCode = TextEditingController();
  TextEditingController invoiceDate = TextEditingController();
  TextEditingController paymentId = TextEditingController();
  TextEditingController paymentStatus = TextEditingController();
  TextEditingController paymentMethod = TextEditingController();
  TextEditingController customerId = TextEditingController();
  TextEditingController warrantyPrice = TextEditingController();
  TextEditingController trnNumber = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController invoiceStatus = TextEditingController();
  TextEditingController assignTo = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController unitCost = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController excessTax = TextEditingController();
  TextEditingController taxableAmount = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController sellingPriceTotal = TextEditingController();
  TextEditingController totalPrice = TextEditingController();

  List<SalesSidelist> idResult = [];

  int? receivingId;

  String? vendorIdd;
  String? vTrnNumber;
  String? vAddress;
  String? vMailId;
  int? listId = 0;
  bool select = false;
@override
  void initState() {
    ontap=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [

        BlocProvider(create: (context) => ReadSalesInvoiceInventoryCubit()..getReadInvoiceInventory(Variable.verticalid!),),

      ],
      child: BlocConsumer<ReadSalesInvoiceInventoryCubit, ReadSalesInvoiceInventoryState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error..");
              },
              success: (data) {
                setState(() {
                  readData = data;
                  data.orderLineInvoice != null ?

                  result = data.orderLineInvoice ?? [] : result = [];

                });
              }
          );
        },
        builder: (context, state) {
          return BlocConsumer<InventorySalesOrderListCubit, InventorySalesOrderListState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (list) {
                          setState(() {});

                          idResult = list.data;
                          setState(() {
                            if (idResult.isNotEmpty) {
                              listId = result[0].id;
                              Variable.verticalid = result[0].id;
                              print("Variable.ak${Variable.verticalid}");
                            }
                          });
                          context.read<ReadSalesInvoiceInventoryCubit>().getReadInvoiceInventory(listId!);
                        },
                      );
                    },
                    builder: (context, state) {
                      return Scaffold(
                        backgroundColor: Color(0xffF4F7FA),
                        body:
                        Column(
                          children: [
                            Container(height: context.blockSizeVertical * 84,
                              color: Color(0xffE1E7ED),
                              child: Row(
                                children: [
                                  SizedBox(width: context.blockSizeHorizontal * 1.25,),
                                  const SalesSidelistInventory(),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SingleChildScrollView(
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                                        width: context.blockSizeHorizontal * 76,
                                        child:
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            StickyHeader(
                                              content: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: Text("Sales Invoice",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1.1,fontWeight: FontWeight.w500),),
                                                  ),
                                                  SizedBox(height: context.blockSizeVertical * 4),
                                                  TablePartInvoiceInventory(
                                                   warp: warP,
                                                   taxaAmd: taxaAmd,
                                                   vatt: vatt,
                                                   unitc: uni,
                                                   sellP: sellp,
                                                   exss: exces,
                                                   disc: disc,
                                                   totalva: tota,
                                                   sellingPriceTotal: sellingPriceTotal,
                                                    paymentId: paymentId,
                                                    customerId: customerId,
                                                    paymentMethod: paymentMethod,
                                                    invoiceCode: invoiceCode,
                                                    assignTo: assignTo,
                                                    onvoiceDate: invoiceDate,
                                                    taxableAmount: taxableAmount,
                                                    totalPrice: totalPrice,
                                                    trnNumber: trnNumber,
                                                    remarks: remarks,
                                                    vat: vat,
                                                    excessTax: excessTax,
                                                    unitCost: unitCost,
                                                    discount: discount,
                                                    note: note,
                                                    invoiceStatus: invoiceStatus,
                                                    orderStatus: orderStatus,
                                                    paymentStatus: paymentStatus,
                                                    warrantyPrice: warrantyPrice,
                                                  ),
                                                  SizedBox(
                                                    height: context.blockSizeVertical * 4,),

                                                  ScrollTablesInvoiceInventory(
                                                    taxaAmd: calCulation,
                                                    changeTable: chaneTable,
                                                    newData: readData,
                                                    // changeTable: chaneTable,

                                                  ),
                                                  SizedBox(
                                                    height: context.blockSizeVertical * 4,),
                                                ],
                                              ),
                                              header:  TopHeaderInvoiceInventory(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) =>
                                                        PrintScreenInvoice(
                                                          taxableAmount: double.tryParse(taxableAmount.text) ,
                                                          note: note.text,
                                                          select: select,
                                                          vendorCode:vendorIdd.toString(),
                                                          orderCode:invoiceCode.text ,
                                                          orderDate: invoiceDate.text,
                                                          table:result,
                                                          vat: double.tryParse( vat.text),
                                                          totalPrice:double.tryParse( totalPrice.text),
                                                          discount:double.tryParse( discount.text) ,
                                                          unitCost:double.tryParse( unitCost.text) ,
                                                          excisetax:double.tryParse( excessTax.text) ,
                                                          remarks: remarks.text ,

                                                        )),
                                                  );
                                                },
                                              ),

                                            ),
                                            SizedBox(
                                              height: context.blockSizeVertical * 2,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(height: context.blockSizeVertical*4,),
                            SizedBox(
                                child: BottomHeaderInvoiceInventory(
                                    onTap: () {


                                    }
                                ))
                          ],
                        ),

                      );
                    },
                  );
        },
      ),
    );
  }
}
