import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Customer_Count/custumer_count_cubit.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Latest_Order_Count/latest_order_count_cubit.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Newly_Added_Product_Count/newly_count_cubit.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Percentage_Cubit/percentage_cubit.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Percentage_Gp/percentage_gp_cubit.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Count_Model_Class/Count_Model_Class.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../Callcenter_Screens/dashboard/screens/dashboard_card.dart';
import '../../Callcenter_Screens/svg/dashboard_svg.dart';
import '../../Models/Dashboard_model_Class/Percentage_Models/Percentage.dart';
import 'OrderStatusTable.dart';
import 'Recent_Customer.dart';
import 'TopProductSold.dart';
import 'graph.dart';

class DashboardView extends StatefulWidget {

  const DashboardView({Key? key,}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  CountModels? cusCount;
  CountModels? orderCount;
  CountModels? newlyCount;
  Percentage? percent;
  PercentageGp? percentt;
  String incDec="";
  bool enable = true;
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          CustumerCountCubit()
            ..getCustomerCount(),
        ),
        BlocProvider(
          create: (context) =>
          LatestOrderCountCubit()
            ..getOrderCount(),
        ),
        BlocProvider(
          create: (context) =>
          PercentageCubit()
            ..getOrderPercent(),
        ),
        BlocProvider(
          create: (context) =>
          NewlyCountCubit()
            ..getNewlyCount(),
        ),
        BlocProvider(
          create: (context) =>
          PercentageGpCubit()
            ..getOrderPercentGp(),
        ),


      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CustumerCountCubit, CustumerCountState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },
                  success: (data) {
                    setState(() {
                      cusCount = data;
                      // print("hhh$cusCount");
                    });
                  }
              );
            },
          ),
          BlocListener<LatestOrderCountCubit, LatestOrderCountState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },
                  success: (data) {
                    setState(() {
                      orderCount = data;
                      // print("hhh$cusCount");
                    });
                  }
              );
            },
          ),
          BlocListener<PercentageCubit, PercentageState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },
                  success: (data) {
                    setState(() {
                      percent = data;
                      if(percent?.increase==null){
                         incDec=percent?.decrease??"";
                      }else{
                        incDec=percent?.increase??"";
                      }

                    });
                  }
              );
            },
          ),
          BlocListener<NewlyCountCubit, NewlyCountState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },
                  success: (data) {
                    setState(() {
                      newlyCount = data;
                      // print("hhh$cusCount");
                    });
                  }
              );
            },
          ),
          BlocListener<PercentageGpCubit, PercentageGpState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },
                  success: (data) {
                    setState(() {
                      percentt = data;


                    });
                  }
              );
            },
          ),
        ],
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            height: context.blockSizeHorizontal*57,
            child: Column(
              children: [
                SizedBox(height: context.blockSizeVertical*3,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: context.blockSizeHorizontal*2,),
                    Text("Dashboard", style: TextStyle(
                        fontSize: context.blockSizeHorizontal * 1.2,
                        fontWeight: FontWeight.w600),),
                    SizedBox(width: context.blockSizeHorizontal * 0.2,),
                    Text("Today,$currentDate", style: TextStyle(
                        fontSize: context.blockSizeHorizontal * 0.9,
                        color: Color(0xff838383)),),
                    Spacer(),
                    Container(height: context.blockSizeVertical*5,
                      width: context.blockSizeHorizontal*14,
                      color: Color(0xffFFFFFF),
                    child: Row(
                      children: [
                        Container(height: context.blockSizeVertical*5,
                          width: context.blockSizeHorizontal*3,color: Color(0xffF2F4F6),
                        child: const Center(
                          child: Image(image: AssetImage("asset_images/cal.png"),),
                        ),),
                        SizedBox(width: context.blockSizeHorizontal * 1,),
                        Text("12/10/2021 - 01/08/2022",style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: context.blockSizeHorizontal*0.8,color: Color(0xff7F8DA1)),)
                      ],
                    ),),
                    SizedBox(width: context.blockSizeHorizontal * 2,),

                  ],
                ),
                SizedBox(height: context.blockSizeVertical * 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(width: context.blockSizeHorizontal*0.1,),
                      DashboardCard(
                          width: context.blockSizeHorizontal*17,
                          img: DashBoardSvg().arrowIcon,
                          icon: DashBoardSvg().propertySaleIcon,
                          name: "Properties For Sale",
                          amount: "685",
                          percentage: "23%"),
                      DashboardCard(
                          width: context.blockSizeHorizontal*17,
                          img: DashBoardSvg().arrowIcon,
                          icon: DashBoardSvg().topCustomerIcon,
                          name: "Newly Added Products",
                          amount: newlyCount?.count?.toString()??"0",
                          percentage: percentt?.data.toString()??""),
                      DashboardCard(
                          width: context.blockSizeHorizontal*17,
                          img: DashBoardSvg().arrowIcon,
                          icon: DashBoardSvg().NewlyIcon,
                          name: "Top Customers",
                          amount: cusCount?.count.toString() ?? "",
                          percentage: "23%"),
                      DashboardCard(width: context.blockSizeHorizontal*17,

                          icon: DashBoardSvg().latestOrderIcon,
                          name: "Latest Orders",
                          amount: orderCount?.count?.toString()??"0",
                          percentage: incDec,
                          img: incDec=="increase"?DashBoardSvg().arrowdown:DashBoardSvg().arrowIcon,),
                      DashboardCard(
                          width: context.blockSizeHorizontal*17,
                        img: DashBoardSvg().arrowIcon,
                          icon: DashBoardSvg().propertySaleIcon,
                          name: "Properties For Sale",
                          amount: "685",
                          percentage: "23%"),
                      // SizedBox(width: context.blockSizeHorizontal*0.5,)

                    ],
                  ),
                ),
                SizedBox(height: context.blockSizeVertical * 3,),
                Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Graph(),
                          // SizedBox(width: context.blockSizeHorizontal * 1.5,),
                          const Recent(),

                        ]
                    ),
                    SizedBox(height: context.blockSizeVertical * 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatusTable(),
                        // SizedBox(width: context.blockSizeHorizontal * 1.5,),
                        TopProductSold()

                      ],
                    ),
                    SizedBox(height: context.blockSizeVertical * 5,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
