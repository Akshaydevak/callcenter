import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/OrderHistory.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/salesapp_Screens/Login/Sign_In_Hilal.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../Widgets/Reusable_widget_web.dart';
import '../Widgets/commonutils.dart';
import '../Widgets/svg.dart';


class LeftMenu extends StatefulWidget {
  final int? tabValue;
  const LeftMenu({Key? key,  this.tabValue=0}) : super(key: key);

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {


  List<HelpModel> helpList=[];

  Future<void>adminCheck() async {
    if(Variable.isAdmin){
      helpList = [
       HelpModel(icon:LeftMenuSvg().adminDashIcon, tootltip: "Admin DashBoard"),
        HelpModel(icon:LeftMenuSvg().drawerIcon, tootltip: "DashBoard"),
        HelpModel(icon: LeftMenuSvg().orderApprovalIcon, tootltip: "Price Request"),
        HelpModel(icon: LeftMenuSvg().cartApprovalIcon, tootltip: "Cart Request"),
        HelpModel(icon: LeftMenuSvg().listenIcon, tootltip: "Call Center"),
        HelpModel(icon: LeftMenuSvg().historyIcon, tootltip: "Order History"),
        HelpModel(
            icon: LeftMenuSvg().invoiceIcon, tootltip: "align and preview slot"),
        HelpModel(icon: LeftMenuSvg().profileIcon, tootltip: "User"),
        HelpModel(icon: LeftMenuSvg().paymentIcon, tootltip: "Payments"),

      ];
    }
    else{
      helpList = [
        HelpModel(icon:LeftMenuSvg().drawerIcon, tootltip: "DashBoard"),
        HelpModel(icon: LeftMenuSvg().listenIcon, tootltip: "Call Center"),
        HelpModel(icon: LeftMenuSvg().historyIcon, tootltip: "Order History"),
        HelpModel(icon: LeftMenuSvg().invoiceIcon, tootltip: "align and preview slot"),

        HelpModel(icon: LeftMenuSvg().profileIcon, tootltip: "User"),
        HelpModel(icon: LeftMenuSvg().paymentIcon, tootltip: "Payments"),

      ];
    }



  }
  @override
  void initState() {


    adminCheck();



    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int _curr = 0;
   ;
    PageController pageController = PageController();


    int selected = 0;
    void onSelect(int val) {
      selected = val;
      pageController.jumpToPage(selected);
      //  pageController.animateToPage(val,
      //     duration: Duration(milliseconds: 1000), curve: Curves.ease);

      // widget.changeIndex!(selected);
      setState(() {});
    }



    var h = MediaQuery.of(context).size.height;
    return Container(
      height: h,
      width: context.blockSizeHorizontal*4.9,
      color: const Color(0xff333840),
      // padding: const EdgeInsets.only(
      //   left: 5,
      //   right: 5,
      //   top: 15,
      //   bottom: 10,
      // ),
      child:       Column(
        children: [
          SizedBox(height: h/30,),
          Container(
            // padding: EdgeInsets.only(top: h/14.7),

            // padding: EdgeInsets.only(top: 4),
            // height: h,
            // width: w / 22,
            child:   ListView.builder(
              shrinkWrap: true,
              itemCount: helpList.length,
              itemBuilder: (BuildContext context, int i) {
                return LeftMenuContainer(
                  label: helpList[i].tootltip,
                  height: context.blockSizeVertical*2.7,
                  width: context.blockSizeHorizontal*1.5,
                  selected: Variable.selected == i,
                  // onTap: onTapListTile(i, context),
                  ontap: () {
                    if(Variable.selected!=i){
                      setState(() {

                        Variable.selected = i;
                        print("index$i");
                      });
                      listCustomer=null;
                      logined=false;

                      // Get.to(CallCenterMain(tabValue:Variable.selected));
                      Navigator.of(context).push(_createRoute(Variable.selected));

                      //
                      // Navigator.pushReplacement(
                      //     context,CupertinoPageRoute(
                      //     fullscreenDialog: true,builder: (context) =>
                      //     CallCenterMain(tabValue:Variable.selected)));
                    }

                  }, menuIcon: helpList[i].icon,

                );
              },

            ),
          ),
              Spacer(),

              LeftMenuContainer(
                label: "Logout",
                height: context.blockSizeVertical*2.7,
                width: context.blockSizeHorizontal*1.5,
                menuIcon: LeftMenuSvg().logoutIcon,
                ontap: (){
                  showDailogPopUp(
                      context,
                  //     AdminCreationUser()
                      LogoutPopup(
                        message: "Are you sure you want to logout from the app?",
                        // table:table,
                        // clear:clear(),

                        onPressed:() async {
                          final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                          sharedPreferences.remove('isLoggedIn');
                          sharedPreferences.clear();
                          listCustomer=null;
                          Variable.isAdmin=false;
                          logined=false;
                          Variable.grpValue=0;
                          Variable.shippingId=null;

                          // Navigator.pushNamed(context, "/");
                          // ignore: use_build_context_synchronously


                          Navigator.push(
                            context,CupertinoPageRoute(
                              fullscreenDialog: true,builder: (context) =>  const SignInHilalWeb()),
                          );
                          setState(() {
                            Variable.   selected=6;

                          });

                        },



                  ));


                },selected:Variable. selected7,
              ),
              SizedBox(height: h/20),
        ],
      )
      // Column(
      //   mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       child: Column(
      //         children: [          LeftMenuContainer(
      //           label: "DashBoard",
      //           height: context.blockSizeVertical*2,
      //           width: context.blockSizeHorizontal*2,
      //           menuIcon: LeftMenuSvg().drawerIcon,
      //           ontap: (){
      //             setState(() {
      //               Variable.  selected1=!Variable.selected1;
      //               Variable. selected2=false;
      //               Variable.   selected3=false;
      //               Variable.   selected4=false;
      //               Variable.   selected5=false;
      //               Variable.   selected6=false;
      //               Variable.    selected7=false;
      //               Variable.   selected8=false;
      //             });
      //             Navigator.pushReplacement(
      //                 context,
      //                 CupertinoPageRoute(
      //                     fullscreenDialog: true,builder: (context) =>
      //                     CallCenterMain(tabValue: 0)));
      //
      //           },selected: Variable.selected1,
      //         ),
      //           SizedBox(height: h/20),
      //           // LeftMenuContainer(
      //           //   height: context.blockSizeVertical*3.2,
      //           //   width: context.blockSizeHorizontal*3.2,
      //           //   menuIcon: LeftMenuSvg().timerIcon,
      //           //   ontap: (){
      //           //     // setState(() {
      //           //     //   Variable.  selected2=!Variable.selected2;
      //           //     //   Variable.   selected1=false;
      //           //     //   Variable.  selected3=false;
      //           //     //   Variable.  selected4=false;
      //           //     //   Variable.   selected5=false;
      //           //     //   Variable.    selected6=false;
      //           //     //   Variable.    selected7=false;
      //           //     //   Variable.   selected8=false;
      //           //     // });
      //           //
      //           //   },selected:Variable. selected2,
      //           // ),
      //           // SizedBox(height: h/50),
      //           // LeftMenuContainer(
      //           //   height: context.blockSizeVertical*3.2,
      //           //   width: context.blockSizeHorizontal*3.2,
      //           //   menuIcon: LeftMenuSvg().statsIcon,
      //           //   ontap: (){
      //           //     // Navigator.pushNamed(
      //           //     //   context,'/home'
      //           //     // );
      //           //     // setState(() {
      //           //     //   Variable.   selected3=!Variable.selected3;
      //           //     //   Variable.  selected1=false;
      //           //     //   Variable. selected2=false;
      //           //     //   Variable.  selected4=false;
      //           //     //   Variable.    selected5=false;
      //           //     //   Variable.  selected6=false;
      //           //     //   Variable.   selected7=false;
      //           //     //   Variable.   selected8=false;
      //           //     // });
      //           //   },selected: Variable.selected3,
      //           //
      //           // ),
      //           // SizedBox(height: h/50),
      //           LeftMenuContainer(
      //             label: "Call Center",
      //             height: context.blockSizeVertical*3.2,
      //             width: context.blockSizeHorizontal*3.2,
      //             menuIcon: LeftMenuSvg().listenIcon,
      //             ontap: (){
      //               // Navigator.push(context,
      //               //     MaterialPageRoute(builder: (context) => CallCenterMain(tabValue: widget.tabValue,)));
      //               setState(() {
      //                 Variable. selected4=true;
      //                 Variable.  selected1=false;
      //                 Variable.   selected2=false;
      //                 Variable.   selected3=false;
      //                 Variable.  selected5=false;
      //                 Variable.  selected6=false;
      //                 Variable.  selected7=false;
      //                 Variable.  selected8=false;
      //               });
      //
      //               Navigator.pushReplacement(
      //                   context,CupertinoPageRoute(
      //                   fullscreenDialog: true,builder: (context) =>
      //                       CallCenterMain(tabValue: 1)));
      //
      //
      //
      //               // pushRe(
      //               //     context,
      //               //     MaterialPageRoute(builder: (context) =>
      //               //         CallCenterMain(tabValue: widget.tabValue,)
      //               //     ));
      //             },selected: Variable.selected4,
      //           ),
      //
      //           LeftMenuContainer(
      //             label: "Order Invoice",
      //             height: context.blockSizeVertical*3.2,
      //             width: context.blockSizeHorizontal*3.2,
      //             menuIcon: LeftMenuSvg().invoiceIcon,
      //             ontap: (){
      //               setState(() {
      //                 Variable.    selected5=true;
      //                 Variable.  selected1=false;
      //                 Variable.  selected3=false;
      //                 Variable.   selected4=false;
      //                 Variable.   selected2=false;
      //                 Variable.   selected6=false;
      //                 Variable.   selected7=false;
      //                 Variable.  selected8=false;
      //               });
      //               Navigator.pushReplacement(
      //                   context,
      //                   CupertinoPageRoute(
      //                       fullscreenDialog: true,builder: (context) =>
      //                       CallCenterMain(tabValue: 2)));
      //
      //             },selected: Variable.selected5,
      //           ),
      //
      //           LeftMenuContainer(
      //             label: "Order History",
      //             height: context.blockSizeVertical*3.2,
      //             width: context.blockSizeHorizontal*3.2,
      //             menuIcon: LeftMenuSvg().historyIcon,
      //             ontap: (){
      //               setState(() {
      //                 Variable.   selected6=true;
      //                 Variable.  selected1=false;
      //                 Variable.  selected3=false;
      //                 Variable.  selected4=false;
      //                 Variable.  selected2=false;
      //                 Variable.   selected5=false;
      //                 Variable. selected7=false;
      //                 Variable.  selected8=false;
      //               });
      //               Navigator.pushReplacement(
      //                   context,
      //                   CupertinoPageRoute(
      //                       fullscreenDialog: true,builder: (context) =>
      //                       CallCenterMain(tabValue: 3)));
      //
      //             },selected:Variable. selected6,
      //           ),
      //
      //
      //           LeftMenuContainer(
      //             label: "User",
      //             height: context.blockSizeVertical*3.2,
      //             width: context.blockSizeHorizontal*3.2,
      //             menuIcon: LeftMenuSvg().profileIcon,
      //             ontap: (){
      //               setState(() {
      //                 Variable.  selected8=true;
      //
      //                 Variable.   selected1=false;
      //                 Variable.   selected3=false;
      //                 Variable.   selected4=false;
      //                 Variable.   selected2=false;
      //                 Variable.  selected6=false;
      //                 Variable. selected7=false;
      //                 Variable. selected5=false;
      //               });
      //               Navigator.pushReplacement(
      //                   context,
      //                   CupertinoPageRoute(
      //                       fullscreenDialog: true,builder: (context) =>
      //                       CallCenterMain(tabValue: 4)));
      //
      //             },selected:Variable. selected8,
      //           ),
      //           // SizedBox(height: h/50),
      //           LeftMenuContainer(
      //             label: "Payments",
      //             height: context.blockSizeVertical*3.2,
      //             width: context.blockSizeHorizontal*3.2,
      //             menuIcon: LeftMenuSvg().paymentIcon,
      //             ontap: (){
      //               // Navigator.pushNamed(
      //               //   context,'/home'
      //               // );
      //               setState(() {
      //                 Variable.   selected3=true;
      //                 Variable.  selected1=false;
      //                 Variable. selected2=false;
      //                 Variable.  selected4=false;
      //                 Variable.    selected5=false;
      //                 Variable.  selected6=false;
      //                 Variable.   selected7=false;
      //                 Variable.   selected8=false;
      //               });
      //               Navigator.pushReplacement(
      //                   context,
      //                   CupertinoPageRoute(
      //                       fullscreenDialog: true,builder: (context) =>
      //                       CallCenterMain(tabValue: 5)));
      //             },selected: Variable.selected3,
      //
      //           ),],
      //       ),
      //     ),
      //     Spacer(),
      //
      //     // SizedBox(height: h/50),
      //     LeftMenuContainer(
      //       label: "Logout",
      //       height: context.blockSizeVertical*3.2,
      //       width: context.blockSizeHorizontal*3.2,
      //       menuIcon: LeftMenuSvg().logoutIcon,
      //       ontap: (){
      //         showDailogPopUp(
      //             context,
      //         //     AdminCreationUser()
      //             LogoutPopup(
      //               message: "Are you sure you want to logout from the app?",
      //               // table:table,
      //               // clear:clear(),
      //
      //               onPressed:() async {
      //                 final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      //                 sharedPreferences.remove('isLoggedIn');
      //                 sharedPreferences.clear();
      //                 listCustomer=null;
      //                 logined=false;
      //
      //                 // Navigator.pushNamed(context, "/");
      //                 // ignore: use_build_context_synchronously
      //                 Navigator.push(
      //                   context,CupertinoPageRoute(
      //                     fullscreenDialog: true,builder: (context) =>  const SignInHilalWeb()),
      //                 );
      //                 setState(() {
      //                   Variable.   selected7=false;
      //                   Variable.   selected1=false;
      //                   Variable.   selected3=false;
      //                   Variable.   selected4=true;
      //                   Variable.  selected2=false;
      //                   Variable. selected6=false;
      //                   Variable.   selected5=false;
      //                   Variable. selected8=false;
      //                 });
      //
      //               },
      //
      //
      //
      //         ));
      //
      //
      //       },selected:Variable. selected7,
      //     ),
      //     SizedBox(height: h/20),
      //
      //   ],
      // ),
    );
  }

}

class HelpModel {
  String icon;
  String tootltip;

  HelpModel({required this.icon, required this.tootltip});
}
Route _createRoute(int index) {
  return PageRouteBuilder(

    pageBuilder: (context, animation, secondaryAnimation) =>  CallCenterMain(tabValue: index,),
    transitionDuration: Duration(milliseconds:index==0||index==1?300: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}




