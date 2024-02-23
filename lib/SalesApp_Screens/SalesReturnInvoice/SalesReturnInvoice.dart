import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Create_Sales_Return_Invoice_Cubit/create_return_invoice_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Invoice_Cubit/read_return_invoice_cubit.dart';
import 'package:salesapp/Cubit/Sales_Return_List_cubit/sales_return_list_cubit.dart';
import 'package:salesapp/Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';
import 'package:salesapp/salesapp_Screens/SalesReturn/SideListSalesReturn.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SideListSalesGenaral.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../color_palette/color_palette.dart';
import '../Print_Screen/Pdf_Return_Invoice.dart';
import '../SalesGenaral/SalesGenaralTables.dart';
import 'SalesReturnInvoiceTables.dart';



class SalesReturnInvoice extends StatefulWidget {


  const SalesReturnInvoice({Key? key,

  }) : super(key: key);

  @override
  State<SalesReturnInvoice> createState() => _SalesReturnInvoiceState();
}
List<SalesRetunnInvoiceOrderLines>returnInvoice = [];
class _SalesReturnInvoiceState extends State<SalesReturnInvoice> {
  List<SalesRetunnInvoiceOrderLines> newTable=[];
  void chaneTable(List<SalesRetunnInvoiceOrderLines> val){
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
  ReadSalesReturnInvoice? readData;
  List<SalesRetunnInvoiceOrderLines> result = [];
  TextEditingController invoiceCode = TextEditingController();
  TextEditingController invoiceDate = TextEditingController();
  TextEditingController paymentId = TextEditingController();
  TextEditingController paymentStatus = TextEditingController();
  TextEditingController paymentMethod = TextEditingController();
  TextEditingController customerId = TextEditingController();
  TextEditingController trnNumber = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController invoiceStatus = TextEditingController();
  TextEditingController assignTo = TextEditingController();
  TextEditingController reason = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController unitCost = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController excessTax = TextEditingController();
  TextEditingController taxableAmount = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController sellingPriceTotal = TextEditingController();
  TextEditingController totalPrice = TextEditingController();
  TextEditingController vendorCode = TextEditingController();

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
        BlocProvider(create: (context) => ReadReturnInvoiceCubit()..getReturnInvoiceRead(Variable.verticalid!),),
        BlocProvider(create: (context) => CreateReturnInvoiceCubit()),

      ],
      child: BlocConsumer<ReadReturnInvoiceCubit, ReadReturnInvoiceState>(
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
                  data.salesReturnInvoiceOrderLines != null ?

                  result = data.salesReturnInvoiceOrderLines ?? [] : result = [];
                  // unitCost.text=data.unitCost.toString()??"";
                });
              }
          );
        },
        builder: (context, state) {
          return BlocListener<CreateReturnInvoiceCubit, CreateReturnInvoiceState>(
                 listener: (context, state) {
                   state.maybeWhen(orElse: () {
                     // context.
                     context.showSnackBarError("Loading");
                   }, error: () {
                     context.showSnackBarError(Variable.errorMessege);
                   }, success: (data) {

                     if (data.data1){
                       print(data.data2);

                       context.showSnackBarSuccess(data.data2);
                       }
                     else {
                       context.showSnackBarError(data.data2);
                       print(data.data1);
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
                      Variable.verticalid = result[0].id;
                    }
                  });
                  context.read<ReadSalesGenaralCubit>().getGeneralSalesRead(listId!);
                },
              );
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Color(0xffF4F7FA),
                body: Column(
                  children: [
                    Container(
                      color: Color(0xffE1E7ED),
                      height: context.blockSizeVertical * 84,
                      child: Row(
                        children: [
                          SizedBox(width: context.blockSizeHorizontal * 1.25,),
                           SalesReturnSidelist(),

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
                                      content: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30),
                                            child: Text("Sales Return Invoice",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1.1,fontWeight: FontWeight.w500),),
                                          ),
                                          SizedBox(
                                            height: context.blockSizeVertical * 4,),
                                          TablePartReturnInvoice(
                                            taxaAmd: taxaAmd,
                                            vatt: vatt,
                                            unitc: uni,
                                            sellP: sellp,
                                            exss: exces,
                                             disc: disc,
                                            totalva: tota,

                                            invoiceCode: invoiceCode,
                                            assignTo: assignTo,
                                            paymentMethod: paymentMethod,
                                            invoiceDate: invoiceDate,
                                            customerId: customerId,
                                            paymentId: paymentId,
                                            sellingPriceTotal: sellingPriceTotal,
                                            taxableAmount: taxableAmount,
                                            totalPrice: totalPrice,
                                            trnNumber: trnNumber,
                                            remarks: remarks,
                                            vat: vat,
                                            excessTax: excessTax,
                                            unitCost: unitCost,
                                            discount: discount,
                                            reason: reason,
                                            invoiceStatus: invoiceStatus,
                                            orderStatus: orderStatus,
                                            paymentStatus: paymentStatus,

                                            totalData: newTable,

                                          ),
                                          SizedBox(
                                            height: context.blockSizeVertical * 4,),

                                          ScrollTablesReturnInvoice(
                                            taxaAmd: calCulation,
                                            newData: readData,
                                            changeTable: chaneTable,

                                          ),
                                          SizedBox(
                                            height: context.blockSizeVertical * 4,),
                                        ],
                                      ),
                                      header:  TopHeaderReturnInvoice(
                                        onTaped: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) =>
                                                PrintScreenReturnInvoice(
                                                  taxableAmount: double.tryParse(taxableAmount.text) ,
                                                  note: reason.text,
                                                  select: select,
                                                  vendorCode:vendorCode.text,
                                                  orderCode:invoiceCode.text ,
                                                  orderDate: invoiceDate.text,
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
                        child: BottomHeaderReturnInvoice(
                            onTap: () {
                              ReadSalesReturnInvoice postData = ReadSalesReturnInvoice(
                                  salesreturnOrderId: readData?.id.toString(),
                                  vendorCode: "EMPY002",
                                  customerTrnNumber: "12456",
                                  customerId: customerId.text==""?"":customerId.text,
                                  trnNumber: trnNumber.text==""?"":trnNumber.text,
                                  invoicedBy: "EMPY002",
                                  notes: reason.text==""?"":reason.text,
                                  discount: discount.text==""?0:double.tryParse(discount.text),
                                  totalPrice: totalPrice.text==""?0:double.tryParse(totalPrice.text),
                                  taxableAmount: taxableAmount.text==""?0:double.tryParse(taxableAmount.text),
                                  unitCost: unitCost.text==""?0:double.tryParse(unitCost.text),
                                  excessTax: excessTax.text==""?0:double.tryParse(excessTax.text),
                                  remarks: remarks.text==""?"":remarks.text,
                                  vat: vat.text==""?0:double.tryParse(vat.text),
                                  returnPriceTotal: sellp,
                                  assignTo: assignTo.text==""?"":assignTo.text,
                                  salesReturnInvoiceLines: returnInvoice


                              );


                                context.read<CreateReturnInvoiceCubit>().postSalesReturnInvoiceCreate(postData);
                                print("datainvoice$postData");




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
