import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Genaral_Sidelist_cubit/genaral_sidelist_cubit.dart';
import 'package:salesapp/Cubit/Patch_Sales_Genaral/patch_sales_genaral_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';
import 'package:salesapp/Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Sales_Order_Sildelist_Cubit/inventory_sales_order_list_cubit.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Sales_Return_Sidelist/return_sidelist_cubit.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SideListSalesGenaral.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../utils/variables.dart';
import '../../Print_Screen/Pdf_Sales_Genaral.dart';
import '../../Print_Screen/Pdf_Sales_Return.dart';
import '../inventery_Cubit/Read_Return_Cubit/read_return_inventory_cubit.dart';
import '../inventery_Cubit/Read_Sales_Order_Inventory/read_sales_order_inventory_cubit.dart';
import 'ReturnTablesInventory.dart';
import 'SidelistReturnInventory.dart';


class SalesReturnInventory extends StatefulWidget {


  const SalesReturnInventory({Key? key,

  }) : super(key: key);

  @override
  State<SalesReturnInventory> createState() => _SalesReturnInventoryState();
}

class _SalesReturnInventoryState extends State<SalesReturnInventory> {
  List<OrderLines> newTable=[];
  void chaneTable(List<OrderLines> val){
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
  void calCulation(double taxa,double tot,double sellPrice,double vattt,double exTax,double disco,double unitt){
    taxaAmd=taxa;
    tota=tot;
    uni=unitt;
    disc=disco;
    vatt=vattt;
    sellp=sellPrice;
    exces=exTax;
    setState((){});
    print("uuu$taxaAmd");
  }
  ReadSalesReturn? readData;
  List<OrderLinesReturn> result = [];
  TextEditingController orderType = TextEditingController();
  TextEditingController orderMode = TextEditingController();
  TextEditingController orderCode = TextEditingController();
  TextEditingController orderDate = TextEditingController();
  TextEditingController inventoryId = TextEditingController();
  TextEditingController customerId = TextEditingController();
  TextEditingController trnNumber = TextEditingController();
  TextEditingController shippingAddress = TextEditingController();
  TextEditingController billingAddress = TextEditingController();
  TextEditingController salesQuotes = TextEditingController();
  TextEditingController paymentId = TextEditingController();
  TextEditingController paymentStatus = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController invoiceStatus = TextEditingController();
  TextEditingController unitCost = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController excessTax = TextEditingController();
  TextEditingController taxableAmount = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController sellingPriceTotal = TextEditingController();
  TextEditingController totalPrice = TextEditingController();
  TextEditingController warrantyPrice = TextEditingController();
  List<SalesSidelist> idResult = [];

  int? listId = 0;
  bool select = false;
  @override
  void initState() {
    ontap=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ReadReturnInventoryCubit, ReadReturnInventoryState>(
      listener: (context, state) {
        print("oo$state");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..");
            },
            success: (data) {
            print("dataaa${data}");
              setState(() {
                readData = data;
                data.orderLines != null ?

                result = data.orderLines ?? [] : result = [];
                // unitCost.text=data.unitCost.toString()??"";
              });
            }
        );
      },
      builder: (context, state) {
        return BlocConsumer<ReturnSidelistCubit, ReturnSidelistState>(
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
                          }
                        });
                        context.read<ReadReturnInventoryCubit>().getInventoryReturnRead(listId!);
                      },
                    );
                  },
                  builder: (context, state) {
                    return Scaffold(
                      body: Column(
                        children: [
                          Container(color: Color(0xffE1E7ED),

                            height: context.blockSizeVertical * 77,
                            child: Row(
                              children: [
                                SizedBox(width: context.blockSizeHorizontal * 1.25,),
                                ReturnSidelistInventory(),

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
                                            content: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 40),
                                                  child: Text("Sales Return",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1.1,fontWeight: FontWeight.w500),),
                                                ),
                                                SizedBox(
                                                  height: context.blockSizeVertical * 4,),
                                                TablePartReturnInventory(
                                                  disc: disc,
                                                  exss: exces,
                                                  sellP: sellp,
                                                  unitc: uni,
                                                  vatt: vatt,
                                                  taxaAmd: taxaAmd,
                                                 totalva: tota,

                                                 inventoryId: inventoryId,
                                                  orderType: orderType,
                                                  orderCode: orderCode,
                                                  orderDate: orderDate,
                                                  billingAddressId: billingAddress,
                                                  customerId: customerId,
                                                  orderMode: orderMode,
                                                  paymentId: paymentId,
                                                  salesQuotes: salesQuotes,
                                                  sellingPriceTotal: sellingPriceTotal,
                                                  shippingAddressId: shippingAddress,
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
                                                  totalData: newTable,


                                                ),
                                                SizedBox(
                                                  height: context.blockSizeVertical * 4,),

                                                ScrollTablesReturnInventory(
                                                  taxaAmd: calCulation,
                                                  newData: readData,
                                                  changeTable: chaneTable,

                                                ),
                                              ],
                                            ),
                                            header:  TopHeaderReturnInventory(
                                              onTap: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>
                                                      PrintScreenSalesReturn(
                                                        taxableAmount: double.tryParse(taxableAmount.text) ,
                                                        note: note.text,
                                                        select: select,
                                                        vendorCode:orderMode.text,
                                                        orderCode:orderCode.text ,
                                                        orderDate: orderDate.text,
                                                        table:result,
                                                        vat: double.tryParse(vat.text),
                                                        totalPrice:double.tryParse(totalPrice.text),
                                                        discount:double.tryParse(discount.text) ,
                                                        unitCost:double.tryParse(unitCost.text) ,
                                                        excisetax:double.tryParse(excessTax.text) ,
                                                        remarks: remarks.text ,
                                                      )),
                                                );

                                              },
                                            ),
                                          ),
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
                              child: BottomHeaderReturnInventory(
                                  onTap: () {

                                  }
                              ))
                        ],
                      ),

                    );
                  },
                );
      },
    );
  }
}
