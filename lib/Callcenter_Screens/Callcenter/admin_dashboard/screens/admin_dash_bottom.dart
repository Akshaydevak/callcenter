import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/channel/channel_list_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/employee_list_screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/employee_list/employee_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/channel_list/admin_channel_list_cubit.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


class AdminDashBottosec extends StatefulWidget {
  final bool isLoading;
  const AdminDashBottosec({Key? key,this.isLoading=false}) : super(key: key);

  @override
  State<AdminDashBottosec> createState() => _AdminDashBottosecState();
}

class _AdminDashBottosecState extends State<AdminDashBottosec>with TickerProviderStateMixin {
  int selected=0;
  bool didDispose = false;
  Animation<Offset>? animation;


  AnimationController? animationController;

  Timer? _timer;
  int _start = 10;
  List<customPopupmenuButton>item=[
    customPopupmenuButton(label: "User",value: "1"),
    customPopupmenuButton(label: "Channel",value: "2"),

  ];
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
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds:500,),animationBehavior:AnimationBehavior.preserve );

    if(animationController!=null)
      animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(0, 0.2)).animate(animationController!);


    startTimer();

    // TODO: implement initState
    super.initState();
  }
  void dispose() {
    didDispose = true;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child:widget.isLoading?Container(
        color: Colors.black.withOpacity(0.04),
      ):    SlideTransition(
          position: animation!,
        child: Container(
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.blockSizeVertical*7.5,
                padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5,right:context.blockSizeHorizontal*1.5 ),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    CustomToggle(

                      leftButtonPress: () {
                        setState(() {
                          selected=0;
                        });

                      }, rightButtonPress: () {
                        setState(() {
                          selected=1;
                        });
                    },width: context.blockSizeHorizontal*10,height: context.blockSizeVertical*4.3, leftText: 'Users', rightText: "Others",selectedGradiant:LinearGradient(
                      colors: [Color(0xff687892),
                        Color(0xff8498B8)],
                    ) ,
                      sunselectedGradiant: LinearGradient(
                        colors: [Color(0xffEAEFF3),
                          Color(0xffEAEFF3)]
                      ),
                    ),

                    //
                    // CommonButtonGradiant(
                    //   // isIndiactor:isOldPrintLoading,
                    //
                    //   margin: EdgeInsets.zero,
                    //   onTap: () async {
                    //
                    //     // context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","old_format");
                    //   },
                    //   width:context.blockSizeHorizontal*5.5,
                    //   height: context.blockSizeVertical*4.2,
                    //   label: "USERS",),
                    // CommonButtonGradiant2(
                    //
                    //   // isIndiactor:isOldPrintLoading,
                    //
                    //   margin: EdgeInsets.zero,
                    //   onTap: () async {
                    //
                    //     // context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","old_format");
                    //   },
                    //   width:context.blockSizeHorizontal*5.5,
                    //   height: context.blockSizeVertical*4.2,
                    //   label: "Channels",),
                    Spacer(),
                    CommonButtonGradiantPopup(
                      height: context.blockSizeVertical*4.3,
                      leftIcon: Icons.add,
                      rightIcon: Icons.arrow_drop_down ,
                      popupMenuLis:item,
                      label: 'Add New', onTap: (va) {
                      if(va=="1"){
                        showDailogPopUp(
                            context,
                            AdminCreationUser(
                              isPatch: false,
                              isRadOnly: false,
                              empCode: "",
                            ));

                      }
                      else{
                        showDailogPopUp(
                            context,
                            AdminCreationChannel(
                              isPatch: false,
                              isRadOnly: false,
                              chanllelCode: "",
                            ));

                      }
                    },),
                    SizedBox(width: context.blockSizeHorizontal*.5,),
                    // CommonButtonGradiant(
                    //   // isIndiactor:isOldPrintLoading,
                    //
                    //   margin: EdgeInsets.zero,
                    //   onTap: () async {
                    //
                    //     // context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","old_format");
                    //   },
                    //   width:context.blockSizeHorizontal*5.5,
                    //   height: context.blockSizeVertical*4.2,
                    //   label: "Add New",),

                    Expanded(
                      child: commonSearchRightScreen(
                        hintText: selected==0?"Enter User Name":"Enter Channel Name",

                          context,onchange:(sa){
                        if(selected==0){
                          if(sa==""){
                            context.read<EmployeeListCubit>().adminEmployeeList();
                          }
                          else{
                            context.read<EmployeeListCubit>().searchAdminEmployeeList(sa);
                          }
                        }
                        else{
                          if(sa==""){
                            context.read<AdminChannelListCubit>().adminChannelList();
                          }
                          else{
                            context.read<AdminChannelListCubit>().searchAdminChannelList(sa);
                          }
                        }



                      },
                          height:   context.blockSizeVertical*4.4,
                          isMargin: false,
                          searcController: TextEditingController()
                      ),
                    ),

                  ],

                ),
              ),
          selected==0?    EmployeeList(

              ):ChannelListScreen()

            ],

          ),

        ),
      ),
    );
  }
}
