import 'package:flutter/material.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
//
// Widget topIconText(String name,BuildContext context,{String iconImage="asset_images/recommondationmenu.png",Function? ontap,}){
//   bool isHover=false;
//   return
//     MouseRegion(
//
//     child: Container(
//         height: context.blockSizeVertical*5.5,
//         margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*.5,  ),
//
//     child: Row(
//     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children:[
//     // SizedBox(width: context.blockSizeHorizontal*.5,),
//     Text(name,style: TextStyle(fontSize:context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),),
//     Spacer(),
//     // IconButton(onPressed: (){
//     //   showDailogPopUp(
//     //     context,
//     //     RecommodationPopup(),
//     //   );
//     // }, icon: Icon(Icons.menu)),
//     InkWell(
//     onTap: (){
//       if(ontap!=null)
//         ontap();
//     // showDailogPopUp(
//     //   context,
//     //   RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
//     // );
//     },
//     child: Text("View All",style: TextStyle(color:Color(0xff687892),),)
//     // Image(
//     // height: context.blockSizeHorizontal*1,
//     // image: AssetImage(
//     // iconImage
//     // )),
//     ),SizedBox(width: context.blockSizeHorizontal*.8,)
//
//
//     ],
//
//     )),
//   );
// }


class topIconText extends StatefulWidget {
  final String name;
  final BuildContext context;
  final String iconImage;
  final Function? ontap;

  topIconText(this.name,this.context,{this.iconImage="asset_images/recommondationmenu.png",this.ontap});

  @override
  State<topIconText> createState() => _topIconTextState();
}

class _topIconTextState extends State<topIconText> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {

        });

      },
      onExit: (event) {
        isHover = false;
        setState(() {

        });

      },

      child: Container(
          height: context.blockSizeVertical*5.5,
          margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*.5,  ),

          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              // SizedBox(width: context.blockSizeHorizontal*.5,),
              Text(widget.name,style: TextStyle(fontSize:context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),),
              Spacer(),
              // IconButton(onPressed: (){
              //   showDailogPopUp(
              //     context,
              //     RecommodationPopup(),
              //   );
              // }, icon: Icon(Icons.menu)),
              InkWell(
                  onTap: (){
                    if(widget.ontap!=null)
                      widget. ontap!();
                    // showDailogPopUp(
                    //   context,
                    //   RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
                    // );
                  },
                  child: Text("View All",style: TextStyle(color:Color(0xff687892),decoration: isHover?TextDecoration.underline:TextDecoration.none),)
                // Image(
                // height: context.blockSizeHorizontal*1,
                // image: AssetImage(
                // iconImage
                // )),
              ),SizedBox(width: context.blockSizeHorizontal*.8,)


            ],

          )),
    );
  }
}
