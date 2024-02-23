// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
// import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp5.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp6.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/offer_products.dart';
// import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/reccomodation_popup.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
// import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
// import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
// import 'package:salesapp/Cubit/negotationList/negotation_list_cubit.dart';
// import 'package:salesapp/Cubit/negotiation/negotiation_post_cubit.dart';
// import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
// import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
// import 'package:salesapp/Widgets/commonutils.dart';
// import 'package:salesapp/utils/size_config_hilal.dart';
// import 'package:salesapp/utils/variables.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../common_widgets/callcenter_common_listile.dart';
// import '../dashboard/screens/gp_card.dart';
// import 'Profile_Screen.dart';
//
// class ExploreScreen extends StatefulWidget {
//   final Function editChange;
//   final Function addPatchInvoiceFunction;
//   final TextEditingController? allCostemerId;
//   final TextEditingController text;
//   final TextEditingController stock;
//   final TextEditingController       negotiationText;
//   final TextEditingController? barcode;
//   final TextEditingController? customerUsercode;
//   final TextEditingController? productName;
//   final Function priceDataChange;
//   final bool? isChangeHistory;
//   final double totalCartValue;
//   const ExploreScreen({Key? key, required this.editChange, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory, required this.negotiationText, required this.totalCartValue, required this.addPatchInvoiceFunction}) : super(key: key);
//
//   @override
//   State<ExploreScreen> createState() => _ExploreScreenState();
// }
//
// class _ExploreScreenState extends State<ExploreScreen> {
//   List<RecommendationCallCenterModel> recommendationlist=List.from([]);
//   GpCardData? GpData;
//   NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
//   String negotationText="";
//   @override
//   void initState() {
//     context.read<GpCardReadCubit>().getGpCallcenter();
//     context
//         .read<RecommendationCubit>()
//         .getRecommendationList();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//   create: (context) => NegotationListCubit(),
//   child: MultiBlocListener(
//   listeners: [
//     BlocListener<NegotiationPostCubit, NegotiationPostState>(
//   listener: (context, state) {
//     state.maybeWhen(
//         orElse: () {},
//         error: () {
//
//         },
//         success: (data) {
//           setState(() {
//             if(data.data1){
//               negotationObject=data.data2;
//               if(negotationObject.negotiationType=="based_on_cart_value"){
//                 if(negotationObject.basedOn=="percentage"){
//                widget.negotiationText .text="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue} %";
//                 }
//                 else{
//                   widget.negotiationText .text="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue}AED";
//                 }
//
//               }
//               else{
//                 if(negotationObject.basedOn=="percentage"){
//                   widget.negotiationText .text="Buy More  to get ${negotationObject.negotiationValue} %";
//                 }
//                 else{
//                   widget.negotiationText .text="Buy More to get ${negotationObject.negotiationValue}AED";
//                 }
//
//               }
//             }
//
//             print("dataaaaaaaaaaaaaa"+data.data1.toString());
//             print("dataaaaaaaaaaaaaa"+data.data2.toString());
//
//
//
//
//
//
//
//           });
//
//         }
//     );
//   },
// ),
//     BlocListener<GpCardReadCubit, GpCardReadState>(
//       listener: (context, state) {
//         state.maybeWhen(
//             orElse: () {},
//             error: () {
//               print("error..");
//             },
//             success: (data) {
//               setState(() {
//                 GpData = data;
//                 // print("hhh$GpData");
//               });
//             }
//         );
//
//       },
//     ),
//   ],
//   child: BlocConsumer<RecommendationCubit, RecommendationState>(
//   listener: (context, state) {
//     print("state++++++++++++++++++++++++++++++++");
//     state.maybeWhen(
//         orElse: () {},
//         error: () {
//           print("error");
//         },
//         success: (data) {
//           recommendationlist=List.from(data.data);
//
//         });
//   },
//   builder: (context, state) {
//     return
//       Container(
//       color: Colors.white,
//         child: Column(
//       children: [
//
//         Container(
//           height: context.blockSizeVertical*6.5,
//           margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*.5,  ),
//
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:[
//               // SizedBox(width: context.blockSizeHorizontal*.5,),
//               Text("Recommendation",style: TextStyle(fontSize:context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),),
//               Spacer(),
//               // IconButton(onPressed: (){
//               //   showDailogPopUp(
//               //     context,
//               //     RecommodationPopup(),
//               //   );
//               // }, icon: Icon(Icons.menu)),
//               InkWell(
//                 onTap: (){
//                   showDailogPopUp(
//                     context,
//                     RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
//                   );
//                 },
//                 child: Image(
//                   height: context.blockSizeHorizontal*1,
//                     image: AssetImage(
//                   "asset_images/recommondationmenu.png"
//                 )),
//               ),SizedBox(width: context.blockSizeHorizontal*.8,)
//
//
//             ],
//
//           ),
//         ),
//         Expanded(child: ListView.separated(
//           itemCount: recommendationlist.length,
//           itemBuilder: (context, index) =>
//
//           CallCennterCommonListtile(
//             title: recommendationlist[index].name??"",
//             stock: recommendationlist[index]?.stockCount.toString()??"",
//             leadingImage: recommendationlist[index].image1??"",
//             subTitle:"AED ${recommendationlist[index].priceData.toString()}" ,
//             onAdd: (){
//               setState(() {
//                 widget.editChange();
//
//                 widget.allCostemerId?.text=recommendationlist[index].id.toString();
//                 context.read<ReadVariantCubit>().getVariantRead(recommendationlist[index].id??0);
//               });
//
//
//
//             },
//           ),
//  separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 1.5,); },)),
//         InkWell(
//           onTap: (){
//             // context.read<NegotationListCubit>().getNegotationList(negotationObject.id.toString());
//             showDailogPopUp(
//               context,
//               OfferPeriodPopup(id: negotationObject.id.toString(),model: negotationObject,totalCartValue: widget.totalCartValue,addPatchInvoiceFunction: widget.addPatchInvoiceFunction),
//             );
//
//           },
//           child: Container(
//             height: context.blockSizeVertical*7,
//             color: Color(0xff6F91CB),
//             child: Container(
//               margin: EdgeInsets.all(7),
//               child: DottedBorder(
//
//                 color: Colors.white,
//                 child: Container(
//                   width:context.blockSizeHorizontal*20 ,
//                   height: context.blockSizeVertical*6,
//
//                   alignment: Alignment.center,
//                   child: Text(widget.negotiationText .text.toString(),style: TextStyle(color: Colors.white),),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: context.blockSizeVertical*.3,),
//         ButtonCard(isChangeHistory: widget.isChangeHistory,
//           ontap: () async {
//             if(widget.isChangeHistory!){
//               SharedPreferences prefs = await SharedPreferences.getInstance();
//               String? channelCode = prefs.getString('channel_code');
//               // String? channelCode = "CHNL1000"
//               String? customerCode = prefs.getString('customerUserCode');
//               if(  createOrPatch!=true && invoicePage!=true){
//                 widget.customerUsercode?.text=customerCode??"";
//               }
//               else{}
//               showDailogPopUp(
//                 context,
//                 FifthPopUp(
//                   allCostemerId: widget.allCostemerId,
//                   customerUsercode: widget.customerUsercode,
//
//                   productName: widget.productName,
//                   barcode: widget.barcode,
//                 ),
//               );
//             }
//
//           },
//           ontapp: () async {
//             if(widget.isChangeHistory!){
//               SharedPreferences prefs = await SharedPreferences.getInstance();
//               String? channelCode = prefs.getString('channel_code');
//               // String? channelCode = "CHNL1000"
//               String? customerCode = prefs.getString('customerUserCode');
//               showDailogPopUp(
//                 context,
//                 SixthPopUp(
//                   allCustomerId: widget.allCostemerId,
//                   customerUsercode: widget.customerUsercode,
//                   productName: widget.productName,
//                   barcode: widget.barcode,
//
//                 ),
//               );
//             }
//
//           },
//
//         ),
//         SizedBox(height: context.blockSizeVertical*.5,),
//
//         Container(
//           color: Colors.white,
//
//           child: SizedBox(height: context.blockSizeVertical*4.3,
//             child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children:  [
//                 Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
//                 Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
//               ],),
//           ),
//         ),
//         SizedBox(height: context.blockSizeVertical*.4,),
//
//         GPCardLong(
//           currentGP: GpData?.currentGp??0.0,
//           dailyGP: GpData?.dailyGp??0.0,
//         )
//
//       ],
//     ));
//   },
// ),
// ),
// );
//   }
// }
