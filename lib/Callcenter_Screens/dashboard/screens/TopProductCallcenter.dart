import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/new_orderlist/new_order_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../../salesapp_Screens/Dashbord_Screen/Dashboard_Widgets.dart';


class TopProductSoldCallcenter extends StatefulWidget {
  const TopProductSoldCallcenter({Key? key}) : super(key: key);

  @override
  State<TopProductSoldCallcenter> createState() => _TopProductSoldCallcenterState();
}

class _TopProductSoldCallcenterState extends State<TopProductSoldCallcenter> with TickerProviderStateMixin{
  List<NewOrderListModel>newOrderList=[];
  bool didDispose = false;
  Animation<Offset>? animation;
  AnimationController? animationController;

  Timer? _timer;
  Color _color = Colors.white70;

  int _start = 10;


  void startTimer() {

    const oneSec = const Duration(milliseconds: 100);
    _timer =  Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 9) {
          if(animationController!=null)  animationController!.forward();
        if(!didDispose)  setState(() {
            timer.cancel();

          });
        } else {
          if(!didDispose)   setState(() {


            // Generate a random color.
            _color = Colors.white;


          });
          if(!didDispose)     setState(() {
            _start--;
          });
        }
      },
    );


  }
  @override
  void initState() {
    context.read<NewOrderListCubit>().getNewOrderList();

    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    if(animationController!=null)
      animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(0, .2)).animate(animationController!);

    startTimer();
  }
  @override
  void dispose() {
    didDispose = true;


    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewOrderListCubit, NewOrderListState>(
    listener: (context, state) {
      state.maybeWhen(
          orElse: () {},
          error: () {
            print("error..read Customer");
          },
          success: (data) async {
            print("NewOrderListkmekmek;l");
            print(data.data);

            newOrderList=List.from(data.data);
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
          return
            Expanded(
            child:SlideTransition(
              position: animation!,
              child: Container(
                height: context.blockSizeVertical*47.5,
                // width: context.blockSizeHorizontal*46.5,

                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),color:_color,
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


                ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(left: context.blockSizeHorizontal*1.5,top: context.blockSizeVertical*2),
                      child: Text("New Orders", style: GoogleFonts.roboto(
                        color: Color(0xff66687b),
                        fontSize: context.blockSizeHorizontal*1,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    SizedBox(height: context.blockSizeVertical*3,),
                    BlocBuilder<NewOrderListCubit,NewOrderListState>(builder: (context, state){
                      return state.maybeWhen(orElse: (){
                        return customCupertinoLoading();
                      },error: (){
                        return customCupertinoLoading();
                      },
                        success: (data){
                        return newOrderList.isEmpty?   Container(
                            height:context.blockSizeVertical*39.5,
                            alignment: Alignment.center,
                            child: EmptyDataDisplay()): Container(
                          padding: EdgeInsets.only(left: 25),
                          height: context.blockSizeVertical*38.5,


                          child: ListView.separated(
                            itemCount: newOrderList.length,


                            itemBuilder: (context, index) {
                              return TopProduct(img1: newOrderList[index].image??"https://th.bing.com/th/id/OIP.SwNyAEMx4bsbmGAsBkmmNwHaFj?w=242&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7" ,text1: newOrderList[index].variantName??"",text2: newOrderList[index].sellingPrice?.toString()??"" ,
                                text3: newOrderList[index].totalAmount?.toStringAsFixed(2)??"",);
                            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: context.blockSizeVertical*1,) ;},),
                        );
                        }

                      );
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
