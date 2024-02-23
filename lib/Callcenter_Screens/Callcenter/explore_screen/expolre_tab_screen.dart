import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Profile_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen/cart_screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen/wish_list_screen.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/gp_card.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp5.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp6.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/offer_products.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/reccomodation_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
import 'package:salesapp/Cubit/negotationList/negotation_list_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_post_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'explore_reccomendation.dart';

class ExploreScreen extends StatefulWidget {
  final Function editChange;
  final Function addPatchInvoiceFunction;
  final TextEditingController? allCostemerId;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController       negotiationText;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;
  final TextEditingController orderType;
  final Function priceDataChange;
  final bool? isChangeHistory;
  final bool isRejectOrApprove;
  final bool isRejectOrApproveCart;
  final double totalCartValue;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge) totalValue;

  NegotiationOutPutModel negotiationObject;
   ExploreScreen({Key? key, required this.negotiationObject,required this.editChange,this.isRejectOrApprove=false,this.isRejectOrApproveCart=false, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory, required this.negotiationText, required this.totalCartValue, required this.addPatchInvoiceFunction, required this.orderType, required this.totalValue, }) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>with TickerProviderStateMixin {
  List<RecommendationCallCenterModel> recommendationlist=List.from([]);
  GpCardData? GpData;
  TabController? tabController;

  String negotationText="";
  @override
  void initState() {
    context.read<GpCardReadCubit>().getGpCallcenter();
    context.read<RecommendationCubit>().getRecommendationList();
    tabController =  TabController(length: 3, vsync: this, );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NegotationListCubit(),
      child: BlocConsumer<RecommendationCubit, RecommendationState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                recommendationlist=List.from(data.data);

              });
        },
        builder: (context, state) {
          return
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      height: context.blockSizeVertical*5,
                      padding: EdgeInsets.only(top: 4),
                      child: TabBar(
                        physics: NeverScrollableScrollPhysics(),

                          labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                          unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                          padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.2),
                          labelPadding:EdgeInsets.only(bottom: context.blockSizeVertical*.3,right: context.blockSizeHorizontal*1.5) ,
                          // indicatorPadding:EdgeInsets.only( right: context.blockSizeHorizontal*1.4) ,
                          isScrollable: true,
                          indicatorColor: Color(0xff687892), indicatorWeight: 5,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 4.0,
                                color: Color(0xff687892),
                              ),
                              insets: EdgeInsets.only( right: context.blockSizeHorizontal*.8)),

                          controller: tabController,

                          tabs: [
                            Container(
                                height: 100,
                                alignment: Alignment.center,
                                child: Text("Recommendation",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),)),
                            Text("Cart",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                            Text("Wish list",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                            // Text("Warranty",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                          ]),


                    ),

                    // Container(
                    //   height: context.blockSizeVertical*6.5,
                    //   margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*.5,  ),
                    //
                    //   child: Row(
                    //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children:[
                    //       // SizedBox(width: context.blockSizeHorizontal*.5,),
                    //       Text("Recommendation",style: TextStyle(fontSize:context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),),
                    //       Spacer(),
                    //       // IconButton(onPressed: (){
                    //       //   showDailogPopUp(
                    //       //     context,
                    //       //     RecommodationPopup(),
                    //       //   );
                    //       // }, icon: Icon(Icons.menu)),
                    //       InkWell(
                    //         onTap: (){
                    //           showDailogPopUp(
                    //             context,
                    //             RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
                    //           );
                    //         },
                    //         child: Image(
                    //             height: context.blockSizeHorizontal*1,
                    //             image: AssetImage(
                    //                 "asset_images/recommondationmenu.png"
                    //             )),
                    //       ),SizedBox(width: context.blockSizeHorizontal*.8,)
                    //
                    //
                    //     ],
                    //
                    //   ),
                    // ),
                    Expanded(
                      child: Container(
                        color: Colors.white,

                        child: TabBarView(
                          controller: tabController,
                          physics: const NeverScrollableScrollPhysics(),
                          children:  [
                            ExploreReccomendationScreen(
                                addPatchInvoiceFunction:widget.addPatchInvoiceFunction,
                                totalCartValue: widget.totalCartValue,
                                negotiationText: widget.negotiationText,
                                priceDataChange:widget.priceDataChange,
                                isChangeHistory: widget.isChangeHistory,
                                allCostemerId: widget.allCostemerId,
                                customerUsercode: widget.customerUsercode,
                                stock: widget.stock,
                                text: widget.text,
                                productName: widget.productName,
                                barcode: widget.barcode,
                                editChange: widget.editChange
                            ),

                            ExploreCartScreen(

                                addPatchInvoiceFunction:widget.addPatchInvoiceFunction,
                                totalCartValue: widget.totalCartValue,
                                negotiationText: widget.negotiationText,
                                priceDataChange:widget.priceDataChange,
                                isChangeHistory: widget.isChangeHistory,
                                allCostemerId: widget.allCostemerId,
                                customerUsercode: widget.customerUsercode,
                                stock: widget.stock,
                                text: widget.text,
                                productName: widget.productName,
                                barcode: widget.barcode,
                                editChange: widget.editChange
                            ),  ExploreWishListScreen(

                                addPatchInvoiceFunction:widget.addPatchInvoiceFunction,
                                totalCartValue: widget.totalCartValue,
                                negotiationText: widget.negotiationText,
                                priceDataChange:widget.priceDataChange,
                                isChangeHistory: widget.isChangeHistory,
                                allCostemerId: widget.allCostemerId,
                                customerUsercode: widget.customerUsercode,
                                stock: widget.stock,
                                text: widget.text,
                                productName: widget.productName,
                                barcode: widget.barcode,
                                editChange: widget.editChange
                            ),

                            // ProfileScreen(
                            //   allCustomerId: widget.allCostemerId,
                            //   rightSideScreenRefresh: rightSideScreenRefresh,
                            //   stock: widget.stock,
                            //   text: widget.text,
                            // ),
                            // ProductInfoScreen(
                            //   productID: widget.allCostemerId,
                            //   controller1: widget.controller1,
                            //   controller2: widget.controller2,
                            //   controller3: widget.controller3,
                            //   controller4: widget.controller4,
                            //   text: widget.text,
                            //   stock: widget.stock,
                            //   editChange: widget.editChange,
                            //   allCostemerId: widget.allCostemerId,
                            // ),
                            // WarrantyScreen(
                            //   priceDataChange:widget.priceDataChange,
                            //   allCustomerId: widget.allCostemerId,
                            // )

                          ],
                        ),
                      ),
                    ),








                    if(widget.negotiationText.text.isNotEmpty && widget.isRejectOrApprove!=true &&widget.isRejectOrApprove!=true &&invoicePage!=true)          Container(
                      margin: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*1, ),
                      child: NegotiationButton(
                        onTap: (){
                          if(widget.orderType.text.isEmpty){
                            context.showSnackBarError("Please select the order type");
                          }
                          else{
                            showDailogPopUp(
                              context,
                              OfferPeriodPopup(
                                orderTypeText:widget.negotiationText.text ,
                                  totalValue: widget.totalValue,

                                  id: negotationObject.id.toString(),model: negotationObject,totalCartValue: widget.totalCartValue,addPatchInvoiceFunction: widget.addPatchInvoiceFunction),
                            );
                          }
                        },
                          label: "",

                      ),
                    ),

               // if(widget.negotiationText.text.isNotEmpty)     InkWell(
               //        onTap: (){
               //          if(widget.orderType.text.isEmpty){
               //            context.showSnackBarError("Please select the order type");
               //          }
               //          else{
               //            showDailogPopUp(
               //              context,
               //              OfferPeriodPopup(
               //                totalValue: widget.totalValue,
               //
               //                  id: negotationObject.id.toString(),model: negotationObject,totalCartValue: widget.totalCartValue,addPatchInvoiceFunction: widget.addPatchInvoiceFunction),
               //            );
               //          }
               //          // context.read<NegotationListCubit>().getNegotationList(negotationObject.id.toString());
               //
               //
               //        },
               //        child: Container(
               //          height: context.blockSizeVertical*7,
               //          color: Color(0xff6F91CB),
               //          child: Container(
               //            margin: EdgeInsets.all(7),
               //            child: DottedBorder(
               //
               //              color: Colors.white,
               //              child: Container(
               //                width:context.blockSizeHorizontal*20 ,
               //                height: context.blockSizeVertical*6,
               //
               //                alignment: Alignment.center,
               //                child: Text(widget.negotiationText .text.toString(),style: TextStyle(color: Colors.white),),
               //              ),
               //            ),
               //          ),
               //        ),
               //      ),








                    // SizedBox(height: context.blockSizeVertical*.3,),
                    // ButtonCard(isChangeHistory: widget.isChangeHistory,
                    //   ontap: () async {
                    //     if(widget.isChangeHistory!){
                    //       SharedPreferences prefs = await SharedPreferences.getInstance();
                    //       String? channelCode = prefs.getString('channel_code');
                    //       // String? channelCode = "CHNL1000"
                    //       String? customerCode = prefs.getString('customerUserCode');
                    //       if(  createOrPatch!=true && invoicePage!=true){
                    //         widget.customerUsercode?.text=customerCode??"";
                    //       }
                    //       else{}
                    //       showDailogPopUp(
                    //         context,
                    //         FifthPopUp(
                    //           allCostemerId: widget.allCostemerId,
                    //           customerUsercode: widget.customerUsercode,
                    //
                    //           productName: widget.productName,
                    //           barcode: widget.barcode,
                    //         ),
                    //       );
                    //     }
                    //
                    //   },
                    //   ontapp: () async {
                    //     if(widget.isChangeHistory!){
                    //       SharedPreferences prefs = await SharedPreferences.getInstance();
                    //       String? channelCode = prefs.getString('channel_code');
                    //       // String? channelCode = "CHNL1000"
                    //       String? customerCode = prefs.getString('customerUserCode');
                    //       showDailogPopUp(
                    //         context,
                    //         SixthPopUp(
                    //           allCustomerId: widget.allCostemerId,
                    //           customerUsercode: widget.customerUsercode,
                    //           productName: widget.productName,
                    //           barcode: widget.barcode,
                    //
                    //         ),
                    //       );
                    //     }
                    //
                    //   },
                    //
                    // ),
                    // SizedBox(height: context.blockSizeVertical*.5,),
                    //
                    // Container(
                    //   color: Colors.white,
                    //
                    //   child: SizedBox(height: context.blockSizeVertical*4.3,
                    //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children:  [
                    //         Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                    //         Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                    //       ],),
                    //   ),
                    // ),
                    // SizedBox(height: context.blockSizeVertical*.4,),
                    //
                    // GPCardLong(
                    //   currentGP: GpData?.currentGp??0.0,
                    //   dailyGP: GpData?.dailyGp??0.0,
                    // )

                  ],
                ));
        },
      ),
    );
  }
}
