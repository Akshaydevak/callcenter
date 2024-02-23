
import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/bloc/channel_refresh/channel_refresh_bloc.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/admin_channel_read/admin_channel_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/average_basket_value/average_basket_value_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/channel_details/channel_details_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/model/channel_model.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/new_orderlist/new_order_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/order_status/order_status_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/today_sale/todays_sale_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/total_holding/total_holding_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/total_orders/total_orders_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Models/Call_Center_Model/channel_List/Channel_List.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/Sales_Genaral_Inventory/GenaralTablesInventory.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import '../../../salesapp_Screens/Dashbord_Screen/TopProductSold.dart';
import '../../../Widgets/commonutils.dart';
import '../../svg/dashboard_svg.dart';
import 'TopProductCallcenter.dart';
import 'dashboard_card.dart';
import 'gp_card.dart';
import 'order_card.dart';
import 'order_status_card.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin{
  bool didDispose = false;

  Color _color = Colors.white70;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  double? todaysSale;
  double? totalOrders;
  double? totalHolding;
  String? fullName;
  double? averageBasketingValue;
  FocusNode channelFocusNode=FocusNode();
  TextEditingController channelCodeController=TextEditingController();
  TextEditingController dailyGpTarget=TextEditingController();
  TextEditingController weeklyGpTarget=TextEditingController();
    Animation<Offset>? animation;

    AnimationController? animationController;


  @override
  void initState() {


    super.initState();

    context.read<TodaysSaleCubit>().getTodaysSale();
    context.read<TotalHoldingCubit>().getTotalHoldings();
    context.read<AverageBasketValueCubit>().getAveragebasketValue();
    context.read<TotalOrdersCubit>().getTotalOrders();
    if(channelCodeController.text.isEmpty)
      channelFocusNode.addListener(() { });
    getSharedPreferenceData();

    animationController = AnimationController(vsync: this, duration: Duration(milliseconds:500,),animationBehavior:AnimationBehavior.preserve );

    if(animationController!=null)
      animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(0, -0.2)).animate(animationController!);

    startTimer();

  }
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
            // Create a random number generator.
            final random = Random();

            // Generate a random color.
            _color = Colors.white;



          });
          if (!didDispose)  setState(() {
            _start--;
          });
        }
      },
    );
  }
  void safeSetState(VoidCallback callback) {
    if (!didDispose) {
      setState(callback);
    }
  }

  void getSharedPreferenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("initilacheck${prefs.getString('channelName')}");
    SharedPreferences pref = await SharedPreferences.getInstance();

    fullName = pref.getString("username")??"";

    channelCodeController.text=prefs.getString('channelName')??"";
    dailyGpTarget.text=prefs.getString("dailyGp")??"";
    weeklyGpTarget.text=prefs.getString("weeklyGp")??"";


    setState(() {
    });
  }
  void setDailyWeeklyGp(AdminChannelReadModel data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('dailyGp', data.dailyGpTarget?.toString()??"");
    prefs.setString('weeklyGp',  data.weeklyTargetGp?.toString()??"");


  }
 bool channelCodeSelectionValidation(){
    bool retur=false;
    if( channelCodeController.text.isEmpty==true){
      context.showSnackBarError("Please Select Channel");
      retur=true;
    }
    else{
      retur=false;

    }
    return retur;

  }
  @override
  void dispose() {
    didDispose = true;
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => ChannelDetailsCubit(),
),
    BlocProvider(
      create: (context) => ChannelRefreshBloc(),
    ),
  ],
  child: BlocConsumer<TodaysSaleCubit, TodaysSaleState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {

        },
        success: (data) async {



          todaysSale=data.todaysSale??0;

        }
    );
  },
  builder: (context, state) {
    return MultiBlocListener(
  listeners: [
    BlocListener<TotalHoldingCubit, TotalHoldingState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          // print("error..read Customer");
        },
        success: (data) async {
          // print("total holdings");
          totalHolding=data.data;


        }
    );

  },
),
    BlocListener<AverageBasketValueCubit, AverageBasketValueState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              // print("error..read Customer");
            },
            success: (data) async {
              setState(() {
                Variable.averageBasketValue=0;
                averageBasketingValue=data.todaysSale;
                Variable.averageBasketValue=data.todaysSale;
              });



            }
        );
      },
    ),
    BlocListener<ChannelDetailsCubit, ChannelDetailsState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              // print("error..read Customer");
            },
            success: (data) async {
              if(data.data1){
                print("Success the channel save");
              }
              else{
                print(Variable.errorMessege);
              }





            }
        );
      },
    ),
    BlocListener<AdminChannelReadCubit, AdminChannelReadState>(
      listener: (context, state) {
        state.maybeWhen(orElse: (){},success: (data){
          setState(() {

            dailyGpTarget.text=data.dailyGpTarget?.toString()??"";
            weeklyGpTarget.text=data.weeklyTargetGp?.toString()??"";
            setDailyWeeklyGp(data);


          });

        },);
        // TODO: implement listener
      },
    ),
  ],
  child: Builder(
      builder: (context) {
        return Stack(
          children: [

            Container(
              color: Color(0xffE1E7ED),

              padding: EdgeInsets.only(left: 20,top: 20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Dashboard",
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
                      Spacer(),
                      BlocBuilder<ChannelRefreshBloc, ChannelRefreshState>(
  builder: (context, state) {
    return ChannelDropdown(
                        controller1: channelCodeController,
                        label: "Channel List",
                        type: "channelList",
                        // showAll: ,
                        value: channelCodeController?.text??"",
                        onSelection: (ChannelList? va) async{
                          final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                          if(sharedPreferences.getString("channel_code").toString()!=va?.channelCode){

                            sharedPreferences.setString('channel_code', va?.channelCode ?? "");


                            state.channelValue=channelCodeController.text;

                            channelCodeController.text=va?.name ?? "";
                            sharedPreferences.setString('channelId', va?.id.toString() ?? "");
                            sharedPreferences.setString('channelTypeCode', va?.channeTypeCode.toString() ?? "");
                            sharedPreferences.setString('channelTypeId', va?.channelTypeId.toString() ?? "");
                            sharedPreferences.setString('channelStockType', va?.stockType.toString() ?? "");
                            sharedPreferences.setString('channelName', va?.name.toString() ?? "");

                            BlocProvider.of<ChannelRefreshBloc>(context).add(ChannelRefreshEvent());

                            Variable.channelCode = va?.channelCode ?? "";
                            context.read<AdminChannelReadCubit>().getAdminChannlReadRead( va?.channelCode ?? "");
                            context.read<TodaysSaleCubit>().getTodaysSale();
                            context.read<TotalHoldingCubit>().getTotalHoldings();
                            context.read<AverageBasketValueCubit>().getAveragebasketValue();
                            context.read<TotalOrdersCubit>().getTotalOrders();
                            context.read<OrderStatusCubit>().getOrderStatus();
                            context.read<NewOrderListCubit>().getNewOrderList();
                            setState(() {

                            });
                            // ChannelCreateModel model=ChannelCreateModel(
                            //   inventoryId: "",
                            //   channelCode: va?.channelCode,
                            //   channelName:va?.name ,
                            //   channelStockType: va?.stockType,
                            //   channelTypeCode:va?.channeTypeCode ,
                            //
                            //
                            // );
                            //
                            // print("model$model");
                            // context.read<ChannelDetailsCubit>().postChannelSave(model);




                            context.read<ChannelListCubit>().getChannelList();
                          }




                        },
                        restricted: true,
                      );
  },
),
                    ],
                  ),
                  SizedBox(height: context.blockSizeVertical*1,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AnimatedContainer(
                          // decoration: BoxDecoration(
                          //   color: Colors.white,
                          //   borderRadius: BorderRadius.circular(10),
                          // ),

                          // height: context.blockSizeVertical*32,
                          // width: _width,
                          height: context.blockSizeVertical*32,
                          decoration: BoxDecoration(
                            color: _color,
                            borderRadius: _borderRadius,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(-2, -2), // changes position of shadow
                              ),
                            ],
                          ),
                          // Define how long the animation should take.
                          duration: const Duration(seconds: 1),
                          // Provide an optional curve to make the animation feel smoother.
                          curve: Curves.fastOutSlowIn,
                          child: Stack(
                            children: [
                              // Container(
                              //   // color: Colors.green,
                              //     width:context.blockSizeHorizontal*50,
                              //     height: context.blockSizeVertical*33,
                              //     child: Image.asset("asset_images/img.png",
                              //       // color: Colors.transparent,
                              //       fit: BoxFit.fill,height:h / 2.9 , width: w / 2.8,)),
                              MouseRegion(
                                cursor: SystemMouseCursors.basic,
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Container(
                                      //   width: w,
                                      //   alignment: Alignment.bottomRight,
                                      //   child: SvgPicture.string(DashBoardSvg().tagIcon),
                                      // ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2.1),
                                            child: Text(
                                              "Hi, ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: context.blockSizeHorizontal*1.5,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${fullName?.toTitleCase()??""}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: context.blockSizeHorizontal*1.5,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Container(
                                              child: Lottie.asset('asset_images/dashboard.json',height: context.blockSizeVertical*11,fit: BoxFit.fitHeight))
                                        ],
                                      ),
                                      SizedBox(height: context.blockSizeVertical*.2,),
                                      Padding(
                                        padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2.1),
                                        child: Text(
                                          "At first, you'll need to create a new order",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: context.blockSizeHorizontal*1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: context.blockSizeVertical*1.5,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2.1),
                                        child: CommonButtonGradiant(
                                          fontSize:  context.blockSizeHorizontal*1.2,
                                          width: context.blockSizeHorizontal*18,
                                                height: context.blockSizeVertical*6.5,
                                          onTap: (){

                                            setState((){});
                                            var chsnnelCheck=channelCodeSelectionValidation();

                                         if(   chsnnelCheck!=true)     showDailogPopUp(
                                              context,
                                              WarrentyDetailsPage(),
                                            );
                                          },
                                          label:"START NEW ORDER" ,


                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(left: 40),
                                      //   child: InkWell(
                                      //     onTap: (){
                                      //       setState((){});
                                      //       showDailogPopUp(
                                      //         context,
                                      //         WarrentyDetailsPage(),
                                      //       );
                                      //     },
                                      //     child: Container(
                                      //       width: context.blockSizeHorizontal*13,
                                      //       height: context.blockSizeVertical*8,
                                      //       decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(4),
                                      //         border: Border.all(color: Colors.white, width: 1, ),
                                      //         boxShadow: [
                                      //           BoxShadow(
                                      //             color: Color(0x26cccccc),
                                      //             blurRadius: 5,
                                      //             offset: Offset(0, 2),
                                      //           ),
                                      //         ],
                                      //         gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xfff4f7fb), Colors.white, Color(0xffeceff4)], ),
                                      //       ),
                                      //       alignment: Alignment.center,
                                      //       child: Text(
                                      //         "Start New Order",
                                      //         style: GoogleFonts.roboto(
                                      //           color: Color(0xff5d6e8b),
                                      //           fontSize: context.blockSizeHorizontal*1.3,
                                      //
                                      //           fontWeight: FontWeight.w500,
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.blockSizeHorizontal*1,
                      ),
                      Expanded(
                        child: SlideTransition(
                          position: animation!,
                          child: Row(
                            children: [
                              Column(
                                children: [

            DashboardCard(
                      width: context.blockSizeHorizontal*14.7,
                          img: DashBoardSvg().arrowIcon,
                          icon: DashBoardSvg().salesIcon,
                          name: "Today Sales",
                          amount: todaysSale?.toString()??"0",
                          percentage: ""),
                                  SizedBox(
                                    height: context.blockSizeVertical*1,
                                  ),

                                          DashboardCard(
                                              width: context.blockSizeHorizontal*14.7,
                                              img: DashBoardSvg().arrowIcon,
                                              icon: DashBoardSvg().ordersIcon,
                                              name: "Total Holdings",
                                              amount: totalHolding?.toString()??"0",
                                              percentage: ""),
                                ],
                              ),


                              Expanded(
                                child: Column(
                                  children: [
            BlocConsumer<TotalOrdersCubit, TotalOrdersState>(
  listener: (context, state) {
    state.maybeWhen(
            orElse: () {},
            error: () {

            },
            success: (data) async {



              totalOrders=data.data??0;

            }
    );
  },
  builder: (context, state) {
    return DashboardCard(
                            width: context.blockSizeHorizontal*14.7,
                            icon: DashBoardSvg().holdingsIcon,
                            name: "Total Orders",
                            amount: totalOrders?.toString()??"0",
                            percentage: "",
                            img: DashBoardSvg().arrowIcon,
                          );
  },
),
                                    SizedBox(
                                      height: context.blockSizeVertical*1,
                                    ),

                                DashboardCard(
                                                  width: context.blockSizeHorizontal*14.7,
                                                  img: DashBoardSvg().arrowIcon,
                                                  icon: DashBoardSvg().soldIcon,
                                                  name: "Average Basket Value",
                                                  amount: averageBasketingValue?.toString()??"0",
                                                  percentage: ""),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    GpCard(headingText: "Daily GP",gpValue: dailyGpTarget?.text??""),
                                                SizedBox(
                                                  height: context.blockSizeVertical*1,
                                                ),
                                                GpCard(headingText: "Weekly Gp",gpValue: weeklyGpTarget?.text??"",)
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      )

                      // Expanded(
                      //   child: Container(
                      //     height: context.blockSizeVertical*32,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         DashboardCard(
                      //           width: context.blockSizeHorizontal*14.7,
                      //             img: DashBoardSvg().arrowIcon,
                      //             icon: DashBoardSvg().salesIcon,
                      //             name: "Today Sales",
                      //             amount: "1200",
                      //             percentage: "23"),
                      //         SizedBox(
                      //           height: context.blockSizeVertical*3,
                      //         ),
                      //         DashboardCard(
                      //             width: context.blockSizeHorizontal*14.7,
                      //             img: DashBoardSvg().arrowIcon,
                      //             icon: DashBoardSvg().ordersIcon,
                      //             name: "Total Holdings",
                      //             amount: "685",
                      //             percentage: "23"),
                      //         SizedBox(
                      //           width: context.blockSizeHorizontal*1,
                      //         ),
                      //         Column(
                      //           children: [
                      //             DashboardCard(
                      //               width: context.blockSizeHorizontal*14.7,
                      //               icon: DashBoardSvg().holdingsIcon,
                      //               name: "Total Orders",
                      //               amount: "685",
                      //               percentage: "23",
                      //               img: DashBoardSvg().arrowIcon,
                      //             ),
                      //             SizedBox(
                      //               height: context.blockSizeVertical*3,
                      //             ),
                      //             DashboardCard(
                      //                 width: context.blockSizeHorizontal*14.7,
                      //                 img: DashBoardSvg().arrowIcon,
                      //                 icon: DashBoardSvg().soldIcon,
                      //                 name: "Product Sold",
                      //                 amount: "6840",
                      //                 percentage: "23"),
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: context.blockSizeHorizontal*1,
                      //         ),
                      //         Column(
                      //           children: [
                      //             GpCard(),
                      //             SizedBox(
                      //               height: context.blockSizeVertical*3,
                      //             ),
                      //             GpCard()
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                    ],
                  ),
                  SizedBox(height: context.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OrderStatusCard(),
                      SizedBox(width: context.blockSizeHorizontal*1,),
                      TopProductSoldCallcenter(),
                    ],
                  )
                ],
              ),
            ),
            // RiveAnimation.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAM8BLAMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAAAAwECBAUG/9oACAEBAAAAAPNgAAAABMASWkkIJrEEAAAEhFmsW1K4JmZIAKwEjHWED6XztZmY52yVcw0ZJZotKVaKxjoTGhqnLtZL6SxU79PRbi4uV2Kehpz9GlGcZ9cNlS6VuoxadsQXr0uT6Tm9Tm4Iym+2Lp6J53PdfOUnYq0Jeiu1V6Xb0F9iJ52CmKOlmR28z8GHTVJSdaWWz6aQL0Znt2Y+r0VY8dE02F2c/oZslkVqqzV3Yq8QuWJY7o5+pptw6RC73Epbay1VhISAESBeX69ttPEx0i9ombroMFUqAEgAWLO6G17EcbJo2XpBOdVrIzVrIASWgkBu3ps6GvFw29LVVOLMm68iE1gAJmQtakWf2E+hfExlY61c3IQ/Lz0FIACZkL0tO3s3T2byRcgz8jk0otdejzSAJkAvV/T7+iKzeRGmVcTBiSUKnZ4oBISEy7d0eyVFZemnP0SfK4cpFYiJgCQCXLbq3dF7qzzo6y+T3y3meRmvfPAQSEgEs0amb9GnPL72jPz+9M8Hi5IpAAABM3Y7RubvXPF09PRFcSe3Y5nE5VIAIJCSzdGx/T1Qnmvy3Zs3ZuSd65zvN4lwAAEzbVq1O1NevJzLw6+TtO85p77Zw+Z51QAIkmz37etn5g9jOd0l9XmX27vF30UanAmgAAEubs6uvl827heX0Se95nu4Ot5PBq7W3j8bNAAETM2Zo3asuJr4zo9DXt8XRTpYvNN6+7kcTKAAAWuxrn5ss6G1x+mt10cHvIV5rV1NmDg4wAACbOa0ypLM2YPUN6deVpnN5zZ2WcnjIgkAALNbey80Me7D6jR0ar4vd5nlu71E8DnqCQC3/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/9oACgICEAMQAAAA1QADABAk2gE0JMBp6royuYqpQKK5dufo0z7uPLW+VKOm4sw3b6sgl4304jmeDqx2F6nn47682VhOu8YaF751MUzN0EYacfVpn6HnFmUk66rPWLx0BjJGBci5Opz089YuAYtRZ750DGrTBAjDYm8r5I6Lw35x592OyaGWqQCcZ0OLBO+fbGtY0i4dJjAJZpx5dE2rl3Od6ZbSqyuWDGmUnnfIlHYEXF65461OsRcsAZaqL5Dnx7HWsxtFRXRlzbBczQAFK50555qbYHRjqzLTqwx1y1cgABS0msnxm7QRvnTcXeavn30zEDAZc64vKN1biXDm6kZXPtrkIAZ//8QAPxAAAgIBAwEGBAMFBgQHAAAAAQIAAxEEEiExEBMiQVFxBTAyYRRCgSBSYnKRIyQzQFNjFTQ1oUNkgqKxwdH/2gAIAQEAAT8A/wAlg/sZ7MwGZ/Z5mOw/5MCVVh225xAypkKMn1m9uQCcGLTZZnwngAxqXXBKkZhUj5hPYe3ExK6yxPAncjrgQVVYzthprPlHr2H7GKm44AncKB6md3/Cs7lMfTHr2GVVKwJIhoT0EavaxErrDZz5Ra2Rhs+tuBKNA9jEm+V/C8MM3nEf4dbya7UHoAMQ1tl1sXD8exAjIRKq0Z/EOAI1FWPCgzCo3Hp1hVQM4lNQsJ4HAncD/TSfh12/4aZi6MN1AHtLdN3WMjIPQxaWYhVXJMOidPqQH9Z3KA8oohpTB8Ij1FfaYmD6dtRAU+87wAE4nfr+7AwIzLjmuVYVB6mM4UZM7/8AhitkCXcpKsBBMgy0Zw0q6frEQ11PeejDYs0Y4yMGcgzouDLwCrrjxN0moRkssVjk8H+sQ7cmByBmZJgOTNKMKzephYKpY+Qg1aZ+gyh0tAI6TUlbKrMDhR4ZoQqIXI5bp7TUXKg3GPqcn6Yjh1BxLMFHmezJ7BhQsbkYgr+8yRwFlhzhZkA49Zceg7EXge01HCD3hO1QAIHbJhYEHIlZwnSalh/w7RoQTuYzc9Fhsq8GG24DSw3HSm1bCj45wMyjVvv2anUanBErItVgGzswQ+c7hNco77d+8gmziOCqNMQcSl2WtRsMuc90eg7NMWrrX0ccmap0XTOAD5CAotaLzwomrc2AN5E4HsIYjFFHHWPYSh8MxMntNYxidOCZjEZtoziJlnBhAjnLGKMkTMtOWQQjMGO8xnyxNuT7RF+4EsRBp9CzHwFOksdLXCV1Kqou4CU+CurGCuOon4Wjex2dZVXWlpIAVduOJqk8LE8lLNp+2YVxiXgd2v3MI7PpUD7S8+ED7wZOAPOV4VAk1HSqv1eMN/GcDzmsI3IB6QwDAAlhwgH3/YX6hBZ9jLSGaIcqIULCV8OMwjBhRW5gCJ5Ew2LjziHfZnsZvE3vEdSB1i2IHUkEjPI9RCN9ekySQd4A9jHQhn3cDOGL9BNMNHldj1F1Y7cNgsJv8MXxPZknG3M1Tp1DZawBSB0GIcZ6GWGvGGRjjpNlJ6VPLK1XuyFIy0Cg+KNTW+MyumtOi8wkKM7DgfcR71a5WKkAETcvocS5K7OoMCVIeVYmbk67Wljh24BxMT9DMxWAOZ3w9DGbJJldm2DUAeRhcFicQXeRENgB84bYWzEfac4nffaZldm0wWD0mlvH91U9UvhrZrbMVguHJ8RldV1iYv0dOw+a9ZnAAyTz5nJlRPfe8suGeh65h1KfutPxNfmpn4pPRodQpsQ7ThYNVWM+FsQayv8AdaNrV42oY+pazr09IbMxNSVABGRDqEPrO/r9CY928YxgTI9Jmbvkk5/ZEOPKDMqZg6DJGSBkS621be9++GI9ZpviXk5jaou+Kq2ZvX6RNOLFsQ2NlmbnHQS7O9l8gTHmR2AZndzbAFm0HpO64jJicCDEAhEPzsQdgMQCOqPSwPQ6gH9GWU6HTjg1gGbK1J2iEcLgdDH0S6u2yytsJ6kdWl2lZGZW4IndMDKqN5i6bHlDp88CHS7YNP8AaGoLNgxHWd3mLXCojw/Lx2gfsI2IrsKi2Dg4A9wcgynVh8swwxEDjI4OWPAHJMq05IzaP/R/+ziarTd/gqQGAlumsRsMCJUK04JAlSUN1sQ/rFSkeaxq6W81jaZFH1S2tV/Mp/WEDnJmUY9VgrHkRLBtEZ4zQn5WO0DM8I+57VGYlbHoIdJYa62VM1PTXnHVCspotuu7upSMdWfgSjS10c5L2EYLmFj5drIlgwwBE/Bop9R6GLRWnRBBWvoIFxCinqBLqKApOxZcVUYGIoq67RBYijgCW2CO0YwVuULhfCOp+axGAo6TMCkjiKhMp02T5yj4c3V/APTzM+I2WCuuipCE/O3t0WUUX797M6FQNpgLt1OBjp6wD9nGZmFo96g7c8y/XNgj0j3EnM70xrWjWEzMM020aLU5+aPPsqUkynTl2VVHJlFFdI4GT5t24Gekz2+YEpsFj7vUZUfw5xmGCXkohceUt1LQ3YfJltpsYtgAwmMTjsxntr02/wCGsxdsKhYYGV+WFzCMReYteepEprEqJQWkdQqge7GKPOGZ7LLq6Rl+vko6mBrDqKFa45YkjBDdPKdSJfkg1jrZ4fYecqfPxLUoOiIiiHsYBlKnzGJfxmMCBuzxnEJ5MzMZhmYTns3Nt27jj0+Wg4yMZMxFUD8srWJwIFw9ijGd4/TCjmafUd8bMDCLgJGbAJnRFz1MzL6Tc94PqvhBwduJo83nTvt4q35fzc9BAcEQHOqAP5Bj/wCzPhbm3V32eozDBBNau260ejmWk8DsQcnmEYHPSE5PzsRBzKquckQVRKsSmnPMqQXi6vONwy5+xPSLVXSCEGM9T1Jl19aHDOFH3OJTYrV0AMDivJ92iwoj/Uit7jMGBwI3Es8Fmpf0rsafBVx3p9hDBBPiKj8TbGQu+1RLNu7w9B5+szxCfnBcxUgQqM4lYu+39ItVpGeP6RKy+PIHzxAndoeeimaA5Sw+eFBltmDNQWPcHOC1wjjZ8RNR82pf3CJN21yDF64hyNw8xHO6osPSa6wfhWsH/ioEnwf6Hh7BNdWr3AHzUTVgIDXV0P1H1h+cFJgQxKolEro3NnHtK9KOpncgjHlGrUDgSw/2dn8hmidhYyD8wl3jfCHcNgORzLkAvCnbhV8+cGam6v8AGaS/DgMmCGGMc4l2ppbdWGzbTjP8fqBKXFiBlYNt9Iw3LnzieF2XyM17Kgqo9GLH2afCsqcfdpnnt+I8GpvsZeSSTH+aBKwJWqtFqPliKxU4sTC/YwaileimJra/MESvVJYCRLdQB6Tvt4sBA+iVlRYN/wBJO1vZuJejB1qYkf3dgQvTdUuRKkUa+jH56VLfcz4la+po1D5CpTdsCwXMtHxV16kJNMLxXelJK2fhwEHmecz4bZTbUTUXHQPW5ztaXrtIcT4k+ddb7LNBZ5/c5gYEwHInM+IrmhD6PLhGJLH5gEVcxVJ4iVkYYDpKawVDnpjMuO7LHoeg+0disQkjJ6TfjDCZLQDFNx+6iOchoiPqNSN+1eM+vDLgyipDrEOWJq8IPqAJq9LTbRee6TeU64nw5qyHyvXCuPVcYmo0v4Syiyq19udgDchZoasG64uGsubL4GBLF3KRLwXJs888zSamui1y6kjAwB5mP8Y1POwVpK9f8Su6W3N/KJu+KMDzq5+Nt7m+i5795wV3GNY/5i04bJ+WIuIpAlT1yg1EjMb6Sqjw9TNRaefC0NgJ6NFfy2NFZv8ATaNd3X5DH1+Kigq6nOcw6pCCO7bOPWaX/HLf7C//ABNEM3uZ5TH4XWMvRSf+xj1jVaZqz5j+hmhtIcBvzcH7Osf6W9jFqsrqbvK2C5wMiMgKEjrmIiJtbAyJQ28DLEzCjyE11NYauwDlkloEJJ+WB2DmICORKrMYhuIHWWtmFvF7RGHrA0YAjmFtpO2akKGxtGQgz7zT9Hb/AMus0I/tGg6T4nTle8HVJ8Pv3piapDVqd69LeR/OsVhZWGHQia4Z0lv2GZUc7CQfDlmPtAFBQkZCgZ/WVDZnA4BOJhSoLdBNYd1NR9GeWfOEVwvUGK4PIzNxxLLcCF8QWSqzJEe/JUYxgSrD28/Qo3N7CWuWLMepJMo/5dm/2KxNEPE/6QdJaoYYIlJOk1O09Af+xl1Q1FBUHnqp+4misyCv64nxJ+70dvuBFcsLBgfQAP1MVVGST+Xge80oygz1lu36T5gia4oKagPUy3EPX5g5iwAHsLR89qkgrg+cAPSH+z0g9bX/APakPOZVxoEPrXVNGPq9xF6Rpr6eBaBys0F2+kAnkS5e5uFo+ljkz4vX3mmBBlLgFlC5yVGYik7sL9hNMjLgkS760HpzNa+So9BLD8o8doimBoD2PMZJ7KwDkH3jldu4TVgoaa/3alnlE/6dpvuqzSDwn+YxRxGEZN6kGU50uqKeRjKLayDL2F2m1FOPppaVApeqn1lOxVAZM55xKzkDAAzLmw7H7S5ssxjn5IUt0n//xAAmEQACAgEEAgICAwEAAAAAAAAAAQIRIQMQMUESICIyI1ETYXGB/9oACAECAQE/AK9q3vbJn3pENOPgmyK05YSR/HHzoa04snCLVpIjCHirSHBKXBrNLgtmnKyEYuNtIx+hQVDUDD6I+EeSUISjZ4oSMpU+KElBOsEZOVyRKTlNk8QoeKziyfNk8ifJB1JCrw/4JElUeRKxIkNNQ562UlayTnFxryTI6kHDMiE4K1Y5aSd2rHq+UlbwmaupFpVIWonH7Il9WSNGMW8suFYkXCvshzg+xyiuGKavLLhV2rJTbxeDGyZe9CQjpkqsg8sQkyimUUxjZe1iyI5Hs3Q4oqiMqJTXTPJ/tkZu1e8mNlbJERsTI5Y2kWN3tW0YOQoKJY2N742sWRLIkiWz2ivjL/NoOhyLtDlve9FCaJSrgabk0SVUh7JfjltDkY36pCSEhv8ASJeXZFMniV10SllMzTQivxjQi/aIkiTrCMGBtInKMlh8I1cSRPElLpklUiX1VE/irpHm30i/VCKRgbFJDaMWzV+xH5Qce0PMf7RB/Em/iXkXshbM7Gdo1PsyMvFpksSvpibiT+qFyxev/8QAJREAAgIBAwQCAwEAAAAAAAAAAQIAEQMSITEQICJBMDIEE2Fx/9oACAEDAQE/APgv4R0uOz6todY9mazpv3AchiswajGZtRomFzouYd+ZpEdY+vVsTN5kyvrIEvMILAFmebE1FdlajL6AgmE6oQBQgFCAW4MABBlCqiCERhc1W9f2XAAz3XuZGC1CwIETibFuPfSoq0bqFWB2EZSaM0tNNAxVrkQpvF+0EzMwHiJoe70mKMl8GFMoNgGDDkY20fEaXT6ijIoqjFFcjeb/AAGDkQRxxDQ5j51WD8hfZn71i5bMOQQNcHxa4STMiahsaMT8dtVus/WpFFFqZPx1AJUAVFPje8QsW4NRF7zGNC5ZaAVAK7MmUIaokzzy/bZYMajaoEUd5NQmhMuQ8TGKUX0HQncf70yIGIMReldxMLiZHN8iY1ORrPAgI0gxdxcHQ/YdG4iwDuZ6EyZq2ls3LVMX6QAAYXQGhEGpauKtWLlDYwwnygMIsSt+4zISBdRF1+T+pjUsSa2jKbupjxuWutoqslWPcxElTF3BHsQGxFO5BiU1i5oA9mEdxjWeIyG5ix0I+IxEaEeKzD9YfFgYNj/sceUQeVytoe4xgYREO0PEBuN9TMX1EYWKg3X+iUDE+xh2UQ9v/9k="),
          ],
        );
      }
    ),
);
  },
),
);
  }
}
