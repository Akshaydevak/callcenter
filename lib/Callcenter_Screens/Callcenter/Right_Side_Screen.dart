import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Profile_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/offer_screen.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/gp_card.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp5.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp6.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Info_Screen.dart';
import 'explore_screen/expolre_tab_screen.dart';


class RightSideScreen extends StatefulWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController customerUsercode;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController text;
  final TextEditingController? allCostemerId;
  final TextEditingController stock;
  final TextEditingController? barcode;
  final TextEditingController ordrType;
  final TextEditingController? productName;
  final TextEditingController? allHistoryId;
  final TextEditingController negotationText;
  final bool? isChangeAllHistory;
  final bool isRejectOrApprove;
  final bool isRejectOrApproveCart;
  final double totaCArtValue;
  final Function editChange;
  final Function priceDataChange;
  final Function addPatchInvoiceFunction;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge) totalValue;
  NegotiationOutPutModel negotiationObject;

   RightSideScreen({Key? key,this.isRejectOrApprove=false,required this.isRejectOrApproveCart,this.allCostemerId,required this.negotiationObject, required this.controller1, required this.controller2, required this.controller3, required this.controller4, required this.text, required this.stock, this.barcode, this.productName, required this.customerUsercode, this.allHistoryId, this.isChangeAllHistory, required this.editChange, required this.priceDataChange, required this.negotationText, required this.totaCArtValue, required this.addPatchInvoiceFunction,required this.ordrType, required this.totalValue,}) : super(key: key);

  @override
  State<RightSideScreen> createState() => _RightSideScreenState();
}

