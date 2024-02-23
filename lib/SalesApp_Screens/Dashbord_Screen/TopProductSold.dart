import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import 'Dashboard_Widgets.dart';

class TopProductSold extends StatefulWidget {
  const TopProductSold({Key? key}) : super(key: key);

  @override
  State<TopProductSold> createState() => _TopProductSoldState();
}

class _TopProductSoldState extends State<TopProductSold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical*33,
      width: context.blockSizeHorizontal*50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xffFFFFFF),


      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Top Product By Unit Sold",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.9),),
            ),
            SizedBox(height: context.blockSizeVertical*3,),
            TopProduct(
              img1: "asset_images/head.png",
              // img2: "asset_images/green.png",
              text1: "Wireless Headphones with Noise Cancellation ...",
              text2: "6840",
              // text3: "23%",
              height: context.blockSizeHorizontal*13,
              width: context.blockSizeHorizontal*2,
            ),
            SizedBox(height: context.blockSizeVertical*2,),
            TopProduct(
              img1: "asset_images/mob.png",
              // img2: "asset_images/green.png",
              text1: "Smartphone 5G Black 12GB RAM+512GB NEW",
              text2: "6840",
              // text3: "23%",
              height: context.blockSizeHorizontal*13.6,
              width: context.blockSizeHorizontal*2,
            ),
            SizedBox(height: context.blockSizeVertical*2,),
            TopProduct(
              img1: "asset_images/watch.png",
              // img2: "asset_images/red.png",
              text1: "Smartwatch IP68 Waterproof GPS and Bluetooth ...",
              text2: "6840",
              // text3: "23%",
              height: context.blockSizeHorizontal*11.9,
              width: context.blockSizeHorizontal*2,
            ),
            // SizedBox(height: context.blockSizeVertical*2,),
            // TopProduct(
            //   img1: "asset_images/shoe.png",
            //   // img2: "asset_images/green.png",
            //   text1: "Men's Running Shoes",
            //   text2: "6840",
            //   // text3: "23%",
            //   height: context.blockSizeHorizontal*23.8,
            //   width: context.blockSizeHorizontal*2,
            // )
          ],
        ),
      ),
    );
  }
}
