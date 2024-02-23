import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class GpCard extends StatelessWidget {
  final double h;
  final double w;
  final String headingText;
  final String gpValue;
  const GpCard({Key? key,  this.h=110,required this.gpValue,  this.w=220,this.headingText="Quarterly GP"}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: context.blockSizeHorizontal*15.7,
      height: context.blockSizeVertical*15,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x26cccccc),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        color: Color(0xff6e90ca),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           headingText,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: context.blockSizeHorizontal*1,

              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            gpValue.isEmpty ||gpValue=="null"? "0":gpValue,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: context.blockSizeHorizontal*1.8,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
////////////////////////////////////////
class GPCardLong extends StatelessWidget {
  final double dailyGP;
  final double currentGP;

  const   GPCardLong({Key? key, required this.dailyGP, required this.currentGP,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      height: context.blockSizeVertical*7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x26cccccc),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        color:  Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: context.blockSizeHorizontal*1),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.blockSizeVertical*.5,),
                Text(
                  "Current GP",
                  style: GoogleFonts.roboto(
                    color: Colors.black,

                      fontSize: context.blockSizeHorizontal*.8,

                  ),
                ),
                Text(
                  currentGP.toString()??"",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: context.blockSizeHorizontal*1.3,

                    fontWeight: FontWeight.w700,

                  ),

                ),
              ],
            ),
          ),
          // SizedBox(width: context.blockSizeHorizontal*5,),
          Container(width: 0.2,color: Colors.black,),
          SizedBox(width: context.blockSizeHorizontal*1,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.blockSizeVertical*.1,),
                Text(
                  "Daily GP",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: context.blockSizeHorizontal*.8,

                    // fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  dailyGP.toString()??"",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: context.blockSizeHorizontal*1.3,

                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: context.blockSizeHorizontal*2,),
        ],
      ),
    );
  }
}

