import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/admin_dashboard/screens/admin_dashboard.dart';
import 'package:salesapp/color_palette/color_palette.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../svg/dashboard_svg.dart';

class DashboardCard extends StatelessWidget {
  String name,percentage,amount,icon,img;
  final bool isWidth;
  final bool isHeight;
  final double width;
  final bool isSkelton;

   DashboardCard( {Key? key,this.isWidth=true,required this.percentage,required this.name,this.isHeight=true,this.isSkelton=false,required this.amount,required this.icon,required this.img, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isWidth?
    MouseRegion(
      cursor: SystemMouseCursors.basic,
      child:isHeight?
      Container(
        width: width,
        height: context.blockSizeVertical*15,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Color(0xffeef0f2),
          //   width: 1,
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0x26cccccc),
          //     blurRadius: 5,
          //     offset: Offset(0, 2),
          //   ),
          // ],
          color: isSkelton?Colors.black.withOpacity(.04):Colors.white,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3):  Text(
                name,
                style: GoogleFonts.roboto(
                  color: Color(0xff66687b),
                  fontSize: context.blockSizeHorizontal*1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              isSkelton?Skelton(height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,):    SvgPicture.string(icon,height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,)
            ],
          ),
          Row(
            children: [
              isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3) :    Text(
                amount,
                style: GoogleFonts.roboto(
                  color: Color(0xff11142d),
                  fontSize: context.blockSizeHorizontal*1.8,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 10,),
              // SvgPicture.string(img),
              SizedBox(width: 5,),
              isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3):   Text(
                percentage,
                style: GoogleFonts.nunito(
                  color: Color(0xff66687b),
                  fontSize: context.blockSizeHorizontal*1.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ]),
      ):Container(
        width: width,
        height: context.blockSizeVertical*14.5,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Color(0xffeef0f2),
          //   width: 1,
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0x26cccccc),
          //     blurRadius: 5,
          //     offset: Offset(0, 2),
          //   ),
          // ],
          color: isSkelton?Colors.black.withOpacity(.04):Colors.white,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3):  Text(
                    name,
                    style: GoogleFonts.roboto(
                      color: Color(0xff66687b),
                      fontSize: context.blockSizeHorizontal*1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  isSkelton?Skelton(height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,):    SvgPicture.string(icon,height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,)
                ],
              ),
              Row(
                children: [
                  isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3) :    Text(
                    amount,
                    style: GoogleFonts.roboto(
                      color: Color(0xff11142d),
                      fontSize: context.blockSizeHorizontal*1.8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10,),
                  // SvgPicture.string(img),
                  SizedBox(width: 5,),
                  isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3):   Text(
                    percentage,
                    style: GoogleFonts.nunito(
                      color: Color(0xff66687b),
                      fontSize: context.blockSizeHorizontal*1.2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ]),
      ),
    ): Expanded(
      child:
      MouseRegion(
        cursor: SystemMouseCursors.basic,
        child: Container(
          // width: width,
          height: context.blockSizeVertical*14.5,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(
            //   color: Color(0xffeef0f2),
            //   width: 1,
            // ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0x26cccccc),
            //     blurRadius: 5,
            //     offset: Offset(0, 2),
            //   ),
            // ],
            color: isSkelton?Colors.black.withOpacity(.04):Colors.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*5):  Text(
                      name,
                      style: GoogleFonts.roboto(
                        color: Color(0xff66687b),
                        fontSize: context.blockSizeHorizontal*1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    isSkelton?Skelton(height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,):    SvgPicture.string(icon,height: context.blockSizeVertical*2.5,width: context.blockSizeHorizontal*1.5,)
                  ],
                ),
                Row(
                  children: [
                    isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*3) :    Text(
                      amount,
                      style: GoogleFonts.roboto(
                        color: Color(0xff11142d),
                        fontSize: context.blockSizeHorizontal*1.8,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 10,),
                    // SvgPicture.string(img),
                    SizedBox(width: 5,),
                    isSkelton?Skelton(height: context.blockSizeVertical*2, width: context.blockSizeHorizontal*5):   Text(
                      percentage,
                      style: GoogleFonts.nunito(
                        color: Color(0xff66687b),
                        fontSize: context.blockSizeHorizontal*1.2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
