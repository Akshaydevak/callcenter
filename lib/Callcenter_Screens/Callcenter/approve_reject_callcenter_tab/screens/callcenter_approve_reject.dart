// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/SecondHead.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Order_Type_Cubit/order_type_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Process_Cubit/payment_process_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Status_Cubit/payment_status_post_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Variant_List_By_Channel_Cubit/variant_list_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/list_cart_order_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/create_cart/create_cart_cubit.dart';
// import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
// import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
// import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/FirstHeadPart.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/TableBottomHead.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/callcenter_pdf.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/invoice_pdf.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/patch_order_pdf.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
// import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
// import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp10.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp3.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/invoice_popup.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Invoice_Cubit/create_invoice_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Order_Cubit/create_order_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Delete_Orders/delete_orders_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Patch_Orders_Cubit/patch_orders_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
// import 'package:salesapp/Cubit/pdf/pdf_view_cubit.dart';
// import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
// import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
// import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
// import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
// import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
// import 'package:salesapp/Widgets/commonutils.dart';
// import 'package:salesapp/Widgets/shared_preference.dart';
// import 'package:salesapp/common_widget/snackbar.dart';
// import 'package:salesapp/main.dart';
// import 'package:salesapp/shared_preference/shared_preference.dart';
// import 'package:salesapp/utils/size_config_hilal.dart';
// import 'package:salesapp/utils/variables.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
//
// class CallCenterScreen extends StatefulWidget {
//   final bool editOrder;
//   final bool invoiceOrder;
//   const CallCenterScreen({Key? key,  this.editOrder=false,  this.invoiceOrder=false}) : super(key: key);
//
//   @override
//   State<CallCenterScreen> createState() => _CallCenterScreenState();
// }
//
// List<ReadVarriant>variantList=List.from([]);
// List<OrderLineCallcenter> newList =[];
// List<LinesCallcenter> patchList =List.from([]);
// List<LinesInvoiceCallcenter> invoiceline =List.from([]);
//
// NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
//
//
// class _CallCenterScreenState extends State<CallCenterScreen> {
//   bool select=false;
//   bool isHolded=false;
//   bool isPrintLoading=false;
//   bool isOldPrintLoading=false;
//   bool iscreateMainButtonLoading=false;
//   bool isInvoiceLoading=false;
//   bool isDeleteLoading=false;
//   bool isCreateCartLoading=false;
//   NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
//   List<RecommendationCallCenterModel> recommendationlist=List.from([]);
//   void chaneTable(List<ReadVarriant> val){
//     variantList=val;
//     setState((){});
//   }
//   Future<void> onRefresh()async {
//     Future.delayed(const Duration(seconds: 1),
//             (){
//
//           setState(() {
//
//           });
//           ScaffoldMessenger.of(context)
//               .showSnackBar(const SnackBar(content: Text("Page Refreshed")));
//         }
//     );
//   }
//
//
//   String name="";
//   double priceee=0;
//   String uommm="";
//   int qtty=0;
//   double discountt=0;
//   double vatabkle=0;
//   double vatt=0;
//   double totall=0;
//   double qtyytotal=0;
//   double dicountttotal=0;
//   double vatabtotal=0;
//   double totaltotal=0;
//   double priceTotal=0;
//   double vatTotal=0;
//   bool ishistoryEnable=false;
//   double deliveryChargdeTotal=0;
//   void editt(String namee,double pricee,String uomm,int qty,double discount,double vat,double vatable,double total){
//     name=namee;
//     priceee=pricee;
//     uommm=uomm;
//     qtty=qty;
//     vatt=vat;
//     discountt=discount;
//     vatabkle=vatable;
//     totall=total;
//     setState((){});
//     print("uuu$vat");
//   }
//
//   TextEditingController productName=TextEditingController();
//   TextEditingController price=TextEditingController();
//   TextEditingController uom=TextEditingController();
//   TextEditingController qty=TextEditingController();
//   TextEditingController vat=TextEditingController();
//   TextEditingController discount=TextEditingController();
//   TextEditingController vatable=TextEditingController();
//   TextEditingController total=TextEditingController();
//   TextEditingController minGP=TextEditingController();
//   TextEditingController maxGP=TextEditingController();
//   TextEditingController avgGP=TextEditingController();
//   TextEditingController targetGP=TextEditingController();
//   TextEditingController text=TextEditingController();
//   TextEditingController stock=TextEditingController();
//   TextEditingController orderType=TextEditingController();
//   TextEditingController orderDate=TextEditingController(text:DateFormat('dd-MM-yyyy').format(DateTime.now()));
//   TextEditingController orderTime=TextEditingController(text: DateFormat("HH:mm:ss").format(DateTime.now()));
//   TextEditingController trn=TextEditingController();
//   TextEditingController storename=TextEditingController();
//   TextEditingController oparator=TextEditingController();
//   TextEditingController counter=TextEditingController();
//   TextEditingController notTextEditing=TextEditingController();
//   TextEditingController remarkTextEditing=TextEditingController();
//   TextEditingController allCostemerId=TextEditingController();
//   TextEditingController selectedBarcode=TextEditingController();
//   TextEditingController selectedProductName=TextEditingController();
//   TextEditingController channelCodeController=TextEditingController();
//   TextEditingController customerUsercode=TextEditingController();
//   TextEditingController allHistId=TextEditingController();
//   TextEditingController negotiationText=TextEditingController();
//   TextEditingController channelName=TextEditingController();
//   TextEditingController channelId=TextEditingController();
//   TextEditingController channelTypeId=TextEditingController();
//   TextEditingController channelTypeCode=TextEditingController();
//   TextEditingController channelStockType=TextEditingController();
//   String orderIdPayment="";
// // final page = Page();
//
//   ReadVarriant? readData;
//   ReadOrderCallCenter? readOrders;
//   InvoiceOrderCallCenter? invoiceRead;
//   List<LinesCallcenter>? lineCall=[];
//   List<LinesInvoiceCallcenter>? lineInvoice=[];
//
//   changeHistoryEnable(va){
//     setState(() {
//       ishistoryEnable=va;
//     });
//
//   }
//
//
//   editChange(){
//
//
//   }
//   priceDataChange( String val){
//
//     // thirdHeadState.currentState?.prizeDatachage(val);
//   }
//   navFunction(){
//
//   }
//
//
//
//   String? orderId;
//   @override
//   initState()  {
//     newList.clear();
//     variantList.clear();
//     trn=TextEditingController(text: listCustomer?.taxId??"");
//     invoicePage?context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId):
//     createOrPatch? context.read<ReadOrdersCubit>().getOrdersRead(Variable.callOrderId):null;
//
//
//     super.initState();
//   }
//   refreshFunction(){
//     setState(() {
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => VariantListCubit()),
//
//         // BlocProvider(create: (context) => PdfViewCubit()),
//         BlocProvider(create: (context) => OrderTypeCubit()..getOrderTypes()),
//
//       ],
//       child: MultiBlocListener(
//         listeners: [
//           BlocListener<CreateOrderCubit, CreateOrderState>(
//             listener: (context, state) {
//               state.maybeWhen(orElse: () {
//                 context.showSnackBarError("Loading");
//               }, error: () {
//                 context.showSnackBarError(Variable.errorMessege);
//               }, success: (data) {
//                 if (data.data1) {
//                   context.showSnackBarSuccess(data.data2);
//
//                   Navigator.pushReplacement(
//                       context,
//                       CupertinoPageRoute(
//                           fullscreenDialog: true,builder: (context) =>
//                           CallCenterMain(tabValue: 0)));
//
//
//
//                 } else {
//                   context.showSnackBarError(Variable.errorMessege );
//                 }
//                 setState(() {
//                   iscreateMainButtonLoading=false;
//                 });
//               });
//             },
//           ),
//           BlocListener<PdfViewCubit, PdfViewState>(
//             listener: (context, state) {
//               state.maybeWhen(orElse: () {
//                 context.showSnackBarError("Loading");
//               }, error: () {
//                 context.showSnackBarError(Variable.errorMessege);
//               }, success: (data) async {
//                 if(data.data1)
//                   setState(() async {
//                     PdfUrlModel model=PdfUrlModel();
//                     model=data.data2;
//                     setState(() {
//                       isPrintLoading=false;
//                       isOldPrintLoading=false;
//                     });
//
//
//
//                     await launch(model?.pdfUrl??"");
//                   });
//               });
//             },
//           ),
//           BlocListener<CreateInvoiceCubit, CreateInvoiceState>(
//             listener: (context, state) {
//               state.maybeWhen(orElse: () {
//                 // context.
//                 context.showSnackBarError("Loading");
//               }, error: () {
//                 // context.showSnackBarError(Variable.errorMessege);
//               }, success: (data) {
//                 if (data.data1) {
//                   Variable.invoiceIdPay=data.data2;
//                   context.showSnackBarSuccess("Successfully invoiced");
//                   context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId);
//                 } else {
//                   context.showSnackBarError(Variable.errorMessege);
//                 }
//                 setState(() {
//                   isInvoiceLoading=false;
//                 });
//               });
//             },
//           ),
//           BlocListener<CreateCartCubit, CreateCartState>(
//             listener: (context, state) {
//               state.maybeWhen(orElse: () {
//                 // context.
//                 context.showSnackBarError("Loading");
//               }, error: () {
//                 // context.showSnackBarError(Variable.errorMessege);
//               }, success: (data) {
//                 if (data.data1) {
//                   context.showSnackBarSuccess(data.data2);
//                   context.read<ListCartOrderCubit>().getCArtOrderList();
//                 } else {
//                   context.showSnackBarError(Variable.errorMessege);
//                 }
//                 setState(() {
//                   isCreateCartLoading=false;
//                 });
//               });
//             },
//           ),
//
//           BlocListener<PaymentProcessCubit, PaymentProcessState>(
//             listener: (context, state) {
//               print("state payment$state");
//               state.maybeWhen(orElse: () {
//                 context.showSnackBarError("Loading");
//               }, error: () {
//                 context.showSnackBarError(Variable.errorMessege);
//               }, success: (data) {
//
//                 print(data.data2);
//                 if (data.data1) {
//
//                   Variable.paymentIdPay=data.data2;
//                   // context.showSnackBarSuccess("Payment Created Successfully");
//                   context.read<PaymentStatusPostCubit>().postPaymentStatus(Variable.invoiceIdPay??0,data.data2??0);
//
//
//                   // Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(builder: (context) =>
//                   //         CallCenterMain(tabValue: 0)));
//                 } else {
//                   context.showSnackBarError(Variable.errorMessege);
//                 }
//               });
//             },
//           ),
//           BlocListener<ReadInvoiceCubit, ReadInvoiceState>(
//             listener: (context, state) {
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error..read orders");
//                   },
//                   success: (data) {
//                     setState(() {
//                       invoiceRead=data;
//
//
//                       if(invoiceRead?.invoiceData==null){
//                         lineInvoice=List.from(data.linesCallcenter??[]);
//                         Variable.orderIdPayment = invoiceRead?.orderCode ?? "";
//                         orderIdPayment = invoiceRead?.orderCode ?? "";
//                         Variable.total = invoiceRead?.total ?? 0.0;
//
//
//                         trn.text=invoiceRead?.customerTrn??"";
//                         totaltotal=invoiceRead?.total??0;
//                         orderType.text=data?.orderType??"";
//                         vatabtotal=invoiceRead?.vatableAmount??0;
//                         qtyytotal=invoiceRead?.totalLineCount??0;
//                         dicountttotal=invoiceRead?.discount??0;
//                         vatTotal=invoiceRead?.vat??0;
//                         deliveryChargdeTotal=invoiceRead?.deliveryCharge??0;
//                         // vat.text=invoiceRead?.vat.toString()??"";
//                         notTextEditing.text=invoiceRead?.notes??"";
//                         remarkTextEditing.text=invoiceRead?.remarks??"";
//                         orderType.text=invoiceRead?.orderType??"";
//                         // channelCodeController.text=invoiceRead?.channelData?.channelCode??"";
//                         isHolded=invoiceRead?.isHolded??false;
//
//                       }
//                       else{
//                         print("data?.invoiceData?.total${data?.invoiceData?.totalAmount}");
//                         lineInvoice=List.from(data.invoiceData?.linesCallcenter??[]);
//
//                         Variable.orderIdPayment = data.invoiceData?.invoiceCode ?? "";
//                         orderIdPayment = data.invoiceData?.invoiceCode ?? "";
//                         Variable.total = data.invoiceData?.totalAmount ?? 0.0;
//                         orderType.text=data?.invoiceData?.orderType??"";
//                         trn.text== data?.invoiceData?.customerTrn??"";
//                         totaltotal=data?.invoiceData?.totalAmount??0;
//                         vatabtotal=data?.invoiceData?.vatableAmount??0;
//                         qtyytotal=data?.invoiceData?.totalLineCount??0;
//                         dicountttotal=data?.invoiceData?.discount??0;
//                         deliveryChargdeTotal=data?.invoiceData?.deliveryCharge??0;
//                         vatTotal=data?.invoiceData?.vat??0;
//                         // vat.text=data?.invoiceData?.vat.toString()??"";
//                         notTextEditing.text=data?.invoiceData?.notes??"";
//                         remarkTextEditing.text=data?.invoiceData?.remarks??"";
//                         orderType.text=data?.invoiceData?.orderType??"";
//                         isHolded=data?.invoiceData?.isHolded??false;
//                         // channelCodeController.text=invoiceRead?.invoiceData?.channelData?.channelCode??"";
//
//                       }
//                       context.read<CustomerListCubit>().getCustomerList(invoiceRead?.customerCode??"");
//
//                       // for(var i=0;i<lineInvoice!.length;i++) {
//                       //   setState(() {
//                       //
//                       //
//                       //     productName.text=lineInvoice![i].variantName??"";
//                       //     price.text=lineInvoice![i].sellingPrice.toString()??"";
//                       //     uom.text=lineInvoice![i].uomName??"";
//                       //     trn.text=invoiceRead?.customerTrn??"";
//                       //     qty.text=lineInvoice![i].quantity.toString()??"";
//                       //     discount.text=lineInvoice![i].discount.toString()??"";
//                       //     vatable.text=lineInvoice![i].vatableAmount.toString()??"";
//                       //     vat.text=invoiceRead?.vat.toString()??"";
//                       //     total.text=lineInvoice![i].totalAmount.toString()??"";
//                       //
//                       //   });
//                       // }
//
//                     });
//
//                   }
//               );
//             },
//           ),
//           BlocListener<CustomerListCubit, CustomerListState>(
//             listener: (context, state) {
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error..read orders");
//                   },
//                   success: (data) {
//                     setState(() {
//                       print("the data is heereskmdkmdkmakmkam $data");
//                       if(data.isNotEmpty){
//                         userData=true;
//                         isHideTwo=true;
//                         logined=true;
//
//                         listCustomer=CustomerList(
//                             customerUserCode:data?[0]?.customerUserCode,
//                             id: data![0]?.id,
//                             isActive:data?[0]?.isActive,
//                             mobile:data?[0]?.mobile,
//                             email:data?[0]?.email,
//                             businessData:data?[0]?.businessData,
//                             businessUnit: data?[0]?.businessUnit,
//                             customerId:data?[0]?.customerId,
//                             dateJoined: data?[0]?.dateJoined,
//                             isBusinessUser:data?[0]?.isBusinessUser,
//                             isDelete:data?[0]?.isDelete,
//                             legalUnit:data?[0]?.legalUnit
//
//                         );
//                         UserPreferencesCallCenter().saveUser(listCustomer!);
//                       }
//
//
//                     });
//
//                   }
//               );
//             },
//           ),
//
//
//
//
//           BlocListener<CustomerListCubit,CustomerListState>(
//               listener: (context,state){
//                 state.maybeWhen(
//                     orElse: () {},
//                     error: () {
//                       context.showSnackBarError("error !");
//                     },
//                     loading: () {
//                       context.showSnackBarNormal("Loading");
//                     },
//                     success: (data) {
//
//
//
//                       listCustomer=CustomerList(
//                           customerUserCode:data?[0]?.customerUserCode,
//                           id: data?[0]?.id,
//                           isActive:data?[0]?.isActive,
//                           mobile:data?[0]?.mobile,
//                           email:data?[0]?.email,
//                           customerName:data?[0].customerName,
//                           taxId:data?[0].taxId,
//                           businessData:data?[0]?.businessData,
//                           customerMeta:data?[0]?.customerMeta,
//                           businessUnit: data?[0]?.businessUnit,
//                           customerId:data?[0]?.customerId,
//                           dateJoined: data?[0]?.dateJoined,
//                           isBusinessUser:data?[0]?.isBusinessUser,
//                           isDelete:data?[0]?.isDelete,
//                           legalUnit:data?[0]?.legalUnit
//
//                       );
//                       UserPreferencesCallCenter().saveUser(listCustomer!);
//                       // Navigator.pushReplacement(
//                       //     context,
//                       //     MaterialPageRoute(builder: (context) =>
//                       //         CallCenterMain(tabValue: 1,)
//                       //     ));
//                       logined=true;
//                       setState(() {
//
//                       });
//
//
//
//                     }
//                 );} ),
//
//           BlocListener<ReadVariantCubit, ReadVariantState>(
//             listener: (context, state) {
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error..read Variant");
//                   },
//                   success: (data) {
//                     setState(() {
//                       readData=data;
//
//
//                       setState(() {
//                       });
//                     });
//                   }
//               );
//
//             },),
//
//           BlocListener<ReadOrdersCubit, ReadOrdersState>(
//             listener: (context, state) {
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error..read orders");
//                   },
//                   success: (data) {
//                     print("Inchcgvjhbkjlnk;");
//                     setState(() {
//                       readOrders=data;
//                       data?.linesCallcenter!= null
//                           ? patchList = List.from(data?.linesCallcenter?? [])
//                           : patchList = List.from([]);
//                       lineCall=data.linesCallcenter;
//                       print("ordertype$lineCall}");
//
//                       for(var i=0;i<lineCall!.length;i++) {
//                         setState(() {
//
//
//                           // productName.text=lineCall![i].variantName?.toString().toTitleCase()??"";
//                           // price.text=readOrders?.linesCallcenter![i].sellingPrice.toString()??"";
//                           // uom.text=readOrders?.linesCallcenter![i].uomName.toString().toTitleCase()??"";
//                           //
//                           // qty.text=readOrders?.linesCallcenter![i].quantity.toString()??"";
//                           // discount.text=readOrders?.linesCallcenter![i].discount.toString()??"";
//                           // vatable.text=readOrders?.linesCallcenter![i].vatableAmount.toString()??"";
//                           //
//                           // total.text=readOrders?.linesCallcenter![i].totalAmount.toString()??"";
//
//
//                         });
//                       }
//                       Variable.orderTypes=readOrders?.orderType??"";
//                       // channelCodeController.text=readOrders?.channelData?.channelCode??"";
//                       orderTime.text=readOrders?.orderTime??"";
//                       orderDate.text=readOrders?.orderdDate??"";
//                       trn.text=readOrders?.customerTrn??"";
//                       deliveryChargdeTotal=readOrders?.deliveryCharge??0;
//                       totaltotal=readOrders?.total??0;
//                       vatabtotal=readOrders?.vatableAmount??0;
//                       qtyytotal=readOrders?.totalLineCount??0;
//                       dicountttotal=readOrders?.discount??0;
//                       customerUsercode.text=readOrders?.customerCode??"";
//                       vatTotal=readOrders?.vat??0;
//                       // vat.text=readOrders?.vat.toString()??"";
//                       notTextEditing.text=readOrders?.notes??"";
//                       remarkTextEditing.text=readOrders?.remarks??"";
//                       orderType.text=readOrders?.orderType??"";
//                       isHolded=readOrders?.isHolded??false;
//
//
//                       orderId=readOrders?.orderCode??"";
//                       context.read<CustomerListCubit>().getCustomerList(customerUsercode.text);
//
//                     });
//
//                   }
//               );
//
//             },),
//
//           BlocListener<DeleteOrdersCubit, DeleteOrdersState>(
//               listener: (context, state) {
//
//                 state.maybeWhen(
//                     orElse: () {
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                   context.showSnackBarError(Variable.errorMessege);
//                 }, success: (data) {
//
//                   if (data.data1) {
//                     context.showSnackBarSuccess(data.data2);
//                     Navigator.pushReplacement(
//                         context,
//                         CupertinoPageRoute(
//                             fullscreenDialog: true,builder: (context) =>
//                         const CallCenterMain(tabValue: 0)
//                         ));
//                     variantList.clear();
//
//                   } else {
//                     context.showSnackBarError(Variable.errorMessege);
//                     print(data.data1);
//                   }
//                   setState(() {
//                     isDeleteLoading=false;
//                   });
//
//
//                 });
//
//               }),
//
//         ],
//
//
//
//
//
//
//         child: RefreshIndicator(
//           onRefresh:onRefresh ,
//           child: Scaffold(
//             body: Container(
//
//               color: const Color(0xffE1E7ED),
//               child: Stack(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         children: [
//                           FirstHead(
//                             orderType: orderType,
//                             orderDate: orderDate,
//                             counter: counter,
//                             operator: oparator,
//                             trn: trn,
//                             orderTime: orderTime,
//                             storeName: storename,
//                             channelCode: channelCodeController, refresh: refreshFunction, channelName: channelName,
//                             channelId: channelId,
//                             channelStockType: channelStockType,
//                             channelTypeCode: channelTypeCode,
//                             channelTypeId: channelTypeId,
//                           ),
//                           SizedBox(height: context.blockSizeVertical*0.5,),
//
//                           Spacer(),
//                           TableBottomHead(
//                             isInvoiceLoading: isInvoiceLoading,
//                             deliveryChargdeTotal:deliveryChargdeTotal.toString(),
//                             isholded: isHolded,
//                             totalValue: calcu,
//                             invoiceOrder: widget.invoiceOrder,
//                             editOrder: widget.editOrder,
//                             orderId: orderId??"",
//                             invoicebuttonLabel:invoiceRead?.invoiceData!=null?"INVOICED":"INVOICE THE ORDER" ,
//                             totalDiscount: dicountttotal.toString()??"",
//                             totalQty: qtyytotal.toString()??"",
//                             totalVatable: vatabtotal.toString()??"",
//                             totalPrice: totaltotal.toString()??"",
//                             notesOrRemark: notTextEditing,
//                             remarkTextEditing:remarkTextEditing,
//                             onTapInvoice: (){
//                               setState(() {
//                                 isInvoiceLoading=true;
//                               });
//                               List<LinesInvoiceCallcenter> invoiceline2=List.from([]);
//                               if(invoiceline.isNotEmpty){
//                                 for(var i=0;i<invoiceline.length;i++){
//
//                                   invoiceline2.add(LinesInvoiceCallcenter(
//                                     id:invoiceRead?.invoiceData==null? null:invoiceline[i].id,
//                                     orderlineId:invoiceRead?.invoiceData==null?invoiceline[i].id: invoiceline[i].orderlineId,
//                                     isInvoiced: invoiceline[i!].isInvoiced,
//                                     unitcost: 0,
//                                   ));
//                                 }
//                               }
//                               InvoiceOrderCallCenter beforeInvoice=InvoiceOrderCallCenter(
//                                   orderId:invoiceRead?.invoiceData==null? invoiceRead?.id:invoiceRead?.invoiceData?.orderId,
//                                   notes: notTextEditing.text,
//                                   totalAmount: totaltotal==null?0:totaltotal,
//                                   vat: vatTotal==null?0:vatTotal,
//
//                                   deliveryCharge: deliveryChargdeTotal==null?0:deliveryChargdeTotal,
//                                   vatableAmount: vatabtotal==null?0:vatabtotal,
//                                   discount: dicountttotal,
//
//                                   sellingPriceTotal: (totaltotal-deliveryChargdeTotal)==null?0:(totaltotal-deliveryChargdeTotal),
//
//                                   remarks:  remarkTextEditing.text,
//                                   invoiceLinesCallcenter: invoiceline2,
//                                   unitCost: 0
//                               );
//                               print("invoicedaaaaaaaaaaaaa$beforeInvoice");
//
//                               context.read<CreateInvoiceCubit>().postCreateInvoice(beforeInvoice);
//
//
//
//
//
//                             },
//                           ),
//                           SizedBox(height: context.blockSizeVertical*8.3,),
//                         ],
//                       ),
//                       // SizedBox(width: context.blockSizeHorizontal*1,),
//                       SizedBox(
//                         height: context.blockSizeVertical*85,
//                         width: context.blockSizeHorizontal*19.4,
//                         child: Container()
//
//
//
//                       ),
//                     ],
//                   ),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Container(
//
//                       height: context.blockSizeVertical*6.5,
//
//                       // color: const Color(0xffF8F9FA),
//                       child: Row(
//                         children: [
//                           Expanded(
//
//                             child: Container(
//                               color: const Color(0xffF8F9FA),
//                               child: Row(
//                                 children: [
//                                   SizedBox(width: context.blockSizeHorizontal*1,),
//                                   if(invoicePage!=true )
//                                     CommonButtonGradiant(
//                                       isHold: isHolded,
//                                       margin: EdgeInsets.zero,
//                                       width: context.blockSizeHorizontal*6,
//                                       height: context.blockSizeVertical*5,
//                                       label:isHolded==true?"UNHOLD":"HOLD" ,
//                                       onTap: (){
//                                         setState(() {
//                                           isHolded=!isHolded;
//                                         });
//
//                                       },
//
//                                     ),
//
//                                   // ButtonTextOnly(
//                                   //   onTap: (){
//                                   //     isHolded=true;
//                                   //     print("isHold${notsOrRemarks.text}");
//                                   //   },
//                                   //     width: context.blockSizeHorizontal*6,
//                                   //     height: context.blockSizeVertical*5,
//                                   //     text: "HOLD", color1: 0xffFFFFFF, color2: 0xff6B7B96),
//                                   SizedBox(width: context.blockSizeHorizontal*.27,),
//                                   if(invoicePage!=true )       CommonButtonGradiant(
//                                     margin: EdgeInsets.zero,
//                                     isInActive: isHolded,
//                                     isIndiactor: isDeleteLoading,
//                                     width: context.blockSizeHorizontal*6,
//                                     height: context.blockSizeVertical*5,
//                                     label:  createOrPatch?"Delete":"CLEAR" ,
//                                     onTap: (){
//                                       if(isHolded){
//                                         context.showSnackBarError("Please Press UnHold");
//                                       }else{
//
//                                         if( createOrPatch==true)
//                                         {
//                                           context.read<DeleteOrdersCubit>().deleteOrders(Variable.callOrderId);
//                                           setState(() {
//                                             isDeleteLoading=true;
//                                           });
//                                         }
//                                         else{
//                                         }
//                                       }
//
//
//                                     },
//
//                                   ),
//                                   // ButtonTextOnly(
//                                   //     width: context.blockSizeHorizontal*6,
//                                   //     height: context.blockSizeVertical*5,
//                                   //     text: "CLEAR", color1: 0xffFFFFFF, color2: 0xff6B7B96,
//                                   // onTap: (){
//                                   //   context.read<DeleteOrdersCubit>().deleteOrders(Variable.callOrderId);
//                                   //   print("deleted ${Variable.callOrderId}");
//                                   // },),
//                                   SizedBox(width: context.blockSizeHorizontal*.27,),
//                                   // CommonButtonGradiant(
//                                   //   margin: EdgeInsets.zero,
//                                   //   width: context.blockSizeHorizontal*6,
//                                   //   height: context.blockSizeVertical*5,
//                                   //   label:"REFRESH" ,
//                                   //   onTap: (){
//                                   //     Navigator.push(
//                                   //         context,
//                                   //         MaterialPageRoute(builder: (context) =>
//                                   //         const CallCenterMain(tabValue: 1)
//                                   //         ));
//                                   //     // onRefresh();
//                                   //     // variantList.clear();
//                                   //     setState(() {
//                                   //
//                                   //     });
//                                   //   },
//                                   //
//                                   // ),
//                                   // ButtonTextOnly(
//                                   //     width: context.blockSizeHorizontal*6,
//                                   //     height: context.blockSizeVertical*5,
//                                   //     text: "REFRESH", color1: 0xffFFFFFF, color2: 0xff6B7B96,
//                                   // onTap: (){
//                                   //   Navigator.push(
//                                   //       context,
//                                   //       MaterialPageRoute(builder: (context) =>
//                                   //           const CallCenterMain(tabValue: 1)
//                                   //       ));
//                                   //   onRefresh();
//                                   //   variantList.clear();
//                                   //   setState(() {
//                                   //
//                                   //   });
//                                   // },),
//                                   const Spacer(),
//                                   if(invoicePage==true )          CommonButtonGradiant(
//                                     margin: EdgeInsets.zero,
//                                     // margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
//                                     label:"Remarks" ,
//                                     isInActive:isHolded ,
//                                     width:context.blockSizeHorizontal*9,
//                                     height: context.blockSizeVertical*5.2,
//                                     onTap: (){
//                                       if(isHolded){
//                                         context.showSnackBarError("Please Press UnHold");
//                                       }
//                                       else{
//                                         showDailogPopUp(
//                                           context,
//                                           ThirdPopUp(
//                                             notesOrRemarks: notTextEditing,
//                                             remarkTextEditing: remarkTextEditing,
//                                           ),
//                                         );
//                                       }
//                                     },
//
//                                   ),
//                                   SizedBox(width: context.blockSizeHorizontal*.27,),
//
//                                   if(  invoicePage &&   invoiceRead?.invoiceData!=null)...[
//                                     CommonButtonGradiant(
//                                       isIndiactor:isPrintLoading,
//
//                                       margin: EdgeInsets.zero,
//                                       onTap: () async {
//                                         setState(() {
//                                           isPrintLoading=true;
//                                         });
//
//                                         InventoryListModel model=InventoryListModel();
//                                         UserPreferences userPref = UserPreferences();
//                                         await userPref.getInventoryList().then((user) {
//                                           print("entereeeeeeeeeeeeeeeeeeed");
//                                           print(user.isInventoryExist);
//                                           if (user.isInventoryExist == true) {
//                                             model=user;
//                                             print("existing");
//                                             print(model.name);
//                                             // prefs.setString('token', user?.token ?? "");
//                                           } else {
//                                           }
//                                         });
//
//                                         widget.invoiceOrder?print("invoice"):widget.editOrder?print("patch"):print("read");
//                                         invoicePage?context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","new_format")
//                                         // Navigator.push(
//                                         //   context,
//                                         //   MaterialPageRoute(builder: (context) =>
//                                         //       CallCenterInvoicePrintScreen(
//                                         //         model: model,
//                                         //         taxableAmount: vatabtotal,
//                                         //
//                                         //         note:notTextEditing.text,
//                                         //         select: select,
//                                         //         vendorCode:listCustomer?.customerUserCode??"",
//                                         //         orderCode:invoiceRead?.invoiceData?.invoiceCode??"",
//                                         //         orderDate: invoiceRead?.invoiceData?.invoiceDate??"",
//                                         //         table:invoiceline??[],
//                                         //         vat: invoiceRead?.vat,
//                                         //         totalPrice:totaltotal,
//                                         //         discount:dicountttotal ,
//                                         //         remarks:remarkTextEditing.text??"",
//                                         //       )
//                                         //   ),
//                                         // ):
//                                             :
//                                         widget.editOrder?Navigator.pushReplacement(
//                                           context,
//                                           MaterialPageRoute(builder: (context) =>
//                                               CallCenterInvoicePrintScreen
//                                                 (
//                                                 taxableAmount: readOrders?.vatableAmount,
//                                                 note: notTextEditing.text,
//                                                 select: select,
//                                                 pageName: " ORDER HISTORY",
//                                                 vendorCode:listCustomer?.customerUserCode??"",
//                                                 model: model,
//                                                 orderCode:readOrders?.orderCode??"" ,
//                                                 orderDate: readOrders?.orderdDate??"",
//                                                 table:patchList??[],
//                                                 vat: readOrders?.vat,
//                                                 totalPrice:totaltotal,
//                                                 discount:dicountttotal ,
//                                                 remarks:remarkTextEditing.text,
//                                               )
//                                           ),
//                                         ):
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(builder: (context) =>
//                                               CallCenterInvoicePrintScreen(
//                                                 model: model,
//                                                 pageName: "ORDER",
//                                                 taxableAmount: vatabtotal,
//                                                 note: notTextEditing.text,
//                                                 select: select,
//                                                 vendorCode:listCustomer?.customerUserCode??"",
//                                                 orderCode:"" ,
//                                                 orderDate: DateTime.now().toIso8601String().split("T")[0],
//                                                 table:variantList,
//                                                 vat: vatTotal,
//                                                 totalPrice:totaltotal,
//                                                 discount:dicountttotal ,
//                                                 remarks:remarkTextEditing.text,
//                                               )
//                                           ),
//                                         );
//                                       },
//                                       width:context.blockSizeHorizontal*9,
//                                       height: context.blockSizeVertical*5.2,
//                                       label: "PRINT",),
//                                     SizedBox(width: context.blockSizeHorizontal*.27,),
//                                     CommonButtonGradiant(
//                                       isIndiactor:isOldPrintLoading,
//
//                                       margin: EdgeInsets.zero,
//                                       onTap: () async {
//                                         setState(() {
//                                           isOldPrintLoading=true;
//
//                                         });
//                                         context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","old_format");
//                                       },
//                                       width:context.blockSizeHorizontal*9,
//                                       height: context.blockSizeVertical*5.2,
//                                       label: "PRINT OLD FORMAT",),
//                                   ],
//
//
//                                   SizedBox(width: context.blockSizeHorizontal*.27,),
//
//
//                                   if(invoicePage!=true && createOrPatch!=true )
//                                     CommonButtonGradiant(
//                                       isIndiactor: isCreateCartLoading,
//                                       margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
//                                       label:"ADD TO CART" ,
//                                       isInActive:isHolded ,
//                                       height: context.blockSizeVertical*4.5,
//                                       width: context.blockSizeHorizontal*8.5 ,
//                                       onTap: (){
//                                         if(isHolded){
//                                           context.showSnackBarError("Please Press UnHold");
//                                         }
//                                         else{
//                                           setState(() {
//                                             isCreateCartLoading=true;
//                                           });
//
//                                           AddressCart address=AddressCart(
//                                             country:listCustomer?.customerMeta?.country??"",
//                                             state:  listCustomer?.customerMeta?.state??"",
//                                             area: listCustomer?.customerMeta?.area??"",
//                                             location: listCustomer?.customerMeta?.area??"",
//                                             buildingNumber: listCustomer?.buildingName??"",
//                                           );
//
//                                           List<CartLinesModel> cartLines=[];
//                                           if(newList.isNotEmpty){
//                                             for(var item in newList ){
//                                               cartLines.add(CartLinesModel(
//                                                   image: item.image1,
//                                                   vat: item.vat,
//                                                   variantCode: item.variantCode,
//                                                   inventoryId: item.inventoryId,
//                                                   variantId: item.variantId,
//                                                   quantity: item.quantity,
//                                                   offerDetails: item.discountData,
//                                                   variantName: item.variantName,
//                                                   barcode: item.barcode,
//                                                   price: item.sellingPrice,
//                                                   isActive: true,
//                                                   deliverySlotId: item.deliverySlotId
//                                               )) ;
//                                             }
//
//                                           }
//                                           print("cartLines Model$cartLines");
//                                           context.read<CreateCartCubit>().postCreateCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,cartLinesModel: cartLines??[],address:address ));
//
//                                         }
//                                       },
//
//                                     ),
//
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: context.blockSizeHorizontal*1,),
//
//                           CommonButtonGradiant(isIndiactor: iscreateMainButtonLoading,
//
//                               margin: EdgeInsets.zero,
//                               width: context.blockSizeHorizontal*19.2,
//                               height: context.blockSizeVertical*6,
//                               isHold:invoicePage? invoiceRead?.invoiceData!=null?false:true:false,
//
//                               label:createOrPatch?"UPDATE AND CONTINUE":invoicePage?"PAYMENT AND CONTINUE":"SAVE AND CONTINUE",onTap: ()async{
//                                 setState(() {
//                                   iscreateMainButtonLoading=true;
//                                 });
//                                 // addPatchInvoiceFunction();
//                                 String deliverAddress= "${listCustomer?.customerMeta?.fullname},${listCustomer?.customerMeta?.street},${listCustomer?.customerMeta?.altEmail}";
//                                 SharedPreferences prefs = await SharedPreferences.getInstance();
//                                 String? channelCode = prefs.getString('channel_code');
//                                 if(invoicePage==true){
//                                   invoiceRead?.invoiceData!=null?
//                                   showDailogPopUp(
//                                     context,
//                                     TenthPopUp(
//                                       processId: invoiceRead?.invoiceData?.id,
//                                       amountTotal: totaltotal.toString(),
//                                       orderId: orderIdPayment,
//                                     ),
//                                   ):print("");
//
//
//
//                                 }
//                                 else if(createOrPatch==true){
//                                   ReadOrderCallCenter patch=ReadOrderCallCenter(
//                                       shippingId: readOrders?.shippingId,
//                                       billingId: readOrders?.billingId,
//                                       discount: dicountttotal,
//                                       vatableAmount: vatabtotal,
//                                       vat: vatTotal,
//                                       total: totaltotal,
//                                       unitCost: readOrders?.unitCost,
//                                       sellingPrice: readOrders?.sellingPrice,
//                                       notes: notTextEditing.text,
//                                       remarks: remarkTextEditing.text,
//                                       isHolded: isHolded,
//                                       deliveryCharge: deliveryChargdeTotal,
//                                       deliveryAddress: deliverAddress,
//                                       patchOrderLines: patchList,
//                                       needApproval: patchList.any((item)=>item.needApproval==true)
//
//                                   );
//                                   context.read<PatchOrdersCubit>().postOrderPatch(Variable.callOrderId,patch);
//
//                                 }
//                                 else if(createOrPatch!=true && invoicePage!=true){
//                                   channelId.text = prefs.getString('channelId')??"";
//                                   channelTypeCode.text = prefs.getString('channelTypeCode')??"";
//                                   channelTypeId.text = prefs.getString('channelTypeId')??"";
//                                   channelStockType.text = prefs.getString('channelStockType')??"";
//                                   channelName.text = prefs.getString('channelName')??"";
//                                   channelCodeController.text = prefs.getString('channel_code')??"";
//                                   String? inventoryId = prefs.getString('invId');
//                                   var taxNum = prefs.getString('taxNum')??"";
//                                   CreateOrder create = CreateOrder(
//                                       total: totaltotal,
//                                       vat: vatTotal,
//                                       deliveryCharge: deliveryChargdeTotal,
//                                       // vatTotal,
//                                       vatableAmount: vatabtotal,
//
//                                       remarks: remarkTextEditing.text,
//                                       notes: notTextEditing.text,
//                                       sellingPrice: priceTotal,
//                                       channelCode: channelCodeController.text,
//                                       channelTypeId: channelTypeId.text,
//                                       channelTypeCode: channelTypeCode.text,
//                                       channelName: channelName.text,
//                                       channelId: channelId.text,
//                                       trnNumber: taxNum,
//                                       channelStockType: channelStockType.text,
//                                       discount: dicountttotal,
//                                       inventoryId: inventoryId,
//                                       needApproval:newList.any((item)=>item.needApproval==true),
//
//                                       customerCode: listCustomer?.customerUserCode,
//                                       customerMailId: listCustomer?.email,
//                                       orderType: orderType.text.toLowerCase(),
//                                       customerName: listCustomer?.customerName,
//                                       customerTrnNumber: trn.text,
//                                       isHolded: isHolded,
//                                       unitCost: readOrders?.unitCost??0,
//                                       shippingAddressId: Variable.shippingId,
//                                       billingAddressId: Variable.shippingId,
//                                       deliveryAddress: deliverAddress,
//                                       orderLinesCallcenter: newList);
//                                   print("model$create");   context.read<CreateOrderCubit>().postCreateOrder(create);
//                                 }
//
//
//                               }
//
//                           ),
//                           SizedBox(width:context.blockSizeHorizontal*1,)
//
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//
//
//
//       ),
//     );
//   }
// }
// // Widget tableRowTextStyle{
// //   return
// // }