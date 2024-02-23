import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/admin_dashboard.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Invoice_Cubit/create_invoice_cubit.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SalesGenaral.dart';
import 'package:salesapp/salesapp_Screens/Sales_Invoice/SalesInvoice.dart';

import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

import '../Widgets/Reusable_widget_web.dart';
import 'Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'Callcenter_Screens/Callcenter/Payment_details_screen/Payment_Details.dart';
import 'Callcenter_Screens/Callcenter/SecondHead.dart';
import 'Callcenter_Screens/OrderHistoryScreen/OrderHistory.dart';
import 'Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'Callcenter_Screens/User_Management/User_Management.dart';
import 'Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'Callcenter_Screens/dashboard/screens/dashboard.dart';
import 'Cubit/Call_Center_Cubit/Create_Order_Cubit/create_order_cubit.dart';
import 'main.dart';



class CallcenterAppbar extends StatefulWidget {
  final int tabValue;
   bool editOrder;
   bool invoiceOrder;
   bool isCustomerStatemnet;
   final String? userCustomerCode;
   final Function refresh;
  final bool isRejectOrApprove;
   CallcenterAppbar({Key? key, this.tabValue=0,required this.refresh,this.isRejectOrApprove =false,  this.editOrder=false,  this.invoiceOrder=false,this.isCustomerStatemnet=false, this.userCustomerCode}) : super(key: key);

  @override
  State<CallcenterAppbar> createState() => _CallcenterAppbarState();
}

class _CallcenterAppbarState extends State<CallcenterAppbar> with TickerProviderStateMixin{
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  bool isInvetryNameshow=false;
  bool isDataConnectivity=false;
  // List<PageEntity>pages=[];
  displayingBars(){
    if(Variable.isAdmin){
      pages=[
        PageEntity(page: AdminDashBoard(),name:"Admin Dashboard", fixedIndex: 0),
        PageEntity(page: DashBoard(),name:"Dashboard" ,fixedIndex: 1),
        PageEntity(page:     CallCenterScreen(
            editOrder: widget.editOrder,
            invoiceOrder: widget.invoiceOrder,isRejectOrApprove: true),name:"Order Approval",fixedIndex: 2 ),
        PageEntity(page:     CallCenterScreen(
            editOrder: widget.editOrder,
            invoiceOrder: widget.invoiceOrder,isRejectOrApproveCart: true,),name:"Cart Approval" ,fixedIndex: 3),
        PageEntity(page:  CallCenterScreen(
          editOrder: widget.editOrder,
          invoiceOrder: widget.invoiceOrder,),name:"Call center" ,fixedIndex: 4),
        PageEntity(page:     const OrderHistoryScreen(),name:"Order History",fixedIndex: 5 ),
        PageEntity(page:     const OrderInvoiceScreen(),name:"Order Invoice" ,fixedIndex: 6),
        PageEntity(page:        UserManagement(isCustomerStatemnet: widget.isCustomerStatemnet,userCustomerCode: widget.userCustomerCode),name:"User Management" ,fixedIndex: 7),
        PageEntity(page:           PaymentScreen(),name:"Payment details",fixedIndex: 8 ),

      ];
    }
    else{
      pages=[
        PageEntity(page:const  DashBoard(),name:"Dashboard",fixedIndex: 1 ),
        PageEntity(page:  CallCenterScreen(
          editOrder: widget.editOrder,
          invoiceOrder: widget.invoiceOrder,),name:"Call center" ,fixedIndex: 4),
        PageEntity(page:     const OrderHistoryScreen(),name:"Order History",fixedIndex: 5 ),
        PageEntity(page:     const OrderInvoiceScreen(),name:"Order Invoice" ,fixedIndex: 6),
        PageEntity(page:        UserManagement(isCustomerStatemnet: widget.isCustomerStatemnet,userCustomerCode: widget.userCustomerCode),name:"User Management" ,fixedIndex: 7),
        PageEntity(page:            PaymentScreen(),name:"Payment details" ,fixedIndex: 8),

      ];

    }
  }

