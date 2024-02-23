import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SalesGenaral.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import 'Sales_Genaral_Inventory/SalesGenaralInventory.dart';
import 'Sales_Invoice_Inventory/SalesInvoice.dart';
import 'Sales_Return_Inventory/ReturnOrderInventory.dart';
import 'Sales_Return_Invoice_Inventory/SalesReturnInvoice.dart';

class IntegratedTabScreen extends StatefulWidget {
  const IntegratedTabScreen({Key? key}) : super(key: key);

  @override
  State<IntegratedTabScreen> createState() => _IntegratedTabScreenState();
}

class _IntegratedTabScreenState extends State<IntegratedTabScreen>with TickerProviderStateMixin {
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  int? index;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    // getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.blockSizeVertical*3,),
          Container(
            // color: Colors.white,
            alignment: Alignment.bottomLeft,
            height: context.blockSizeVertical*4,
            // width: context.blockSizeHorizontal*50,
            child: ListView(
              controller: scrollController,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SingleChildScrollView(
                  child: TabBar(
                      // onTap: (val) async {
                      //   // print("valueeeeee is $val");
                      //   // final SharedPreferences prefs = await SharedPreferences.getInstance();
                      //   // prefs.setInt('index', val);
                      // },
                      labelStyle: GoogleFonts.roboto(color: Color(0xff000000),fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                      padding: EdgeInsets.only(left: 20),
                      isScrollable: true,
                      indicatorColor: Color(0xff322E4F),
                      indicatorWeight: 6,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 6.0,
                            color: Color(0xff687892),
                          ),
                          insets: EdgeInsets.only(left: context.blockSizeHorizontal*.014, right: context.blockSizeHorizontal*.017)),
                      controller: tabController,

                      tabs: [
                        Text("Sales General",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                        Text("Sales Invoice",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                        Text("Sales Return",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                        Text("Sales Return Invoice",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),


                      ]),
                ),
              ],
            ),

          ),
          SingleChildScrollView(
            child: Container(
              color: const Color(0xffE1E7ED),
              height: context.blockSizeVertical*92,
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                   SalesGenaralInventory(),
                   SalesInvoiceInventory(),
                   SalesReturnInventory(),
                  SalesReturnInvoiceInventory(),

                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
