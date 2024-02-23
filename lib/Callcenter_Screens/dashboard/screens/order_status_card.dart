import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/order_status/order_status_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import '../../OrderHistoryScreen/Table_Order_History.dart';
import 'order/order_status_model.dart';

class OrderStatusCard extends StatefulWidget {
  const OrderStatusCard({Key? key}) : super(key: key);

  @override
  State<OrderStatusCard> createState() => _OrderStatusCardState();
}

class _OrderStatusCardState extends State<OrderStatusCard>with TickerProviderStateMixin {
  ScrollController controller=ScrollController();
  bool didDispose = false;
  List<OrderStatus>orderList=List.from([]);
  final LoadingOverlay _loadingOverlay = LoadingOverlay();
  Animation<Offset>? animation;
  AnimationController? animationController;
  Timer? _timer;
  Color _color = Colors.white70;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  int _start = 10;
  void startTimer() {
    // if(animationController!=null)  animationController!.forward();
    const oneSec = const Duration(milliseconds: 100);
    _timer =  Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 9) {
          if(animationController!=null)  animationController!.forward();
        if(  !didDispose)  setState(() {
            timer.cancel();


          });
        } else {
          if(  !didDispose)   setState(() {
            // Create a random number generator.


            // Generate a random color.
            _color = Colors.white;


          });
          if(  !didDispose)  setState(() {
            _start--;
          });
        }
      },
    );


  }
  @override
  void initState() {
    context.read<OrderStatusCubit>().getOrderStatus();
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    if(animationController!=null)
      animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(0, .2)).animate(animationController!);

    startTimer();
  }
  @override
  void dispose() {
    didDispose = true;
    animationController?.dispose();
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return BlocConsumer<OrderStatusCubit, OrderStatusState>(
    listener: (context, state) {
      state.maybeWhen(
          orElse: () {},
          error: () {

          },
          loading: (){


              _loadingOverlay.show(context);
          },

          success: (data) async {
            print("fxdgcvjmk;l");
            print(data.data);

            orderList=List.from(data.data);
            // if(isPageSearch){
            //
            //   setState(() {
            //     variantListt=data.data;
            //   });
            // }else {
            //   if (data.data.isNotEmpty) {
            //     for (var i = 0; i < data.data.length; i++) {
            //       variantListt.add(data.data[i]);
            //     }
            //   }
            //
            //
            //   nextPage = "";
            //   if (data.nextPage != null) {
            //     nextPage = data?.nextPage ?? "";
            //   }
            //   else {
            //     nextPage = "";
            //   }
            //   print(data.nextPage);
            //
            //   setState(() {
            //
            //   });
            // }
          }
      );

    },
    builder: (context, state) {
      return Builder(
        builder: (context) {
          return Expanded(
            child: SlideTransition(
              position: animation!,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),

                height: context.blockSizeVertical*47.5,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(-1, -1), // changes position of shadow
                    ),
                  ],
                  borderRadius: _borderRadius,
                  color: _color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: context.blockSizeHorizontal*1.5,top: context.blockSizeVertical*2),
                      child: Text("Order Status(Latest)", style: GoogleFonts.roboto(
                        color: Color(0xff66687b),
                        fontSize: context.blockSizeHorizontal*1,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    SizedBox(height: context.blockSizeVertical*2.5,),
              BlocBuilder<OrderStatusCubit,OrderStatusState>(builder: (context, state){
                return state.maybeWhen(orElse: (){
                  return customCupertinoLoading();
                },
                loading: (){
                  return customCupertinoLoading();
                },success: (data){
                  return Column(
                    children: [
                      if(orderList.isEmpty)
                        Container(
                            alignment: Alignment.center,
                            height: context.blockSizeVertical*39.5,
                            child: EmptyDataDisplay())
                      else...[
                        Container(
                          // color: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1.5),
                            // padding:  EdgeInsets.only(left: context.blockSizeHorizontal*1.5,right:context.blockSizeHorizontal*1,top: context.blockSizeVertical*2),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start
                                ,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // SizedBox(width:  context.blockSizeHorizontal*1.5,),
                                  Container(
                                    width:w/12,

                                    child: Text(
                                      orderstatusList[0].orderId,
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff11142d),
                                        fontSize: context.blockSizeHorizontal*.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:w/12,

                                    child: Text(
                                      orderstatusList[0].orderDate,
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff11142d),
                                        fontSize: context.blockSizeHorizontal*.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:w/12,
                                    child: Text(
                                      orderstatusList[0].userName,
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff11142d),
                                        fontSize: context.blockSizeHorizontal*.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:w/12,

                                    child: Text(
                                      orderstatusList[0].amount,
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff11142d),
                                        fontSize: context.blockSizeHorizontal*.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: context.blockSizeHorizontal*4,),
                                  Container(
                                    // width:w/15,
                                    child: Text(
                                      orderstatusList[0].status,
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff11142d),
                                        fontSize: context.blockSizeHorizontal*.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),

                                ])
                        ),
                        SizedBox(height: context.blockSizeVertical*2,),

                        Container(
                          height: context.blockSizeVertical*35.5,
                          padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1.5),
                          // padding:  EdgeInsets.only(left: context.blockSizeHorizontal*1.5,right:context.blockSizeHorizontal*1.5,top: context.blockSizeVertical*2),
                          child: ListView.separated(
                            controller: controller,
                            scrollDirection: Axis.vertical,

                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: orderList.length,
                            itemBuilder: (BuildContext context, int i) {
                              // if(i==0){
                              //   return
                              //     Container(
                              //     width: w,
                              //     padding: EdgeInsets.all(10),
                              //     child: Row(
                              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment: CrossAxisAlignment.center,
                              //         children: [
                              //           Text(
                              //             orderstatusList[0].orderId,
                              //             style: GoogleFonts.roboto(
                              //               color: Color(0xff11142d),
                              //               fontSize: context.blockSizeHorizontal*.9,
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //           ),
                              //           Text(
                              //             orderstatusList[0].orderDate,
                              //             style: GoogleFonts.roboto(
                              //               color: Color(0xff11142d),
                              //               fontSize: context.blockSizeHorizontal*.9,
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //           ),
                              //           Text(
                              //             orderstatusList[0].userName,
                              //             style: GoogleFonts.roboto(
                              //               color: Color(0xff11142d),
                              //               fontSize: context.blockSizeHorizontal*.9,
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //           ),
                              //           Text(
                              //             orderstatusList[0].amount,
                              //             style: GoogleFonts.roboto(
                              //               color: Color(0xff11142d),
                              //               fontSize: context.blockSizeHorizontal*.9,
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //           ),
                              //           Text(
                              //             orderstatusList[0].status,
                              //             style: GoogleFonts.roboto(
                              //               color: Color(0xff11142d),
                              //               fontSize: context.blockSizeHorizontal*.9,
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //           ),
                              //
                              //         ])
                              //   );
                              // }
                              return InkWell(
                                  onTap:() {
                                    createOrPatch=true;
                                    invoicePage=false;
                                    Variable.callOrderId=int.tryParse( orderList[i].id.toString())??0;
                                    context.read<ReadOrdersCubit>().getOrdersRead( orderList[i].id??0);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>
                                            CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),editOrder: true,)
                                        ));
                                  },
                                  child: Container(
                                    width: w ,
                                    padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*.1,vertical: context.blockSizeHorizontal*.1, ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:w/12,
                                          child: Text(
                                            orderList[i].id.toString(),
                                            style: TextStyle(
                                              color: Color(0xff66687b),
                                              fontSize: context.blockSizeHorizontal*.9,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:w/12,
                                          child: Text(
                                            DateFormat('yyyy-MM-dd').format(DateTime.parse(orderList[i].orderedDate.toString()))   ,
                                            style: TextStyle(
                                              color: Color(0xff66687b),
                                              fontSize: context.blockSizeHorizontal*.9,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:w/12,
                                          child: Text(
                                            orderList[i].customerName.toString(),
                                            style: TextStyle(
                                              color: Color(0xff66687b),
                                              fontSize: context.blockSizeHorizontal*.9,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:w/12,
                                          child: Text(
                                            orderList[i].total.toString(),
                                            style: TextStyle(
                                              color: Color(0xff66687b),
                                              fontSize: context.blockSizeHorizontal*.9,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: context.blockSizeHorizontal*3.25,),
                                        Container(

                                          // width:w/7,
                                          padding: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*.8,vertical: context.blockSizeVertical*.8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(context.blockSizeHorizontal*2),
                                            color: orderList[i].orderStats=="pending"?Color(0xffef6d1f):Color(0xff08aa58),
                                          ),
                                          child: Text(
                                            orderList[i].orderStats??"",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: context.blockSizeHorizontal*.8,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )


                                      ],
                                    ),
                                  ));
                            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(); },
                          ),
                        ),
                      ]
                      ,
                    ],
                  );
                    });
              },)



                  ],
                ),
              ),
            ),
          );
        }
      );
    },
);
  }
}
