// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
//
//
// import '../../../../utils/variables.dart';
// import 'Reusable_widget_web.dart';
//
//
// class WarrentyDetailsPage extends StatefulWidget {
//   final TextEditingController? remarks;
//   final String? vendorid;
//   final TextEditingController? promised;
//   final TextEditingController? plannded;
//   // final GenarateMissingLines? model;
//   const WarrentyDetailsPage({Key? key,
//     required this.remarks,
//     required this.promised,
//     required this.plannded,
//     // required this.model,
//     required this.vendorid}) : super(key: key);
//
//   @override
//   State<WarrentyDetailsPage> createState() => _WarrentyDetailsPageState();
// }
//
// class _WarrentyDetailsPageState extends State<WarrentyDetailsPage> {
//   TextEditingController remarks=TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return BlocProvider(
//   create: (context) => MissingLinesCubit(),
//   child: Builder(
//     builder: (context) {
//       return MultiBlocListener(
//
//           listeners: [
//             BlocListener<MissingLinesCubit, MissingLinesState>(
//                 listener: (context,state){
//                   state.maybeWhen(orElse: () {
//                     // context.
//                     context.showSnackBarError("Loadingggg");
//                   }, error: () {
//                     context.showSnackBarError(Variable.errorMessege);
//                   }, success: (data) {
//                     if (data.data1)
//                       context.showSnackBarSuccess(data.data2);
//                     else {
//                       context.showSnackBarError(data.data2);
//                       print(data.data1);
//                     }
//                     ;
//                   });
//                 })
//
//           ],
//           child:
//             AlertDialog(
//               content: PopUpHeader(
//                 label: "Create system generated Po",
//                 onApply: () {
//
//                 },
//                 onEdit: () {
//                   // print("loooo");
//                   GenarateMissingLines? model = widget.model;
//
//                   model= model?.copyWith(
//                     remarks: widget.remarks?.text,
//                     plannedReceiptDate: widget.plannded?.text,
//                     promisedReceiptDate: widget.promised?.text,
//                     vendorId: widget.vendorid,
//
//                   );
//                   print("uuuuu+$model");
//                   context.read<MissingLinesCubit>().genaratePost(model!);
//
//
//                 },
//                 dataField: SizedBox(
//                   height: MediaQuery.of(context).size.height * .6,
//
//                   child: SingleChildScrollView(
//                     child:
//                     Container(
//                       height: 300,
//                       // width: MediaQuery.of(context).size.width-20,
//                       child:Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "purchase order",
//                           ),
//                           Divider(
//                             color: Colors.grey,
//                             height: 4.0,
//                           ),
//                           SizedBox(height: 15,),
//                           Row(
//                             children: [
//                               Expanded(child: Container(
//                                 child: Column(
//                                   children: [
//                                     NormalField( text: 'vendor id', readOnlyField: true, values: widget.vendorid.toString(),),
//
//                                     DateForTextField(text: "Promised Receipt Date",
//                                       controller: widget.promised,
//                                       // readOnlyField: false,
//                                       format: DateFormat('yyyy-MM-dd'),
//                                       onSaved: (newValue) {
//                                         widget.promised?.text = newValue
//                                             ?.toIso8601String()
//                                             .split("T")[0] ??
//                                             "";
//                                       },
//                                       enable: true,
//                                     ),
//
//                                   ],
//                                 ),
//                               )),
//                               SizedBox(width: 20,),
//                               Expanded(child: Container(
//                                 child: Column(
//                                   children: [
//                                     DateForTextField(text: "Planned Receipt Date",
//                                       controller: widget.plannded,
//                                       // readOnlyField: false,
//                                       format: DateFormat('yyyy-MM-dd'),
//                                       onSaved: (newValue) {
//                                         widget.plannded?.text = newValue
//                                             ?.toIso8601String()
//                                             .split("T")[0] ??
//                                             "";
//                                       },
//                                       enable: true,
//                                     ),
//                                     LargeTextField(
//
//                                         controller: remarks,
//                                         text: "remarks", readOnlyField: false,),
//
//                                   ],
//
//                                 ),
//                               ))
//                             ],
//                           )
//
//
//                         ],
//                       ) ,
//
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//         );
//     }
//   ),
// );
//   }
// }