  // Future<void>dataConnectionCheck()async {
  //   final connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //     // I am connected to a mobile network.
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //     // I am connected to a wifi network.
  //   } else if (connectivityResult == ConnectivityResult.ethernet) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //     print("I am connected to a ethernet network.");
  //   } else if (connectivityResult == ConnectivityResult.vpn) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //     // I am connected to a vpn network.
  //     // Note for iOS and macOS:
  //     // There is no separate network interface type for [vpn].
  //     // It returns [other] on any device (also simulator)
  //   } else if (connectivityResult == ConnectivityResult.bluetooth) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //   } else if (connectivityResult == ConnectivityResult.other) {
  //     setState(() {
  //       isDataConnectivity=false;
  //     });
  //
  //     // I am connected to a network which is not in the above mentioned networks.
  //   } else if (connectivityResult == ConnectivityResult.none) {
  //     setState(() {
  //       isDataConnectivity=true;
  //     });
  //
  //     // I am not connected to any network.
  //   }
  // }
@override
  void initState() {
  // dataConnectionCheck();
  displayingBars();
  tabController = new TabController(length: pages.length, vsync: this,initialIndex: widget.tabValue );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateOrderCubit(),),
        BlocProvider(
          create: (context) => CreateInvoiceCubit(),),
      ],
      child: Stack(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.basic,
            child: GestureDetector(
              // highlightColor: Colors.white,
              // splashColor: Colors.white,
              // hoverColor: Colors.white,
              // focusColor:  Colors.white,
              onTap: (){
                setState(() {
                  isInvetryNameshow=false;
                });

              },
              child: Column(
                children: [
                  Column(
                    children: [

                      Container(
                        color:Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(width: context.blockSizeHorizontal*0.07,),
                            Scrollbar(
                              controller: scrollController,
                              // isAlwaysShown: true,
                              child: Container(
                                alignment: Alignment.topRight,
                                height: context.blockSizeVertical*4,
                                width: context.blockSizeHorizontal*71,
                                margin: EdgeInsets.only(top:context.blockSizeHorizontal*2.50,),
                                child: ListView(
                                  controller: scrollController,
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SingleChildScrollView(
                                      child: TabBar(


                                          labelStyle: TextStyle(color: Color(0xff687892,),fontWeight: FontWeight.bold),
                                          unselectedLabelStyle: TextStyle(color: Color(0xff66687B,)),
                                          padding: EdgeInsets.only(left: 13),
                                          isScrollable: true,
                                          indicatorColor: Color(0xff322E4F),
                                          indicatorWeight: 12,
                                          indicatorSize: TabBarIndicatorSize.label,
                                          onTap: (val){
                                            setState(() {
                                            Variable.customerId="";
                                            print("selected index is here");
                                            print(val);
                                            // if(val==0){
                                              createOrPatch=false;invoicePage=false;
                                              productNameDisplaySecondSectionController.clear();
                                              deliveryslot.text="";

                                              deliverySlotObject==deliverySlotObject.copyWith(
                                                deliveryCharge:0,
                                                id:null,
                                              );
                                            listCustomer=null;
                                            logined=false;

                                        Variable.selected=val;
                                              widget.refresh();

                                            // }
                                            // if(val==1){
                                            //   productNameDisplaySecondSectionController.clear();
                                            //   Variable.selected=1;
                                            //   widget.refresh();
                                            //
                                            // }
                                            // if(val==2){
                                            //   productNameDisplaySecondSectionController.clear();
                                            //   Variable.selected=2;
                                            //   widget.refresh();
                                            //
                                            // }   if(val==3){
                                            //   Variable.selected=3;
                                            //   widget.refresh();
                                            //
                                            // }
                                            // if(val==4){
                                            //   productNameDisplaySecondSectionController.clear();
                                            //   widget.isCustomerStatemnet=false;
                                            //   Variable.selected=4;
                                            //   widget.refresh();
                                            // }
                                            // if(val==5){
                                            //   productNameDisplaySecondSectionController.clear();
                                            //   Variable.selected=5;
                                            //   widget.refresh();
                                            // }




                                            // Variable.channelCode="";
                                            });

                                          },
                                          indicator: UnderlineTabIndicator(
                                              borderSide: BorderSide(
                                                width: 4.0,
                                                color: Color(0xff687892),
                                              ),
                                              insets: EdgeInsets.only(left: context.blockSizeHorizontal*.014, right: context.blockSizeHorizontal*.017)),

                                          controller: tabController,labelPadding: EdgeInsets.symmetric(horizontal: 10),

                                          tabs: pages.map((e) {
                                            return  Text(e.name,style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),);
                                          }).toList(),
                                          // [
                                          //  Text("Admin Dashboard",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Dashboard",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Call Center",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Call Center2",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Order Invoice",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Order History",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("User Management",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          //  Text("Payment Details",style: GoogleFonts.roboto(color: Color(0xff687892),fontSize: context.blockSizeHorizontal*1),),
                                          // ]),
                                    )),
                                  ],
                                ),

                              ),
                            ),
                            Spacer(),
                            // Image(image: AssetImage("asset_images/serch.png",),width:context.blockSizeHorizontal*1.2,height: context.blockSizeHorizontal*2.5,),
                            // SizedBox(width: context.blockSizeHorizontal*2,),
                            Image(image: AssetImage("asset_images/bellnoti.png"),width: context.blockSizeHorizontal*1.2,height: context.blockSizeHorizontal*2.5,),
                            SizedBox(width: context.blockSizeHorizontal*1.6),
                            // Image(image: AssetImage("asset_images/dots.png"),width:context.blockSizeHorizontal*1.2,height: context.blockSizeHorizontal*2.5,),
                            // SizedBox(width: context.blockSizeHorizontal*2,),
                            ProfileContainer(ontap: (){
                              isInvetryNameshow=!isInvetryNameshow;
                              setState(() {

                              });
                            },),
                            SizedBox(width: context.blockSizeHorizontal*1.5),
                          ],
                        ),
                      ),
                    ],
                  ),

                  isDataConnectivity?NoDataConnection(
                  ):
                  Container(
                    color:Color(0xffE1E7ED),

                    // height: 300,
                    height: context.blockSizeVertical*90.5,

                    child: TabBarView(

                      controller: tabController,
                      physics: NeverScrollableScrollPhysics(),
                      children:pages.map((e) {
                        return e.page;
    }).toList(),
    // [
    //                   AdminDashBoard(),
    //                   const DashBoard(),
    //
    //
    //                   CallCenterScreen(
    //                     editOrder: widget.editOrder,
    //                     invoiceOrder: widget.invoiceOrder,),
    //                   CallCenterScreen(
    //                     editOrder: widget.editOrder,
    //                     invoiceOrder: widget.invoiceOrder,isRejectOrApprove: true),
    //
    //
    //                   const OrderInvoiceScreen(),
    //                   const OrderHistoryScreen(),
    //                    UserManagement(isCustomerStatemnet: widget.isCustomerStatemnet,userCustomerCode: widget.userCustomerCode),
    //                    PaymentScreen(
    //
    //                   ),
    //
    //                 ],
                    ),
                  )
                ],
              ),
            ),
          ),
       if(isInvetryNameshow)
         Positioned(
            right: context.safeBlockHorizontal*.3,
              top: context.safeBlockHorizontal*4,

              child:
              // NotificatonPopup()
              InventoryPopup()
          )
        ],
      ),

    );
  }
}

// class PageEntity{
//   String name;
//   Widget page;
//
//
//
//
//   PageEntity({required this.page, required this.name});
// }