

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/admin_dash_bottom.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/inventory_section.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/topSection.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/dashboard_card.dart';
import 'package:salesapp/Callcenter_Screens/svg/dashboard_svg.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/User_Count/admin_user_count_cubit.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shimmer/shimmer.dart';

class AdminDashBoard extends StatefulWidget {
  const AdminDashBoard({Key? key}) : super(key: key);

  @override
  State<AdminDashBoard> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoard>with TickerProviderStateMixin {
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  bool isLoadinInitial=false;
  bool didDispose = false;
  Animation<Offset>? animation;


  AnimationController? animationController;

  Timer? _timer;
  int _start = 10;

  void startTimer() {

    const oneSec = const Duration(milliseconds: 100);
    _timer =  Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 9) {
          if(animationController!=null)  animationController!.forward();
          if (!didDispose)  setState(() {
            timer.cancel();


          });

        } else {

          if (!didDispose)  setState(() {
            _start--;
          });
        }
      },
    );
  }
  @override
  void dispose() {
    didDispose = true;
    super.dispose();
  }
  @override
  void initState() {

    initialAnimation();
    // isLoadinInitial=true;
    // Future.delayed(const Duration(seconds:1),(){
    //   setState(() {
    //     isLoadinInitial=false;
    //   });
    //
    // });
    // TODO: implement initState
    super.initState();
  }
  void initialAnimation(){
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds:500,),animationBehavior:AnimationBehavior.preserve );

    if(animationController!=null)
      animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(0, -0.2)).animate(animationController!);


    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xffE1E7ED),
      padding: EdgeInsets.only(left: 20,top: 20,right: 20),
      child: Column(
        children: [


          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Admin Dashboard",
                  style: GoogleFonts.roboto(
                    color: Color(0xff0c1030),
                    fontSize: context.blockSizeHorizontal*1.3,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                width: context.blockSizeHorizontal*0.5,
              ),
              Text(
                "Today, $currentDate",
                style: GoogleFonts.roboto(
                  color: Color(0xff828282),
                  fontSize: context.blockSizeHorizontal*0.9,
                  fontWeight: FontWeight.w500,
                ),

              ),

            ],
          ),
          SizedBox(height: context.blockSizeVertical*1,),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child:Container(
                    child: Column(
                      children: [
                        SlideTransition(
                            position: animation!,child: AdmindashTop(isLoading: isLoadinInitial)),
                        SizedBox(height: context.blockSizeVertical*1,),
    AdminDashBottosec(isLoading:isLoadinInitial ,)


                      ],

                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  flex: 1,
                  child:InventorProfileSection(isLoading: isLoadinInitial,)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Skelton extends StatelessWidget {
  final double? height,width;

   Skelton({super.key,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return
      Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.black.withOpacity(.7),

        child: Container(
        width:width ,
        height: height,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(.04),
            borderRadius: BorderRadius.circular(16)
        ),

    ),
      );
  }
}
