import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../svg/dashboard_svg.dart';
import 'order/order_model.dart';
class OrderCard extends StatefulWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width:  w/2.2,
      height: h/2.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffeef0f2), width: 1, ),
        boxShadow: [
          BoxShadow(
            color: Color(0x26cccccc),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Orders",
            style: TextStyle(
              color: Color(0xff11142d),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: h/2.8,
            child: Scrollbar(
              child: ListView.separated(
                scrollDirection: Axis.vertical,

                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: orderList.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                      // onTap: orderList(i, context),
                      child: Container(
                        width: w ,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: h/15,
                             width: w/25,
                             padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Color(0x33687892), width: 1, ),
                              ),
                              child: Image.asset(orderList[i].image),
                            ),
                            // SizedBox(width: 10,),
                            Container(
                              width: w/4,
                              child: Text(
                                "Wireless Headphones with Noies with Noisese Cancellation ...",
                                style: TextStyle(
                                  color: Color(0xff66687b),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              "6840",
                              style: GoogleFonts.roboto(
                                color: Color(0xff11142d),
                                fontSize: 18,

                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // SizedBox(width: 10,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.string(DashBoardSvg().arrowIcon),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                                
                                Text(orderList[i].percentage+"%",  style: GoogleFonts.nunito(
                                    color: Color(0xff66687b),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                              ],
                            ),
                            // SizedBox(width: 10,),
                            Text(
                              "6840",
                              style: GoogleFonts.roboto(
                                color: Color(0xff11142d),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ],
                        ),
                      ));
                }, separatorBuilder: (BuildContext context, int index) { return Divider(); },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
