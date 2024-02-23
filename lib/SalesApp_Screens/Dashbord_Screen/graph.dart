import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 15),
            child: Row(
              children: [
                Text("Total Revenue",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.9),),
                SizedBox(width: context.blockSizeHorizontal*42,),
                Text("Yearly",style: GoogleFonts.roboto(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*0.8),),
                SizedBox(width: context.blockSizeHorizontal*1,),
                Text("Monthly",style: GoogleFonts.roboto(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*0.8)),
                SizedBox(width: context.blockSizeHorizontal*1,),
                Text("Daily",style: GoogleFonts.roboto(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*0.8)),
                SizedBox(width: context.blockSizeHorizontal*1,),
                Icon(Icons.more_horiz,color: Color(0xff66687B),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text("AED 236,535",style: GoogleFonts.roboto(fontWeight: FontWeight.w600,fontSize: context.blockSizeHorizontal*1.2),),
                SizedBox(width: context.blockSizeHorizontal*1,),
                Image(image: AssetImage("asset_images/toparrow.png"),
                  height: context.blockSizeVertical*2,width: context.blockSizeHorizontal*2,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("0.8%",style: GoogleFonts.roboto(fontWeight: FontWeight.w800,),),
                    Text("Than last day",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.8,color: Color(0xff66687B)),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: context.blockSizeVertical*35,
            width: context.blockSizeHorizontal*67,

            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 15,bottom: 15,right: 15),
              child: BarChart(
                  BarChartData(
                  borderData: FlBorderData(
                      border: const Border(
                        top: BorderSide.none,
                        right: BorderSide.none,
                        left: BorderSide(width: 1),
                        bottom: BorderSide(width: 1),
                      )),
                  groupsSpace: 10,
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(toY: 10, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(toY: 9, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(toY: 4, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(toY: 2, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(toY: 13, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 6, barRods: [
                      BarChartRodData(toY: 17, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 7, barRods: [
                      BarChartRodData(toY: 19, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 8, barRods: [
                      BarChartRodData(toY: 20, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 9, barRods: [
                      BarChartRodData(toY: 15, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 10, barRods: [
                      BarChartRodData(toY: 19, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 11, barRods: [
                      BarChartRodData(toY: 7, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 12, barRods: [
                      BarChartRodData(toY: 3, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 13, barRods: [
                      BarChartRodData(toY: 18, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 14, barRods: [
                      BarChartRodData(toY: 20, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 15, barRods: [
                      BarChartRodData(toY: 4, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 16, barRods: [
                      BarChartRodData(toY: 8, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 17, barRods: [
                      BarChartRodData(toY: 10, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 18, barRods: [
                      BarChartRodData(toY: 1, width: 15, color: Color(0xff687892)),
                    ]),
                    BarChartGroupData(x: 19, barRods: [
                      BarChartRodData(toY: 15, width: 15, color: Color(0xff687892)),
                    ]),
                  ])),
            ),
          ),
        ],
      ),
    );
  }
}
