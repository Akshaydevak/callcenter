

import 'package:flutter/material.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


/////////////////////////

class ButtonStatus extends StatefulWidget {
  final String text;
  const ButtonStatus({Key? key, required this.text}) : super(key: key);

  @override
  State<ButtonStatus> createState() => _ButtonStatusState();
}

class _ButtonStatusState extends State<ButtonStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical*4,
      width: context.blockSizeHorizontal*3.5,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.deepOrangeAccent,

      ),
      child: Center(
        child: InkWell(
          onTap: (){},
          child: Text(widget.text,style: TextStyle(color: Colors.white,fontSize: context.blockSizeHorizontal*0.9),),
        ),
      ),
    );
  }
}
////////////

class TopProduct extends StatefulWidget {
  final String img1;
  // final String img2;
  final String text1;
  final String text2;
  final String? text3;
  // final String text3;
  final double height;
  final double width;
  const TopProduct({Key? key,
    required this.img1,
    // required this.img2,
    required this.text1,
    required this.text2,
    // required this.text3,
    this.height=10,  this.width=10,  this.text3}) : super(key: key);

  @override
  State<TopProduct> createState() => _TopProductState();
}

class _TopProductState extends State<TopProduct> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(width: context.blockSizeHorizontal*1.5,),
        Container(padding: EdgeInsets.all(5),
        decoration: BoxDecoration(border: Border.all(width: 0.2,color: Colors.black.withOpacity(0.5)),borderRadius: BorderRadius.circular(5)),
          child: FadeInImage.assetNetwork(image: widget?.img1??"asset_images/empty_product.png",height: context.blockSizeVertical*3,width: context.blockSizeHorizontal*2,placeholder: "asset_images/cart.png",imageErrorBuilder: (context, error, stackTrace) =>Container(
              child: Image.asset('asset_images/empty_product.png',height: context.blockSizeVertical*3,width: context.blockSizeHorizontal*2)) ,),),
        SizedBox(width: context.blockSizeHorizontal*2,),
        Container(
          width: context.blockSizeHorizontal*12,

            child: Text(widget.text1,style: TextStyle(fontSize: context.blockSizeHorizontal*0.9,fontWeight: FontWeight.w700),)),
        Spacer(),
        Text(widget.text2,style: TextStyle(fontSize: context.blockSizeHorizontal*0.9,fontWeight: FontWeight.w700),),
        Spacer(),
        Container(
            width: context.blockSizeHorizontal*6,
            child: Text("AED "+widget.text3.toString()??"",style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.9),)),
        SizedBox(width: widget.width,),
        // Image(image: AssetImage(widget.img2),),
        // Text(widget.text3,style: TextStyle(fontSize: context.blockSizeHorizontal*0.9))
      ],
    );
  }
}

