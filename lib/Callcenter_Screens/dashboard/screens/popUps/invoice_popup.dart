// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:salesapp/CallcenterAppbar.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
// import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
// import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
// import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp10.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp3.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Invoice_Cubit/create_invoice_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
// import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
// import 'package:salesapp/salesapp_Screens/MainScreenPage.dart';
// import 'package:salesapp/common_widget/snackbar.dart';
// import 'package:salesapp/custom_table/colors.dart';
// import 'package:salesapp/custom_table/costumtable.dart';
// import 'package:salesapp/custom_table/costumtable2.dart';
// import 'package:salesapp/main.dart';
// import 'package:salesapp/shared_preference/shared_preference.dart';
// import 'package:salesapp/utils/size_config_hilal.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../../../Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
// import '../../../../Widgets/commonutils.dart';
// import '../../../../Widgets/dropdownbutton.dart';
// import '../../../../utils/variables.dart';
// import '../../../CallCenterWidgets.dart';
// import '../../../CallCenter_MainScreen.dart';
// import '../../../Callcenter/Profile_Screen.dart';
// import 'PopUp2.dart';
//
//
//
// class InvoicePopup extends StatefulWidget {
//   final int id;
//
//   InvoicePopup({required this.id});
//
//   @override
//   State<InvoicePopup> createState() => _InvoicePopupState();
// }
// // CustomerList? listCustomer;
//
// class _InvoicePopupState extends State<InvoicePopup> {
//
//   bool checkbox=false;
//   TextEditingController notesController=TextEditingController();
//   TextEditingController   remarkTextEditing= TextEditingController();
//   InvoiceOrderCallCenter? createInvoice;
//   List<LinesInvoiceCallcenter> invoiceOrder=List.from([]);
//
//
//
//   @override
//   void initState() {
//
//
//
//   }
//
//   String? shifa;
//   saveModel(CustomerList) async{
//
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('cart', json.encode(CustomerList()));
//     shifa=prefs.getString("cart");
//
//   }
//
//   checkBoxClickSelectUnselct(List<LinesInvoiceCallcenter>table1){
//
//     if(table1.isNotEmpty){
//       var val=table1.where((element) => element.isInvoiced==false);
//       if(val.isNotEmpty){
//         checkbox=false;
//       }
//       else{
//         checkbox=true;
//       }
//       setState(() {
//
//       });
//     }
//
//   }
//   selectUnSelect(){
//     invoiceline.clear();
//
//     for(var i=0;i<invoiceOrder.length;i++){
//       if(checkbox==true){
//         setState(() {
//           invoiceOrder[i]=invoiceOrder[i].copyWith(isInvoiced: true);
//         });
//         invoiceline.add(LinesInvoiceCallcenter(
//             id:createInvoice?.invoiceData==null? null:invoiceOrder[i].id,
//             orderlineId:createInvoice?.invoiceData==null?invoiceOrder[i].id: invoiceOrder[i].orderlineId,
//             isInvoiced: invoiceOrder[i].isInvoiced
//         ));
//
//       }
//       else{
//         setState(() {
//           invoiceline.clear();
//           invoiceOrder[i]=invoiceOrder[i].copyWith(isInvoiced: false);
//           print("invoice data");
//           print(invoiceOrder);
//         });
//
//       }
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     print("shifa$shifa");
//     return MultiBlocProvider(
//   providers: [
//     BlocProvider(
//   create: (context) => ReadInvoiceCubit()..getInvoiceRead(widget.id),
// ),
//     BlocProvider(
//       create: (context) => CreateInvoiceCubit(),
//     ),
//   ],
//   child: Builder(
//         builder: (context) {
//           return
//             MultiBlocListener(
//   listeners: [
//     BlocListener<CreateInvoiceCubit, CreateInvoiceState>(
//   listener: (context, state) {
//     state.maybeWhen(orElse: () {
//       // context.
//       context.showSnackBarError("Loading");
//     }, error: () {
//       // context.showSnackBarError(Variable.errorMessege);
//     }, success: (data) {
//       if (data.data1) {
//         Variable.invoiceIdPay=data.data2;
//         print("ID${Variable.invoiceIdPay}");
//         showDailogPopUp(
//             context,
//             SuccessPopup(
//               content: "Order Invoiced Successfully",
//             ));
//       } else {
//         showDailogPopUp(
//             context,
//             FailiurePopup(
//               content: Variable.errorMessege,
//             ));
//
//       }
//     });
//   },
// ),
//
//   ],
//   child: BlocConsumer<ReadInvoiceCubit, ReadInvoiceState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                     orElse: () {},
//                     error: () {
//                       print("error..invoice orders");
//                     },
//                     success: (data) {
//                       setState(() {
//                         invoiceline.clear();
//                         createInvoice=data;
//                         print("invoice$createInvoice");
//                         // lineCall=data.linesCallcenter;
//                         if(createInvoice?.invoiceData==null){
//                           invoiceOrder=List.from(data.linesCallcenter??[]);
//                           notesController.text=createInvoice?.notes??"";
//                           remarkTextEditing.text=createInvoice?.remarks??"";
//                           Variable.orderIdPayment = createInvoice?.orderCode ?? "";
//                           Variable.total = createInvoice?.total ?? 0.0;
//
//                         }
//                         else{
//                           invoiceOrder=List.from(data.invoiceData?.linesCallcenter??[]);
//
//                           notesController.text=createInvoice?.invoiceData?.notes??"";
//                           Variable.orderIdPayment = data.invoiceData?.orderCode ?? "";
//                           Variable.total = data.invoiceData?.total ?? 0.0;
//                           remarkTextEditing.text=createInvoice?.invoiceData?.remarks??"";
//                         }
//                         checkBoxClickSelectUnselct(invoiceOrder);
//
//                         setState(() {
//
//                         });
//                       });
//                     }
//                 );
//
//
//               },
//               builder: (context, state) {
//                 return AlertDialog(
//                   contentPadding: EdgeInsets.only(left: 20,right: 20,top: 20),
//                   content: PopUpHeaderCallcenter(
//                     leftButtonText: "Payment",
//                     buttonVisible: false,
//
//                     rightButtonText: "Post Invoice Order",
//                     width: 900,
//                     height: 700,
//                     label: "Invoice Order",
//                     onTap: (){
//                       print("ontap");
//
//                     },
//                     onApply: () {
//                       print("onApply");
//                     },
//                     onEdit: () {
//                       print("onEdt");
//                     },
//                     dataField: Stack(
//                       children: [
//                         SizedBox(
//                           // height: MediaQuery.of(context).size.height * .6,
//
//                           child: SingleChildScrollView(
//                             child:
//                             Container(
//                               // height: 300,
//
//
//                               child:Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//
//                                   Container(
//                                     height: h / 1.6,
//                                     // color: Colors.red,
//                                     // width: w/7,
//                                     margin: EdgeInsets.symmetric(horizontal: w*.006),
//                                     child: SingleChildScrollView(
//                                       child: customTable(
//                                         border: const TableBorder(
//                                           verticalInside: BorderSide(
//                                               width: 0.5,
//                                               color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),
//                                           horizontalInside:
//                                           BorderSide(width: 0.5, color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),
//                                           top: BorderSide(width: 0.5, color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),
//                                           right: BorderSide(width: 0.5, color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),
//                                           left: BorderSide(width: 0.5, color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),
//                                           bottom: BorderSide(width: 0.5, color: Colors.black45,
//                                               style:
//                                               BorderStyle.solid),),
//                                         tableWidth: .5,
//                                         childrens: [
//                                           TableRow(
//                                             decoration: BoxDecoration(
//
//                                                 color: Colors.green.shade200,
//
//                                                 shape: BoxShape.rectangle,
//
//                                                 border: const Border(bottom: BorderSide(color: Colors.grey))),
//
//                                             children: [
//                                               tableHeadtextTwo(
//                                                 'Sl No',
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//
//
//                                               ),
//
//                                               tableHeadtextTwo(
//                                                 'Item Name',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'Price',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'UOM',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'QTY',
//                                                   // const EdgeInsets.all(15),
//                                                   height: 42,
//                                                   size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'Discount',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'Vatable',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'VAT',
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               tableHeadtextTwo(
//                                                 'Total',
//                                                 textColor: Colors.white,
//                                                 // const EdgeInsets.all(15),
//                                                 height: 42,
//                                                 size: context.blockSizeHorizontal*.9,
//                                               ),
//                                               Container(
//                                                 alignment: Alignment.center,
//                                                 color: Color(0xff3E4F5B),
//                                                 child: CheckedBoxs(
//                                                   // color:const Color(0xff6F91CB),
//                                                   valueChanger:  this.checkbox,
//                                                   onSelection: (bool? value ) {
//                                                     setState(() {
//                                                       checkbox = value!;
//                                                       selectUnSelect();
//                                                     });
//                                                   },
//                                                 ),
//                                               )
//
//                                             ],
//                                           ),
//                                           if (invoiceOrder?.isNotEmpty == true) ...[
//                                             for (var i = 0; i < invoiceOrder.length; i++)
//                                               TableRow(
//                                                   decoration: BoxDecoration(
//                                                       // color: Pellet.tableRowColor,
//                                                       shape: BoxShape.rectangle,
//                                                       border:  Border(
//                                                           left: BorderSide(
//
//                                                               color: Color(0xff3E4F5B).withOpacity(.1),
//                                                               width: .4,
//                                                               style: BorderStyle.solid),
//                                                           bottom: BorderSide(
//
//                                                               color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                               style: BorderStyle.solid),
//                                                           right: BorderSide(
//                                                               color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                               width: .4,
//
//                                                               style: BorderStyle.solid))),
//                                                   children: [
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child:
//                                                         textPadding((i + 1).toString(),)
//                                                       // Text(keys[i].key??"")
//
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i].variantName ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.sellingPrice?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.uomName?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.quantity?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.discount?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.vatableAmount?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.vat?.toString() ?? "",
//
//                                                         ),
//                                                     ),     TableCell(
//                                                         verticalAlignment:
//                                                         TableCellVerticalAlignment
//                                                             .middle,
//                                                         child: textOnclickPadding(
//                                                           ontap: () {
//
//                                                           },
//                                                           text: invoiceOrder[i]?.totalAmount?.toString() ?? "",
//
//                                                         ),
//                                                     ),
//                                                     TableCell(
//                                                       verticalAlignment:
//                                                       TableCellVerticalAlignment
//                                                           .middle,
//                                                       child: CheckedBoxes(
//                                                           valueChanger:  invoiceOrder[i]?.isInvoiced,
//                                                           onSelection: (bool? value) {
//                                                             setState(() {
//
//                                                               var isInvoiced=invoiceOrder[i].isInvoiced;
//                                                               isInvoiced=!isInvoiced!;
//                                                               invoiceOrder[i]=invoiceOrder[i].copyWith(
//                                                                   isInvoiced: isInvoiced
//                                                               );
//                                                               checkBoxClickSelectUnselct(invoiceOrder);
//
//                                                             });
//                                                             if(invoiceOrder[i].isInvoiced==true){
//                                                               invoiceline.add(LinesInvoiceCallcenter(
//                                                                   id:createInvoice?.invoiceData==null? null:invoiceOrder[i].id,
//                                                                   orderlineId:createInvoice?.invoiceData==null?invoiceOrder[i].id: invoiceOrder[i].orderlineId,
//                                                                   isInvoiced: invoiceOrder[i].isInvoiced
//                                                               ));
//
//                                                               print("checkBOX${invoiceline}");
//                                                             }}
//
//                                                       ),
//                                                     ),
//                                                   ]),
//                                           ],
//                                         ],
//                                         widths: {
//                                           0: FlexColumnWidth(1),
//                                           1: FlexColumnWidth(3),
//                                           2: FlexColumnWidth(3),
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       CommonButtonGradiant(
//                                         margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
//                                         label:"Notes & Remarks" ,
//                                         height: context.blockSizeVertical*4.5,
//                                         width: context.blockSizeHorizontal*8.5 ,
//                                         onTap: (){  showDailogPopUp(
//                                           context,
//                                           ThirdPopUp(
//                                             notesOrRemarks: notesController,
//                                             remarkTextEditing: remarkTextEditing,
//                                           ),
//                                         );},
//
//                                       ),
//                                       SizedBox(width: context.blockSizeHorizontal*.45,),
//                                       // SizedBox(
//                                       //   height: context.blockSizeVertical*4.5,
//                                       //   child: TextButton(
//                                       //       onPressed: (){
//                                       //         showDailogPopUp(
//                                       //           context,
//                                       //           TenthPopUp(
//                                       //             amountTotal:createInvoice?.invoiceData==null? createInvoice?.total.toString():createInvoice?.invoiceData?.total.toString(),
//                                       //             orderId: Variable.orderIdPayment,
//                                       //           ),
//                                       //         );
//                                       //       },
//                                       //       style: ButtonStyle(
//                                       //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                                       //             borderRadius: BorderRadius.circular(2),
//                                       //             // side: BorderSide(color: Color(0xffF4F4F4))
//                                       //           )),
//                                       //           backgroundColor: MaterialStateProperty.all(Color(0xff219F54))),
//                                       //       child: Row(
//                                       //         mainAxisAlignment: MainAxisAlignment.center,
//                                       //         children: [
//                                       //           Text(
//                                       //             "PAY NOW",
//                                       //             style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
//                                       //           ),
//                                       //         ],
//                                       //       )),
//                                       // ),
//                                       CommonButtonGradiant(
//                                         height: context.blockSizeVertical*4.5,
//                                         width: context.blockSizeHorizontal*8.5 ,
//                                         onTap: (){
//                                           showDailogPopUp(
//                                             context,
//                                             TenthPopUp(
//                                               amountTotal:createInvoice?.invoiceData==null? createInvoice?.total.toString():createInvoice?.invoiceData?.total.toString(),
//                                               orderId: Variable.orderIdPayment,
//                                             ),
//                                           );
//
//                                         },
//                                         label:"Payment" ,
//
//
//                                       ),
//                                       SizedBox(width: context.blockSizeHorizontal*.45,),
//
//                                       CommonButtonGradiant(
//                                         height: context.blockSizeVertical*4.5,
//                                         width: context.blockSizeHorizontal*8.5 ,
//                                         onTap: (){
//
//                                           InvoiceOrderCallCenter beforeInvoice=InvoiceOrderCallCenter(
//                                               orderId:createInvoice?.invoiceData==null? createInvoice?.id:createInvoice?.invoiceData?.id,
//                                               notes: createInvoice?.notes,
//                                               remarks: createInvoice?.remarks,
//                                               invoiceLinesCallcenter: invoiceline
//                                           );
//                                           print("invoiced$beforeInvoice");
//                                           setState(() {
//                                             context.read<CreateInvoiceCubit>().postCreateInvoice(beforeInvoice);
//
//                                           });
//
//                                         },
//                                         label:"Create Invoice" ,
//
//
//                                       ),
//
//
//                                     ],
//                                   )
//
//
//
//
//                                 ],
//                               ) ,
//
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
// );
//
//         }
//     ),
// );
//   }
// }