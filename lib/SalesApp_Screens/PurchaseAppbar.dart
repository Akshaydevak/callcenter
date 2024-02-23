import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/salesapp_Screens/SalesGenaral/SalesGenaral.dart';
import 'package:salesapp/salesapp_Screens/Sales_Invoice/SalesInvoice.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widgets/Reusable_widget_web.dart';
import 'Dashbord_Screen/Dash_View.dart';
import 'Integrated_Sales_Orders/Integrated_Main_Screen.dart';
import 'SalesReturn/SalesReturn.dart';
import 'SalesReturnInvoice/SalesReturnInvoice.dart';



class PurchaseAppbarDesign extends StatefulWidget {

  const PurchaseAppbarDesign({Key? key, }) : super(key: key);

  @override
  State<PurchaseAppbarDesign> createState() => _PurchaseAppbarDesignState();
}

class _PurchaseAppbarDesignState extends State<PurchaseAppbarDesign> with TickerProviderStateMixin{
  ScrollController? scrollController = ScrollController();
  TabController? tabController;
  int? index;

  void getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      index = pref.getInt('index') ?? 0;
      tabController = TabController(length: 6, vsync: this,initialIndex: index??0);
      print("INX$index");

    });
  }
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this,initialIndex: index??0);
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: context.blockSizeVertical*2,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: context.blockSizeHorizontal*0.07,),
              Container(
                alignment: Alignment.bottomLeft,
                height: context.blockSizeVertical*3,
                width: context.blockSizeHorizontal*50,
                child: ListView(
                  controller: scrollController,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SingleChildScrollView(
                      child: TabBar(
                          onTap: (val) async {
                            print("valueeeeee is $val");
                            final SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setInt('index', val);
                          },
                          labelStyle: GoogleFonts.roboto(color: Color(0xff000000),fontWeight: FontWeight.bold),
                          unselectedLabelStyle: const TextStyle(color: Color(0xff000000,)),
                          padding: const EdgeInsets.only(left: 20),
                          isScrollable: true,
                          indicatorColor: const Color(0xff322E4F),
                          indicatorWeight: 6,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: UnderlineTabIndicator(
                              borderSide: const BorderSide(
                                width: 6.0,
                                color: Color(0xff687892),
                              ),
                              insets: EdgeInsets.only(left: context.blockSizeHorizontal*.014, right: context.blockSizeHorizontal*.017)),
                          controller: tabController,

                          tabs: [
                           Text("Dashboard",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                           Text("General",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                           Text("Sales Invoice",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                           Text("Sales Return",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                           Text("Sales Return Invoice",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),
                           Text("Integrated Sales Order Inventory",style: GoogleFonts.roboto(color: Colors.black,fontSize: context.blockSizeHorizontal*1),),

                          ]),
                    ),
                  ],
                ),

              ),
              // SizedBox(width: context.blockSizeHorizontal*2,),
              // Stack(
              //   children: [
              //         Container(
              //         width: context.blockSizeHorizontal * 50,
              //         child: TextFormField(
              //           maxLines: 1,
              //           decoration: InputDecoration(
              //             fillColor: Color(0xffF4F7FA),
              //             isDense: true,
              //             hintText: "Search Property, Customer etc",
              //             contentPadding: EdgeInsets.all(12),
              //             filled: true,
              //             border: const OutlineInputBorder(
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(3),
              //               ),
              //               borderSide: BorderSide.none,
              //             ),
              //             prefixIcon: Padding(
              //                 padding: const EdgeInsets.only(left: 10),
              //                 child: GestureDetector(
              //                   child: const Icon(
              //                     Icons.search,
              //                   ),
              //                 )),
              //             hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
              //             // ),
              //           ),
              //         )),
              //       ],
              // ),

              // SizedBox(width: context.blockSizeHorizontal*32,),
              Spacer(),
              Image(image: AssetImage("asset_images/shape.png",),width: context.blockSizeVertical*3,height: context.blockSizeHorizontal*3,),
              SizedBox(width: context.blockSizeHorizontal*2,),
              Image(image: AssetImage("asset_images/bellnoti.png",),width: context.blockSizeVertical*3,height: context.blockSizeHorizontal*3,),
              SizedBox(width: context.blockSizeHorizontal*2,),
              Image(image: AssetImage("asset_images/dots.png"),width: context.blockSizeVertical*2.5,height: context.blockSizeHorizontal*2.5,),
              SizedBox(width: context.blockSizeHorizontal*1.6),
              // ProfileContainer(),
              SizedBox(width: context.blockSizeHorizontal*1.6,),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              color: Color(0xffE1E7ED),
              height: context.blockSizeVertical*100,
              child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: const [
                  DashboardView(),
                  SalesGenaral(),
                  SalesInvoice(),
                  SalesReturn(),
                  SalesReturnInvoice(),
                  IntegratedTabScreen(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
