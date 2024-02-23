import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/warrenty_screens.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Widgets/commonutils.dart';
import '../dashboard/screens/gp_card.dart';
import '../dashboard/screens/popUps/PopUp1.dart';
import '../dashboard/screens/popUps/PopUp5.dart';
import '../dashboard/screens/popUps/PopUp6.dart';
import 'Product_info_Screen.dart';
import 'Profile_Screen.dart';
class InfoScreen extends StatefulWidget {
  final TextEditingController controller1;
  final Function editChange;

  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController? allCostemerId;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;
  final Function priceDataChange;
  final bool? isChangeHistory;
  final bool isRejectOrApprove;
  final bool isRejectOrApproveCart;
  const InfoScreen({Key? key,this.isRejectOrApprove=false,required this.isRejectOrApproveCart,this.allCostemerId, required this.controller1, required this.controller2, required this.controller3, required this.controller4, required this.text, required this.stock, this.barcode, this.productName, this.customerUsercode, this.isChangeHistory, required this.priceDataChange, required this.editChange,}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

bool logined=false;
class _InfoScreenState extends State<InfoScreen>with TickerProviderStateMixin {
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  // GpCardData? GpData;

  @override
  void initState() {
        context.read<GpCardReadCubit>().getGpCallcenter();
    tabController =  TabController(length: 3, vsync: this, );
    super.initState();
  }
  rightSideScreenRefresh(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: context.blockSizeVertical*85,
        child: Column(
          children: [
            logined?
            Column(

                children: [
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    height:widget. isRejectOrApprove?context.blockSizeVertical*9.2:context.blockSizeVertical*5,
                      padding: EdgeInsets.only(top: 4),
                      child: TabBar(

                          labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                          unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                          padding: EdgeInsets.only(left: 13),
                          // labelPadding:EdgeInsets.only(bottom: context.blockSizeVertical*.3,right: 30) ,
                          // indicatorPadding:EdgeInsets.only(b,right: 30) ,
                          isScrollable: true,
                          indicatorColor: Color(0xff687892), indicatorWeight: 5,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 4.0,
                                color: Color(0xff687892),
                              ),
                              insets: EdgeInsets.only(left: context.blockSizeHorizontal*.014, right: context.blockSizeHorizontal*.017)),

                          controller: tabController,

                          tabs: [
                            Container(
                              height: 100,
                                alignment: Alignment.center,
                                child: Text("Profile",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),)),
                            Text("Product Info",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                            Text("Warranty",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                            // Text("Warranty",style: TextStyle(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                          ]),


                  ),
                  SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      height: context.blockSizeVertical*50.2,
                      child: TabBarView(
                        controller: tabController,

                        children:  [
                          ProfileScreen(
                            allCustomerId: widget.allCostemerId,
                            rightSideScreenRefresh: rightSideScreenRefresh,
                            stock: widget.stock,
                            text: widget.text,
                          ),
                          ProductInfoScreen(
                            productID: widget.allCostemerId,
                            controller1: widget.controller1,
                            controller2: widget.controller2,
                            controller3: widget.controller3,
                            controller4: widget.controller4,
                            text: widget.text,
                            stock: widget.stock,
                            editChange: widget.editChange,
                            allCostemerId: widget.allCostemerId,
                          ),
                          WarrantyScreen(
                            priceDataChange:widget.priceDataChange,
                            allCustomerId: widget.allCostemerId,
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              ):widget.isRejectOrApprove||widget.isRejectOrApproveCart?Expanded(
              child: Container(
                // height: context.blockSizeVertical*60,
                // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                color: Colors.white,
                  child: EmptyDataDisplay(imaeName: LeftMenuSvg().emptUser,)),
            ):
            Container(
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
            logined?Container():widget.isRejectOrApproveCart ||widget.isRejectOrApprove?Container():
            Expanded(
              child: Container(color: Colors.white,
              ),
            ),
         // if( invoicePage!=true)   SizedBox(height: context.blockSizeVertical*.3,),
        // invoicePage!=true?
        // ButtonCard(isChangeHistory: widget.isChangeHistory,
        //       ontap: () async {
        //       if(widget.isChangeHistory!){
        //         SharedPreferences prefs = await SharedPreferences.getInstance();
        //         String? channelCode = prefs.getString('channel_code');
        //         // String? channelCode = "CHNL1000"
        //         String? customerCode = prefs.getString('customerUserCode');
        //         if(  createOrPatch!=true && invoicePage!=true){
        //           widget.customerUsercode?.text=customerCode??"";
        //         }
        //         else{}
        //         showDailogPopUp(
        //           context,
        //           FifthPopUp(
        //             allCostemerId: widget.allCostemerId,
        //             customerUsercode: widget.customerUsercode,
        //
        //             productName: widget.productName,
        //             barcode: widget.barcode,
        //           ),
        //         );
        //       }
        //
        //     },
        //       ontapp: () async {
        //         if(widget.isChangeHistory!){
        //           SharedPreferences prefs = await SharedPreferences.getInstance();
        //           String? channelCode = prefs.getString('channel_code');
        //           // String? channelCode = "CHNL1000"
        //           String? customerCode = prefs.getString('customerUserCode');
        //           showDailogPopUp(
        //             context,
        //             SixthPopUp(
        //               allCustomerId: widget.allCostemerId,
        //               customerUsercode: widget.customerUsercode,
        //               productName: widget.productName,
        //               barcode: widget.barcode,
        //
        //             ),
        //           );
        //         }
        //
        //       },
        //
        //     ):Expanded(child: Container(color: Colors.white,)),
        //     SizedBox(height: context.blockSizeVertical*.5,),
        //
        //     Container(
        //       color: Colors.white,
        //
        //       child: SizedBox(height: context.blockSizeVertical*4.3,
        //         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children:  [
        //             Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
        //             Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
        //           ],),
        //       ),
        //     ),
        //     SizedBox(height: context.blockSizeVertical*.4,),
        //
        //     GPCardLong(
        //       currentGP: GpData?.currentGp??0.0,
        //       dailyGP: GpData?.dailyGp??0.0,
        //     )
          ],
        ),
      ),
    );
  }
}