class _RightSideScreenState extends State<RightSideScreen> with TickerProviderStateMixin{
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  GpCardData? GpData;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <GpCardReadCubit, GpCardReadState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..");
            },
            success: (data) {

                GpData = data;
                // print("hhh$GpData");

            }
        );

      },
  builder: (context, state) {
    return Padding(
      padding:  EdgeInsets.only(top: context.blockSizeVertical * 1.6,bottom: context.blockSizeVertical * 2.6,),
      child:widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true?
      DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Color(0xffE5E5E5),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(32),
              child: IgnorePointer(
                ignoring: false,
                child: AppBar(
                  toolbarHeight: context.blockSizeVertical*0.05,
                  automaticallyImplyLeading: false,
                  backgroundColor: logined? Color(0xffF2F2F2):Colors.white,
                  elevation: 0,
                  bottom:
                  PreferredSize(
                    preferredSize: Size.zero,
                    child:logined?
                    Container(
                      height: 32,
                      alignment: Alignment.topLeft,
                      child:
                      TabBar(padding: EdgeInsets.zero,
                          labelColor: const Color(0xff333840),
                          isScrollable: true,
                          // labelPadding: EdgeInsets.zero,

                          unselectedLabelColor: const Color(0xff333840),


                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              color: Color(0xffFFFFFF)),
                          tabs: [
                            Align(
                              alignment: Alignment.center,
                              child: Text("Info",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9,fontWeight: FontWeight.bold,),),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Explore",style: TextStyle(fontSize: context.blockSizeHorizontal*0.82,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Offer",style: TextStyle(fontSize: context.blockSizeHorizontal*0.82,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Dynamics",style: TextStyle(fontSize: context.blockSizeHorizontal*0.82,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ]
                      ),
                    ):Container(
                      height: context.blockSizeVertical*0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            body:logined!=true?
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,

                    padding:  EdgeInsets.only(top: context.blockSizeHorizontal*2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState((){});
                            showDailogPopUp(
                              context,
                              WarrentyDetailsPage(),
                            );
                          },
                          child: Container(
                            width: context.blockSizeHorizontal*15,
                            height: context.blockSizeVertical*8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              // border: Border.all(color: Colors.white, width: 1, ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26cccccc),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff687892), Color(0xff6D7C96), Color(0xff8498B8)], ),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                SizedBox(width: context.blockSizeHorizontal*1,),
                                CircleAvatar(
                                    child: Icon(Icons.add,color: Color(0xff7F8DA1),),
                                    minRadius: context.blockSizeHorizontal*1,
                                    backgroundColor: Color(0xffFFFFFF)),
                                SizedBox(width: context.blockSizeHorizontal*1,),
                                Text(
                                  "Start New Order",
                                  style: GoogleFonts.roboto(
                                    color: Color(0xffFFFFFF),
                                    fontSize: context.blockSizeHorizontal*1.3,

                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ):
            Column(
              children: [
                Expanded(
                  child:
                
                  TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                      children: [
                    InfoScreen(
                      isRejectOrApproveCart: widget.isRejectOrApproveCart,
                      priceDataChange:widget.priceDataChange,
                      isChangeHistory: widget.isChangeAllHistory,
                      allCostemerId: widget.allCostemerId,
                      customerUsercode: widget.customerUsercode,
                      stock: widget.stock,
                      text: widget.text,
                      productName: widget.productName,
                      barcode: widget.barcode,
                      controller1: widget.controller1,
                      controller2: widget.controller2,
                      controller3: widget.controller3,
                      controller4: widget.controller4,
                        editChange: widget.editChange
                    ),
                        ExploreScreen(
                          isRejectOrApproveCart: widget.isRejectOrApproveCart,
                          isRejectOrApprove: widget.isRejectOrApprove,
                          orderType: widget.ordrType,
                          totalValue: widget.totalValue,

                          negotiationObject: widget.negotiationObject,
                            addPatchInvoiceFunction:widget.addPatchInvoiceFunction,
                          totalCartValue: widget.totaCArtValue,
                          negotiationText: widget.negotationText,
                            priceDataChange:widget.priceDataChange,
                            isChangeHistory: widget.isChangeAllHistory,
                            allCostemerId: widget.allCostemerId,
                            customerUsercode: widget.customerUsercode,
                            stock: widget.stock,
                            text: widget.text,
                            productName: widget.productName,
                            barcode: widget.barcode,
                            editChange: widget.editChange),
                        CallcnterOfferScreen(
                            priceDataChange:widget.priceDataChange,
                            isChangeHistory: widget.isChangeAllHistory,
                            allCostemerId: widget.allCostemerId,
                            customerUsercode: widget.customerUsercode,
                            stock: widget.stock,
                            text: widget.text,
                            productName: widget.productName,
                            barcode: widget.barcode,
                            editChange: widget.editChange

                        ),
                    Icon(Icons.games),
                  ]),
                ),
                invoicePage!=true?
                ButtonCard(isChangeHistory: widget.isChangeAllHistory,
                  ontap: () async {
                    if(widget.isChangeAllHistory!){
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      String? channelCode = prefs.getString('channel_code');
                      // String? channelCode = "CHNL1000"
                      String? customerCode = prefs.getString('customerUserCode');
                      if(  createOrPatch!=true && invoicePage!=true){
                        widget.customerUsercode?.text=customerCode??"";
                      }
                      else{}
                      showDailogPopUp(
                        context,
                        FifthPopUp(
                          allCostemerId: widget.allCostemerId,
                          customerUsercode: widget.customerUsercode,

                          productName: widget.productName,
                          barcode: widget.barcode,
                        ),
                      );
                    }

                  },
                  ontapp: () async {
                    if(widget.isChangeAllHistory!){
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      String? channelCode = prefs.getString('channel_code');
                      // String? channelCode = "CHNL1000"
                      String? customerCode = prefs.getString('customerUserCode');
                      showDailogPopUp(
                        context,
                        SixthPopUp(
                          allCustomerId: widget.allCostemerId,
                          customerUsercode: widget.customerUsercode,
                          productName: widget.productName,
                          barcode: widget.barcode,

                        ),
                      );
                    }

                  },

                ):Container(
                   height: context.blockSizeVertical * 8.5,
                  color: Colors.white,),
                SizedBox(height: context.blockSizeVertical*.5,),

                Container(
                  color: Colors.white,

                  child: SizedBox(height: context.blockSizeVertical*4.3,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                        Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                      ],),
                  ),
                ),
                SizedBox(height: context.blockSizeVertical*.4,),

                GPCardLong(
                  currentGP: GpData?.currentGp??0.0,
                  dailyGP: GpData?.dailyGp??0.0,
                )
              ],
            ),
          )
      ): Column(
        children: [
          Expanded(
            child:

                  InfoScreen(
                    isRejectOrApproveCart: widget.isRejectOrApproveCart,
                      priceDataChange:widget.priceDataChange,
                      isChangeHistory: widget.isChangeAllHistory,
                      allCostemerId: widget.allCostemerId,
                      customerUsercode: widget.customerUsercode,
                      stock: widget.stock,
                      text: widget.text,
                      productName: widget.productName,
                      barcode: widget.barcode,
                      controller1: widget.controller1,
                      controller2: widget.controller2,
                      controller3: widget.controller3,
                      controller4: widget.controller4,
                      editChange: widget.editChange,
                    isRejectOrApprove: widget.isRejectOrApprove,
                  ),

          ),
          invoicePage!=true?
          ButtonCard(isChangeHistory: widget.isChangeAllHistory,
            ontap: () async {
              if(widget.isChangeAllHistory!){
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? channelCode = prefs.getString('channel_code');
                // String? channelCode = "CHNL1000"
                String? customerCode = prefs.getString('customerUserCode');
                if(  createOrPatch!=true && invoicePage!=true){
                  widget.customerUsercode?.text=customerCode??"";
                }
                else{}
                showDailogPopUp(
                  context,
                  FifthPopUp(
                    allCostemerId: widget.allCostemerId,
                    customerUsercode: widget.customerUsercode,

                    productName: widget.productName,
                    barcode: widget.barcode,
                  ),
                );
              }

            },
            ontapp: () async {
              if(widget.isChangeAllHistory!){
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? channelCode = prefs.getString('channel_code');
                // String? channelCode = "CHNL1000"
                String? customerCode = prefs.getString('customerUserCode');
                showDailogPopUp(
                  context,
                  SixthPopUp(
                    allCustomerId: widget.allCostemerId,
                    customerUsercode: widget.customerUsercode,
                    productName: widget.productName,
                    barcode: widget.barcode,

                  ),
                );
              }

            },

          ):Container(
            height: context.blockSizeVertical * 8.5,
            color: Colors.white,),
          SizedBox(height: context.blockSizeVertical*.5,),

          Container(
            color: Colors.white,

            child: SizedBox(height: context.blockSizeVertical*4.3,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                  Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                ],),
            ),
          ),
          SizedBox(height: context.blockSizeVertical*.4,),

          GPCardLong(
            currentGP: GpData?.currentGp??0.0,
            dailyGP: GpData?.dailyGp??0.0,
          )
        ],
      ),
    );
  },
);
  }
}
