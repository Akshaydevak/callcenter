import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Patch_Sales_Return_Cubit/patch_sales_return_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Cubit/read_sales_return_cubit.dart';
import 'package:salesapp/Cubit/Sales_Return_List_cubit/sales_return_list_cubit.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SideListSalesGenaral.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../color_palette/color_palette.dart';
import '../../utils/variables.dart';
import '../Print_Screen/Pdf_Sales_Return.dart';
import '../SalesGenaral/SalesGenaralTables.dart';
import 'SalesReturnTables.dart';
import 'SideListSalesReturn.dart';


class SalesReturn extends StatefulWidget {


  const SalesReturn({Key? key,

  }) : super(key: key);

  @override
  State<SalesReturn> createState() => _SalesReturnState();
}
List<OrderLinesReturn>returnLines = [];

class _SalesReturnState extends State<SalesReturn> {
  List<OrderLinesReturn> newTable=[];
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
  void chaneTable(List<OrderLinesReturn> val){
    newTable=val;
    setState((){});
    print("uuu$newTable");
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
  TextEditingController returnPriceTotal = TextEditingController();
  TextEditingController totalPrice = TextEditingController();
  TextEditingController warrantyPrice = TextEditingController();
  TextEditingController invoiceCode = TextEditingController();
  List<SalesSidelist> idResult = [];

  int? receivingId;

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
        BlocProvider(create: (context) => ReadSalesReturnCubit()..getSalesReturnRead(Variable.verticalid!),),
        BlocProvider(create: (context) => PatchSalesReturnCubit()),

      ],
      child: BlocConsumer<ReadSalesReturnCubit, ReadSalesReturnState>(
        listener: (context, state) {
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
          return BlocListener<PatchSalesReturnCubit, PatchSalesReturnState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {
                // context.
                context.showSnackBarError("Loading");
              }, error: () {
                context.showSnackBarError("Patch");
              }, success: (data) {
                if (data.data1) {
                  context.showSnackBarSuccess(data.data2);
                } else {
                  context.showSnackBarError(data.data2);
                }
              });

  },
  child: BlocConsumer<SalesReturnListCubit, SalesReturnListState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (list) {
                          setState(() {});

                          idResult = list.data;
                          setState(() {
                            if (idResult.isNotEmpty) {
                              listId = result[0].id;
                              Variable.returnVerticalId = result[0].id;
                              print("Variable.ak" + Variable.verticalid.toString());
                            }
                          });
                          context.read<ReadSalesReturnCubit>().getSalesReturnRead(listId!);
                        },
                      );
                    },
                    builder: (context, state) {
                      return Scaffold(
                        backgroundColor: Color(0xffF4F7FA),
                        body: Column(
                          children: [
                            Container(height: context.blockSizeVertical * 84,
                              color: Color(0xffE1E7ED),
                              child: Row(
                                children: [
                                  SizedBox(width: context.blockSizeHorizontal * 1.25,),
                                  const SalesReturnSidelist(),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SingleChildScrollView(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Palette.white,
                                        ),
                                        width: context.blockSizeHorizontal * 76,
                                        child:
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            StickyHeader(
                                              content: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: Text("Sales Return",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1.1,fontWeight: FontWeight.w500),),
                                                  ),
                                                  SizedBox(
                                                    height: context.blockSizeVertical * 4,),
                                                  TablePartReturn(
                                                    totalva: tota,
                                                    disc: disc,
                                                    exss: exces,
                                                    sellP: sellp,
                                                     unitc: uni,
                                                    vatt: vatt,
                                                    taxaAmd: taxaAmd,

                                                    invoiceCode: invoiceCode,
                                                   inventoryId: inventoryId,
                                                    orderType: orderType,
                                                    orderCode: orderCode,
                                                    orderDate: orderDate,
                                                    billingAddressId: billingAddress,
                                                    customerId: customerId,
                                                    orderMode: orderMode,
                                                    paymentId: paymentId,
                                                    salesQuotes: salesQuotes,
                                                    sellingPriceTotal: returnPriceTotal,
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

                                                  ScrollTablesReturn(
                                                    newData: readData,
                                                    changeTable: chaneTable,
                                                    taxaAmd: calCulation,

                                                  ),
                                                  SizedBox(
                                                    height: context.blockSizeVertical * 4,),
                                                ],
                                              ),
                                              header:  TopHeaderReturn(
                                                onTaped: (){
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
                                child: BottomHeaderReturn(
                                    onTap: () {
                                      ReadSalesReturn postData = ReadSalesReturn(
                                        id: readData?.id,
                                        salesInvoiceCode: invoiceCode.text==""?"":invoiceCode.text,
                                        reason: note.text==""?"":note.text,
                                          remarks: remarks.text==""?"":remarks.text,
                                          unitCost: uni,
                                          excessTax: exces,
                                          discount: disc,
                                          taxableAmount: taxaAmd,
                                          vat: vatt,
                                          editedBy: "EMPY002",
                                          totalPrice: tota,
                                          returnPriceTotal: sellp,

                                          orderLines: returnLines
                                      );


                                        context.read<PatchSalesReturnCubit>().postSalesReturnPatch(Variable.returnVerticalId,postData);
                                        print("rww$postData");




                                    }
                                ))
                          ],
                        ),

                      );
                    },
                  ),
);
        },
      ),
    );
  }
}
