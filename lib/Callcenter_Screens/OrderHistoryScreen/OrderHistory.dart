import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Holded_Orders_Cubit/holded_orders_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../Cubit/Call_Center_Cubit/All_Orders_Cubit/all_orders_cubit.dart';
import '../../Cubit/Call_Center_Cubit/Success_Orders_Cubit/success_orders_cubit.dart';
import '../Callcenter/widgets.dart';
import 'Table_Order_History.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen>with TickerProviderStateMixin {
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  TextEditingController search =TextEditingController();
  List<AllOrdersTables>allOrders=[];
  bool   isPageSearch=false;
  final GlobalKey<TableAllOrderState> alOrderState= GlobalKey<TableAllOrderState>();
  final GlobalKey<TableHoldedState> holdOrderState= GlobalKey<TableHoldedState>();
  final GlobalKey<TableSucessState> successOrderState= GlobalKey<TableSucessState>();

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this,);
    super.initState();
  }
  bool allOrde=true;
  bool holdOrder=false;
  bool sucsessOrder=false;

  @override
  Widget build(BuildContext context) {

    return  BlocListener<AllOrdersCubit, AllOrdersState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read Customer");
            },
            success: (data) async {
              allOrders=[];
              allOrders=data.data;
              print("last${allOrders}");
              setState(() {

              });

            });
      },
  child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor:Color(0xffE1E7ED),
          appBar: AppBar(
            toolbarHeight: context.blockSizeVertical*0.05,
            automaticallyImplyLeading: false,
            backgroundColor:Color(0xffE1E7ED),
            elevation: 0,
            bottom:   PreferredSize(
              preferredSize: Size.fromHeight(context.blockSizeVertical*14),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2,top: context.blockSizeVertical*2),
                    child: Text("Order History",style: TextStyle(fontSize: context.blockSizeHorizontal*1.2,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: context.blockSizeVertical*2,),
                  Container(
                    margin: EdgeInsets.only(left:  context.blockSizeHorizontal*2),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          width: context.blockSizeHorizontal*74,
                          // height: context.blockSizeVertical*5.6,

                          child: TextFormField(
                            controller: search,
                            onChanged: (sa){
                                 isPageSearch=true;
                                 alOrderState.currentState?.isCallPaginated=false;
                                 alOrderState.currentState?.pagintedCountReset();
                              holdOrderState.currentState?.pagintedCountReset();
                              successOrderState.currentState?.pagintedCountReset();
                              holdOrderState.currentState?.isCallPaginated=false;
                              successOrderState.currentState?.isCallPaginated=false;

                              allOrde==true?context.read<AllOrdersCubit>().getSearchAllOrders(search.text):
                              holdOrder==true?context.read<HoldedOrdersCubit>().getSearchHoldedOrders(search.text):
                              sucsessOrder==true?context.read<SuccessOrdersCubit>().getSearchSuccessOrders(search.text):
                              null;
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              hintText: "Search Order by order id / User's Name...",
                              hintStyle: TextStyle(fontSize: context.blockSizeVertical*1.5),
                              isDense: true,
                              label: null,
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.symmetric(vertical:context.blockSizeVertical*2.25,horizontal:context.blockSizeHorizontal*1.25 ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide:
                                BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide:
                                BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                              ),
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                            ),
                          ),
                        ),

                        SizedBox(width: context.blockSizeHorizontal*.5,),
                        Container(
                          width: context.blockSizeHorizontal*14.5,
                          height: context.blockSizeVertical*5,
                          alignment: Alignment.topLeft,
                          child: TabBar(
                              padding: EdgeInsets.zero,
                              labelColor:  Colors.white,
                              // labelPadding: EdgeInsets.zero,
                              isScrollable: true,
                              onTap: (val){
                            print("VALLL$val");
                            if(val==0){

                              allOrde=true;
                              holdOrder=false;
                              sucsessOrder=false;
                              // context.read<AllOrdersCubit>().getAllOrdersList();
                              setState(() {

                              });
                            }
                            else if(val==1){
                              holdOrder=true;
                              allOrde=false;
                              sucsessOrder=false;
                              context.read<HoldedOrdersCubit>().getHoldedOrdersList();
                            }
                            else if(val==2){
                              sucsessOrder=true;
                              allOrde=false;
                              holdOrder=false;
                              context.read<SuccessOrdersCubit>().getSuccessOrdersList();
                            }
                              },
                              unselectedLabelColor: const Color(0xff7F8DA1),
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff7789A6)),
                              tabs: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text("All Orders",style: TextStyle(fontSize: context.blockSizeHorizontal*0.75,fontWeight: FontWeight.bold,),),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Holdings",style: TextStyle(fontSize: context.blockSizeHorizontal*0.75,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Success",style: TextStyle(fontSize: context.blockSizeHorizontal*0.75,fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body:
          TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
              children: [
                TableAllOrder(isPageSearch: isPageSearch,key: alOrderState,),
                TableHolded(isPageSearch: isPageSearch,key: holdOrderState,),
                TableSucess(isPageSearch: isPageSearch,key: successOrderState,)
              ]),
        )
    ),
);
    //   Container(
    //   color:const Color(0xffE1E7ED),
    //   child: Column(
    //         children: [
    //           SizedBox(
    //             // height: context.blockSizeVertical*11,
    //             child: Column(
    //               children: [
    //                 SizedBox(height: context.blockSizeVertical*2.5,),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //
    //                     Container(
    //                       color: Colors.white,
    //                         // (0xffE5E8EC),
    //                       alignment: Alignment.center,
    //                       height: context.blockSizeVertical*5,
    //                       width: context.blockSizeHorizontal*20,
    //                       child: TabBar(labelColor: Colors.white,
    //                           unselectedLabelColor: Color(0xff7F8DA1),
    //                           labelStyle: const TextStyle(fontWeight: FontWeight.bold),
    //                           unselectedLabelStyle: TextStyle(color: Colors.black),
    //                           // isScrollable: true,
    //                           indicatorColor: const Color(0xff322E4F),padding: EdgeInsets.zero,
    //                           indicatorWeight: 15,indicatorSize: TabBarIndicatorSize.label,
    //                           // indicatorPadding: EdgeInsets.all(5),
    //
    //                           indicator: BoxDecoration(shape: BoxShape.rectangle,
    //                               borderRadius: BorderRadius.circular(5), // Creates border
    //                               color: Colors.blueGrey),
    //
    //                           controller: tabController,
    //
    //                           tabs: const [
    //                             Text("All Orders"),
    //                             Text("Holdings"),
    //                             Text("Success"),
    //                           ]),
    //
    //                     ),
    //
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SingleChildScrollView(
    //             child: Container(
    //               height: context.blockSizeVertical*75,
    //               width: context.blockSizeHorizontal*90,
    //
    //               child: TabBarView(
    //                 controller: tabController,
    //                 physics: NeverScrollableScrollPhysics(),
    //                 children:  const [
    //
    //                   TableAllOrder(),
    //                   TableHolded(),
    //                   TableSucess()
    //
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    // );

  }
}
