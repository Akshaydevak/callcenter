import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/admin_dashboard.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/dashboard_card.dart';
import 'package:salesapp/Callcenter_Screens/svg/dashboard_svg.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/User_Count/admin_user_count_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/channel_count/admin_channel_count_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/today_sale/todays_sale_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/total_holding/total_holding_cubit.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class AdmindashTop extends StatefulWidget {
  final bool isLoading;

  const AdmindashTop({Key? key, this.isLoading = false}) : super(key: key);

  @override
  State<AdmindashTop> createState() => _AdmindashTopState();
}

class _AdmindashTopState extends State<AdmindashTop> {
  int totalUserCount = 0;
  int totalChannelCount = 0;
  String todaySale="";
  String totalHolding="";
  @override
  void initState() {

    context.read<TodaysSaleCubit>().getTodaysSale(type: "inv");
    context.read<TotalHoldingCubit>().getTotalHoldings(type: "inv");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          AdminUserCountCubit()..getAdminUserCount(),
        ), BlocProvider(
          create: (context) =>
          AdminChannelCountCubit()
            ..getAdminChannelCount(),
        ),

      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AdminUserCountCubit, AdminUserCountState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {},
                  success: (data) {
                    setState(() {
                      print("dataaaaaaaaaa${data.channels}${data.employees}");
                      totalUserCount = (data?.employees ?? 0) + (data?.directores ?? 0)
                     ;
                    });
                  });
            },
          ),
          BlocListener<TodaysSaleCubit, TodaysSaleState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {},
                  success: (data) {
                    setState(() {

                      todaySale = data.todaysSale?.toString()??"";
                     ;
                    });
                  });
            },
          ),
          BlocListener<TotalHoldingCubit, TotalHoldingState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {},
                  success: (data) {
                    setState(() {

                      totalHolding = data.data.toString()??"";

                    });
                  });
            },
          ),
          BlocListener<AdminChannelCountCubit, AdminChannelCountState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {},
                  success: (data) {
                    setState(() {
                      print("dataaaaaaaaaa${data.channels}${data.employees}");
                      totalChannelCount =
                          data.channels??0;
                    });
                  });
            },
          ),
        ],
        child: Builder(
            builder: (context) {
              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardCard(
                        isWidth: false,
                        isSkelton: widget.isLoading,
                        width: context.blockSizeHorizontal * 14.7,
                        img: DashBoardSvg().arrowIcon,
                        icon: DashBoardSvg().userIcon,
                        name: "Total Users",
                        amount: totalUserCount?.toString() ?? "0",
                        percentage: ""),
                    SizedBox(width: context.blockSizeHorizontal * 1,),
                    DashboardCard(
                        isWidth: false,
                        isSkelton: widget.isLoading,
                        width: context.blockSizeHorizontal * 14.7,
                        img: DashBoardSvg().arrowIcon,
                        icon: DashBoardSvg().channelIcon,
                        name: "Total Channel",
                        amount: totalChannelCount?.toString() ?? "0",
                        percentage: ""),
                    SizedBox(width: context.blockSizeHorizontal * 1,),
                    DashboardCard(
                        isSkelton: widget.isLoading,
                        isWidth: false,
                        width: context.blockSizeHorizontal * 14.7,
                        img: DashBoardSvg().arrowIcon,
                        icon: DashBoardSvg().ordersIcon,
                        name: "Today Sales",
                        amount: todaySale,
                        percentage: ""),
                    SizedBox(width: context.blockSizeHorizontal * 1,),
                    DashboardCard(
                        isSkelton: widget.isLoading,
                        isWidth: false,
                        width: context.blockSizeHorizontal * 14.7,
                        img: DashBoardSvg().arrowIcon,
                        icon: DashBoardSvg().ordersIcon,
                        name: "Total Holdings",
                        amount: totalHolding,
                        percentage: ""),
                  ],

                ),
              );
            }
        ),
      ),
    );
  }
}
