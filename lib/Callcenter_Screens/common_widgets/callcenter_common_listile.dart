import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common/focus_node.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class CallCennterCommonListtile extends StatefulWidget {
 final String leadingImage;
 final String? quantity;
 final String title;
 final String subTitle;
 final String? barcode;
 final String? stock;
 final Function onAdd;
 final Function? onDelete;
 final bool isDelet;
 final bool isButton;
 final bool isStock;
 final bool isAdd;
 final bool isFavIcon;
 final bool? isWhishList;
 final Function(bool)? isWislistTap;
 CallCennterCommonListtile({this.isAdd=true,this.isFavIcon=false,required this.leadingImage,this.isDelet=false,required this.title,required this.subTitle,required this.onAdd,  this.stock,this.isButton=true, this.onDelete, this.barcode,this.isStock=false, this.quantity, this.isWhishList, this.isWislistTap});


  @override
  State<CallCennterCommonListtile> createState() => _CallCennterCommonListtileState();
}

class _CallCennterCommonListtileState extends State<CallCennterCommonListtile> {
  bool isHover=false;
  late bool val;
  bool onChange = false;
  @override
  Widget build(BuildContext context) {
    if(widget.isWhishList!=null){
      if (!onChange){

        val = widget.isWhishList!;
      }
    }

    onChange = false;
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
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: context.blockSizeVertical*1.3,horizontal: context.blockSizeHorizontal*.58),
            margin:!widget.isButton? EdgeInsets.symmetric(vertical: context.blockSizeVertical*.2,horizontal: context.blockSizeHorizontal*1):EdgeInsets.zero,

            decoration: BoxDecoration(
              color:isHover? Color(0xfff2f2f2).withOpacity(.5):widget.isButton?Color(0xfff2f2f2):Colors.white,
              border: Border.all(
                color: widget.isButton?Colors.transparent:Colors.grey.withOpacity(.3)
              ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(.1),
                //     blurRadius: 1,
                //     spreadRadius:2,
                //
                //   )
                //
                // ],
              borderRadius: BorderRadius.circular(5)

            ),
            child:


            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    Stack(
                      children: [
                        Container(


                height: context.blockSizeVertical*7,
                width: context.blockSizeHorizontal*4,
                decoration: BoxDecoration(
                  color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.withOpacity(.07),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(7),
// image: DecorationImage(image: NetworkImage(widget.leadingImage)
//
// )
                ),
                          child: FadeInImage.assetNetwork(image: widget?.leadingImage??"asset_images/empty_product.png",height: context.blockSizeVertical*3,width: context.blockSizeHorizontal*2,placeholder: "asset_images/cart.png",imageErrorBuilder: (context, error, stackTrace) =>Container(
                              child: Image.asset('asset_images/empty_product.png',height: context.blockSizeVertical*3,width: context.blockSizeHorizontal*2)) ,)

              ),
                        widget.isStock? Center(child: Container(
                            height: 15,
                            width:50,
                            decoration: BoxDecoration(
                                color:Colors.white.withOpacity(.5)
                            ),

                            child: Text("No Stock",style: TextStyle(fontSize: context.blockSizeHorizontal*.8,color: Colors.red),))):Container(),
                      ],
                    ),
             SizedBox(width:context.blockSizeHorizontal*1,),
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.blockSizeVertical*.56,),
                if(widget.barcode!=null)...[
                  SizedBox(
                      width: context.blockSizeHorizontal*10,
                      child: Text(widget.barcode??"",style: TextStyle(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*.75,overflow:TextOverflow.ellipsis ),)),
                  SizedBox(height: context.blockSizeVertical*.5,),
                ]  ,
                  SizedBox(
                    width: context.blockSizeHorizontal*9.6,
                      child: Text(widget.title.toTitleCase()??"",style: TextStyle(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*.9,overflow:TextOverflow.ellipsis ),)),
                  SizedBox(height: context.blockSizeVertical*.6,),

                  Text(widget.subTitle,style: TextStyle(color: Colors.black,fontSize: context.blockSizeHorizontal*.85,fontWeight: FontWeight.bold),),
                  SizedBox(height: context.blockSizeVertical*.6,),
                 if(widget.stock!=null)...[
                   if(widget.stock=="0" || widget.stock=="null")...[
                     Text("OUT OF STOCK : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: context.blockSizeHorizontal*.9),),
                   ]

                   else  Row(
                     children: [
                       Text("Stock : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: context.blockSizeHorizontal*.9),),
                       Text(widget.stock??"",style: TextStyle(color: Color(0xff4CA109),fontSize: context.blockSizeHorizontal*.9),),
                     ],
                   ),
                 ],
                  if(widget.isButton!=true)
                    Row(
                      children: [
                        Text("Qty : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: context.blockSizeHorizontal*.9),),
                        Text(widget.quantity ??"",style: TextStyle(color: Color(0xff4CA109),fontSize: context.blockSizeHorizontal*.9),),
                      ],
                    ),
                ],

              ),
            Spacer(),
              if(widget.isButton)
             Column(
                children: [

                  if(widget.isFavIcon)...[
                    InkWell(
                      onTap: (){
                        val = !val;
                        if (widget.isWislistTap != null) widget.isWislistTap!(val);
                        onChange = true;
                        setState(() {});
                      },
                      child: Container(
                        // height: 10,
                        // width: context.blockSizeHorizontal*1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:Colors.grey.withOpacity(.4)
                        ),
                        child: Icon(Icons.favorite,color:widget.isWhishList==true? Colors.red:Colors.white,size: isHover?context.blockSizeHorizontal*.9:context.blockSizeHorizontal*.8,),
                      ),
                    ),
                    SizedBox(height: context.blockSizeHorizontal*.6,),
                  ],

                  if(widget.isAdd)    SizedBox(height: context.blockSizeHorizontal*.6,),
                  if(widget.isDelet)...[
                    InkWell(
                      onTap: (){if(widget.isDelet!=null){
                        widget.onDelete!();
                      }},
                      child: Container(
                        // width: 10,
                        // height: 20,
                          child: SvgPicture.string(LeftMenuSvg().deleteIcon,
                            color:Colors.red.withOpacity(.8),
                          )),
                    ),
                  ]
                ],
              ),


            ],
          )

//       ListTile(
//         // dense: true,
//         // minLeadingWidth:context.blockSizeVertical*11,
//         // horizontalTitleGap: context.blockSizeVertical*11,
//         contentPadding: EdgeInsets.symmetric(vertical: context.blockSizeVertical*1,horizontal: context.blockSizeHorizontal*1),
//         leading:
//         Container(
//
//
//           height: context.blockSizeVertical*35,
//           width: context.blockSizeHorizontal*4,
//           decoration: BoxDecoration(
//             color: Colors.white,
//               border: Border.all(
//                 color: Colors.grey.withOpacity(.2),
//                 width: 2,
//               ),
//               borderRadius: BorderRadius.circular(7),
// image: DecorationImage(image: NetworkImage(widget.leadingImage)
// )
//           ),
//         ),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: context.blockSizeVertical*1,),
//             SizedBox(
//               width: context.blockSizeHorizontal*10,
//                 child: Text(widget.title,style: TextStyle(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*.9,overflow:TextOverflow.ellipsis ),)),
//             SizedBox(height: context.blockSizeVertical*1,),
//
//             Text(widget.subTitle,style: TextStyle(color: Colors.black,fontSize: context.blockSizeHorizontal*.99,fontWeight: FontWeight.bold),),
//             SizedBox(height: context.blockSizeVertical*1,),
//           ],
//
//         ),
//         subtitle: Row(
//           children: [
//             Text("Stock : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: context.blockSizeHorizontal*.9),),
//             Text(widget.stock,style: TextStyle(color: Color(0xff4CA109),fontSize: context.blockSizeHorizontal*.9),),
//           ],
//         ),
//         trailing:
//         CallCenterAddIconButton(onTAp: (){
//          widget.onAdd();
//         },),
//       ),
          ),
          if(widget.isButton)
Positioned(
  bottom:context.blockSizeVertical*1.5,
    left: context.blockSizeHorizontal*2,
    child:widget.isAdd? CallCenterAddIconButton(onTAp: (){
    widget.onAdd();
    },):Container(),)


        ],
      ),
    );
  }
}


class CallCennterAdditionaCommonListtile extends StatefulWidget {

  final String title;

  final Function onAdd;
  CallCennterAdditionaCommonListtile({required this.title,required this.onAdd});


  @override
  State<CallCennterAdditionaCommonListtile> createState() => _CallCennterAdditionaCommonListtile();
}

class _CallCennterAdditionaCommonListtile extends State<CallCennterAdditionaCommonListtile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF2F2F2),
      child: ListTile(
        // dense: true,
        // minLeadingWidth:context.blockSizeVertical*11,
        // horizontalTitleGap: context.blockSizeVertical*11,
        contentPadding: EdgeInsets.symmetric(vertical: context.blockSizeVertical*1,horizontal: context.blockSizeHorizontal*1),

        title:Row(
          children: [
            Text("Prize : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: context.blockSizeHorizontal*.9),),
            Text(widget.title,style: TextStyle(color: Color(0xff4CA109),fontSize: context.blockSizeHorizontal*.9),),
          ],
        ),

        trailing:
        CallCenterAddIconButton(onTAp: (){
          widget.onAdd();
        },),
      ),
    );
  }
}


class CallCenterAddIconButton extends StatefulWidget {
final VoidCallback onTAp;
final IconData icon;
CallCenterAddIconButton({required this.onTAp,this.icon=Icons.add});

  @override
  State<CallCenterAddIconButton> createState() => _CallCenterAddIconButtonState();
}

class _CallCenterAddIconButtonState extends State<CallCenterAddIconButton> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return
      MouseRegion(
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
        child: GestureDetector(
          onTap: widget.onTAp,
          child: Container(
            height: isHover?context.blockSizeVertical*2.7:context.blockSizeVertical*2.5,
            width: isHover?context.blockSizeHorizontal*1.4:context.blockSizeHorizontal*1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient:LinearGradient(
                  colors:

                  [Color(0xff687892),
                    Color(0xff8498B8)



                    //add more colors for gradient
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter, //end of the gradient color
                  stops: [ 0.5, 0.8] //stops for individual color
                //set the stops number equal to numbers of color
              ),
            ),
            child: Icon(widget.icon,color: Colors.white,size: context.blockSizeHorizontal*1,),
          ),
        ),
      );
  }
}


class LogoutPopup extends StatefulWidget {
  final Function? clear;
  final Function? onPressed;
  final Function? onLeftPress;
  final String? onLeftText;
  final String? onRightText;

  final int? verticalId;
  final String message;

  LogoutPopup(
      { this.clear, required this.onPressed,required this.message, this.onLeftPress, this.onLeftText, this.onRightText, this.verticalId});

  @override
  State<LogoutPopup> createState() => _LogoutPopup();
}

class _LogoutPopup extends State<LogoutPopup> {


  bool _value = false;
  int selected = 0;
  int? grpValue;
  FocusNode logoutfocusnode=FocusNode();
  int  tabCount=2;
  bool isCountOrdecre=true;


  rowKeyPressEvent(RawKeyEvent event){


    if (event is RawKeyDownEvent) {

      int limit=2;
      int startLimit=1;



        if(event.logicalKey==LogicalKeyboardKey.space){

          if(isCountOrdecre==false){

            if(tabCount!=limit){
              tabCount=++tabCount;

              if(tabCount==limit){
                isCountOrdecre=true;
              }

            }
          }
          else{
            if(tabCount!=startLimit){
              tabCount=--tabCount;
              if(tabCount==startLimit)
                isCountOrdecre=false;
            }

          }
          setState(() {
          });

        }
        else if(event.logicalKey==LogicalKeyboardKey.enter ){
          switch (tabCount) {
            case 1:
              Navigator.pop(context);;

              break;
            case 2:
              coformEvent();
              break;

          }



        }






    }

  }
  coformEvent(){

    widget.onPressed!();
    Navigator.pop(context);
    // FocusScope.of(context).requestFocus(callcenterTabGolbFocusNode);



  }

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return AlertDialog(
          contentPadding: EdgeInsets.zero,
          //     actions: [
          //   TextButtonLarge(
          //     text: "Cancel",
          //     labelcolor:Colors.grey ,
          //
          //     clr: Colors.white,
          //     onPress: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   TextButtonLarge(
          //       text: "Confirm",
          //       onPress: () {
          //         widget.onPressed!();
          //       }
          //       // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
          //
          //       ),
          //
          // ],
          content:RawKeyboardListener(
            autofocus: true,
            focusNode:logoutfocusnode,
            onKey: (RawKeyEvent event) {
              print("ssssssssssssssworkinf");
              rowKeyPressEvent(event);


            },
            child: Container(
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                    padding: EdgeInsets.only(left: 20),
                    color: Color(0xff333840),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Confirm",textAlign:TextAlign.left,style: TextStyle(color:Colors.white,fontSize: 20 ),),
                        ],
                      ),
                    ),  Container(
                      // height: 80,
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(widget.message),
                        ],
                      ),
                    ),
                    Spacer(),

                    Container(
                        height: 60,
                        // alignment: Alignment.center,
                        // d
                        color:  Color(0xffF8F8F8),
                        child:Container(
                          margin: EdgeInsets.only(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                // Container(
                                //   margin: EdgeInsets.only(bottom: 5),
                                //   child: TextButtonLarges(
                                //     marginAvoid: true,
                                //     text: widget?.onLeftText??"Cancel",
                                //     labelcolor:Colors.grey ,
                                //
                                //     clr: Colors.white,
                                //     onPress: () {
                                //       if(widget.onLeftPress!=null)
                                //         widget.onLeftPress!();
                                //       else
                                //         Navigator.pop(context);
                                //     },
                                //   ),
                                // ),
                                CommonButtonGradiant2(
                                  labelColor: Colors.grey,

                                  linearGraidiant: LinearGradient(
                                      colors:tabCount==1?[Color(0xff6F91CB),
                                      Color(0xff6F91CB)]:

                                      [        Colors.white,
                                        Colors.white,



                                        //add more colors for gradient
                                      ],
                                      begin: Alignment.topCenter,


                                      end: Alignment.bottomCenter,

                                      //end of the gradient color
                                      stops: [ 0.5, 0.8] //stops for individual color
                                    //set the stops number equal to numbers of color
                                  ),

                                  margin: EdgeInsets.zero,
                                  width: context.blockSizeHorizontal*6,
                                  height: context.blockSizeVertical*5,
                                  label:widget?.onLeftText??"Cancel" ,
                                  onTap: (){
                                    if(widget.onLeftPress!=null)
                                      widget.onLeftPress!();
                                    else
                                      Navigator.pop(context);


                                  },

                                ),
                                SizedBox(width: 8),
                                CommonButtonGradiant(
                                  isFocus: tabCount==2?true:false,

                                  margin: EdgeInsets.zero,
                                  width: context.blockSizeHorizontal*6,
                                  height: context.blockSizeVertical*5,
                                  label:widget?.onRightText?? "Confirm" ,
                                  onTap: (){

                                      widget.onPressed!();
                                      Navigator.pop(context);;


                                  },

                                ),
                                // Container(
                                //   margin: EdgeInsets.only(bottom: 5),
                                //   child:  TextButtonLarges(
                                //       text:widget?.onRightText?? "Confirm",
                                //       onPress: () {
                                //         widget.onPressed!();
                                //         Navigator.pop(context);
                                //       }
                                //     // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
                                //
                                //   ),
                                // ),

                                // ],


                              ]
                          ),
                        )
                    )
                  ],
                )),
          ));
    });
  }
}



class InventoryPopup extends StatefulWidget {



  @override
  State<InventoryPopup> createState() => _InventoryPopup();
}

class _InventoryPopup extends State<InventoryPopup> {


String invName="";
String logo="";
  @override
  void initState() {
    grtSharedPreferenceData();
    super.initState();
  }
  grtSharedPreferenceData() async {
   await UserPreferences().getInventoryList().then((value){
      logo=value.storeLogo??"";
      invName=value.name??"";
      print("invName$invName");
      print("logo$logo");
      setState(() {

      });

    });
  }

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return
        AlertDialog(alignment: Alignment.topRight,
          contentPadding: EdgeInsets.zero,
          //     actions: [
          //   TextButtonLarge(
          //     text: "Cancel",
          //     labelcolor:Colors.grey ,
          //
          //     clr: Colors.white,
          //     onPress: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   TextButtonLarge(
          //       text: "Confirm",
          //       onPress: () {
          //         widget.onPressed!();
          //       }
          //       // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
          //
          //       ),
          //
          // ],
          content:ListTile(

            contentPadding: EdgeInsets.all(15),
            leading:     Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(logo)

                        )
                        ),
                      ) ,
            title: Text("INVENTORY",style: TextStyle(color: Colors.grey,fontSize: context.blockSizeHorizontal*1),),
            subtitle: Container(
              padding: EdgeInsets.only(top: 1.5),
                child: Text(invName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)),

          )
          // Container(
          //     height: 100,
          //     child: Column(
          //       children: [
          //         Container(
          //           // height: 80,
          //           margin: EdgeInsets.all(20),
          //           child: Row(
          //             children: [
          //           SizedBox(width: context.blockSizeHorizontal*.5,),
          //           // Container(
          //           //   height: 30,
          //           //   width: 30,
          //           //   decoration: BoxDecoration,
          //           // )
          //           CircleAvatar(
          //             backgroundImage:  NetworkImage(logo),
          //             radius: context.blockSizeHorizontal * 1,
          //           ),
          //               SizedBox(width: context.blockSizeHorizontal*.5,),
          //               Text(invName,),
          //
          //             ],
          //           ),
          //         ),
          //
          //
          //
          //       ],
          //     ))
      );
    });
  }
}



class NotificatonPopup extends StatefulWidget {



  @override
  State<NotificatonPopup> createState() => _NotificatonPopup();
}

class _NotificatonPopup extends State<NotificatonPopup> {





  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return
        AlertDialog(alignment: Alignment.topRight,
          contentPadding: EdgeInsets.zero,
          //     actions: [
          //   TextButtonLarge(
          //     text: "Cancel",
          //     labelcolor:Colors.grey ,
          //
          //     clr: Colors.white,
          //     onPress: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   TextButtonLarge(
          //       text: "Confirm",
          //       onPress: () {
          //         widget.onPressed!();
          //       }
          //       // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
          //
          //       ),
          //
          // ],
          content:Container(
            padding: EdgeInsets.all(10),
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -16,
                  right: 1,
                  child:



                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.clear,color: Colors.black,size: 15,))

                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),

                      shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 12,),
                    Expanded(child: Container(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child: Text("Loresm ipsum dolor sit amet consectetur adipiscing elit. sed do eiusemed tempor sshbdhb bd",style: TextStyle(color: Color(0xff66687B),fontSize: 13,height: 1.5),),),

                        CommonButtonGradiant(

                          margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                          label:"View Order" ,

                          height: context.blockSizeVertical*4.5,
                          width: context.blockSizeHorizontal*8.5 ,
                          onTap: (){}

                        ),


                      ],
                    ),))

                  ],
                ),
              ],
            ),

          )

          // Container(
          //     height: 100,
          //     child: Column(
          //       children: [
          //         Container(
          //           // height: 80,
          //           margin: EdgeInsets.all(20),
          //           child: Row(
          //             children: [
          //           SizedBox(width: context.blockSizeHorizontal*.5,),
          //           // Container(
          //           //   height: 30,
          //           //   width: 30,
          //           //   decoration: BoxDecoration,
          //           // )
          //           CircleAvatar(
          //             backgroundImage:  NetworkImage(logo),
          //             radius: context.blockSizeHorizontal * 1,
          //           ),
          //               SizedBox(width: context.blockSizeHorizontal*.5,),
          //               Text(invName,),
          //
          //             ],
          //           ),
          //         ),
          //
          //
          //
          //       ],
          //     ))
      );
    });
  }
}








class NoteRemarkPopup extends StatefulWidget {
  final String note;
  final String remark;
  NoteRemarkPopup({required this.note,required this.remark});



  @override
  State<NoteRemarkPopup> createState() => _NoteRemarkPopup();
}

class _NoteRemarkPopup extends State<NoteRemarkPopup> {


  String invName="";
  String logo="";
  @override
  void initState() {
    grtSharedPreferenceData();
    super.initState();
  }
  grtSharedPreferenceData() async {
    await UserPreferences().getInventoryList().then((value){
      logo=value.storeLogo??"";
      invName=value.name??"";
      print("invName$invName");
      print("logo");
      setState(() {

      });

    });
  }

  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return
        AlertDialog(alignment: Alignment.centerRight,
            contentPadding: EdgeInsets.zero,
            //     actions: [
            //   TextButtonLarge(
            //     text: "Cancel",
            //     labelcolor:Colors.grey ,
            //
            //     clr: Colors.white,
            //     onPress: () {
            //       Navigator.pop(context);
            //     },
            //   ),
            //   TextButtonLarge(
            //       text: "Confirm",
            //       onPress: () {
            //         widget.onPressed!();
            //       }
            //       // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);
            //
            //       ),
            //
            // ],
            content:Container(
              padding: EdgeInsets.all(15),
              height: 400,
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.clear,color: Colors.black87,)),
                    ],


                  ),
                  Text("Note :",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text(widget.note,style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: .7,fontSize: 14)),
                  SizedBox(height: 15,),
                  Text("Remark :",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),SizedBox(height: 8,),
                  Text(widget.remark,style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: .7,fontSize: 14)),
                ],
              ),
            )

          // Container(
          //     height: 100,
          //     child: Column(
          //       children: [
          //         Container(
          //           // height: 80,
          //           margin: EdgeInsets.all(20),
          //           child: Row(
          //             children: [
          //           SizedBox(width: context.blockSizeHorizontal*.5,),
          //           // Container(
          //           //   height: 30,
          //           //   width: 30,
          //           //   decoration: BoxDecoration,
          //           // )
          //           CircleAvatar(
          //             backgroundImage:  NetworkImage(logo),
          //             radius: context.blockSizeHorizontal * 1,
          //           ),
          //               SizedBox(width: context.blockSizeHorizontal*.5,),
          //               Text(invName,),
          //
          //             ],
          //           ),
          //         ),
          //
          //
          //
          //       ],
          //     ))
        );
    });
  }
}

class TextButtonLarges extends StatelessWidget {
  final String? images;
  final String text;
  final bool bdr;
  final IconData? icon;
  final Function  onPress;
  final double  W;
  final double  H;
  Color clr;
  final Color border;
  final Color  labelcolor ;
  final bool marginCheck;
  final bool marginAvoid;

  TextButtonLarges({Key? key,this.marginCheck=false,this.W=80,this.H=43,this.labelcolor=Colors.white,this.marginAvoid=false, this.clr=Colors.blue, this.images, required this.text,this.icon,required this.onPress,  this.bdr=false,  this.border=Colors.red}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap:(){
            onPress();
          },
          child: Container(
            width:marginAvoid?100:null ,
            // alignment: Alignment.center,

            margin: marginAvoid?null:marginCheck?EdgeInsets.only(top: h*.022,right:w *.0048):EdgeInsets.only(right:w *.018,top: h*.022),
            decoration: BoxDecoration(
                color: clr,
                border: bdr
                    ? Border.all(
                  color: border, //color of border
                  width: 1,
                )
                    : Border()

            ),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

            child: Text(text,textAlign:TextAlign.center,style: TextStyle(color: labelcolor,fontSize: 12),),
          ),
        ),
        // Container(
        //
        //
        //      margin: EdgeInsets.only(right:w *.02,left: w *.02,top: h*.014),
        //      alignment: Alignment.center,
        //
        //      child: TextButton(onPressed:(){onPress(); },
        //          style: ButtonStyle(
        //              shape: MaterialStateProperty.all(
        //                  RoundedRectangleBorder(
        //                      borderRadius: BorderRadius.zero,
        //                      side: BorderSide(color: clr)
        //                  )
        //              ),backgroundColor: MaterialStateProperty.all( clr)
        //          ), child: Row(mainAxisAlignment: MainAxisAlignment.center,
        //            children: [
        //              // Icon(icon),
        //              // Image(image: AssetImage(images),height: 5,
        //              //   // width: context.blockSizeHorizontal*1.5,
        //              // ),
        //              // SizedBox(width: 3,),
        //              Text(text,textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 9),),
        //            ],
        //          )),
        //    ),
      ],
    );
  }
}





class CallCenterCommonLProductCArd extends StatefulWidget {
  final String leadingImage;
  final String title;
  final String sellingPrize;
  final bool isAdded;

  final Function onAdd;
  CallCenterCommonLProductCArd({this.isAdded=false,required this.leadingImage,required this.title,required this.sellingPrize,required this.onAdd, });


  @override
  State<CallCenterCommonLProductCArd> createState() => _CallCenterCommonLProductCArdState();
}

class _CallCenterCommonLProductCArdState extends State<CallCenterCommonLProductCArd> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(context.blockSizeHorizontal*.3),


        // alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(.1),width: 1.5)
          // borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 13),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.blockSizeVertical*1.7,),
                  Container(

                    alignment: Alignment.center,


                    child:widget.leadingImage=="null"?Image.asset(
                      width: context.blockSizeHorizontal*5,
                      height: context.blockSizeVertical*10,
                      "asset_images/empty_image.png",
                      fit: BoxFit.cover,
                    ):FadeInImage.assetNetwork(image: widget?.leadingImage??"asset_images/empty_product.png",height:context.blockSizeVertical*10,width: context.blockSizeHorizontal*5,placeholder: "asset_images/cart.png",imageErrorBuilder: (context, error, stackTrace) =>Container(
                        child: Image.asset('asset_images/empty_product.png',height: context.blockSizeVertical*10,width:context.blockSizeHorizontal*5)) ,)

                    // Image(
                    //   height: context.blockSizeVertical*10,
                    //   width: context.blockSizeHorizontal*5,
                    //   image: NetworkImage(widget.leadingImage),fit: BoxFit.fitHeight,),
                  ),
                  SizedBox(height: context.blockSizeVertical*.7,),
                  Container(
                    width: context.safeBlockHorizontal*15,

                      child: Text(widget.title??"",style: TextStyle(color: Color(0xff828282),fontSize: context.blockSizeHorizontal*1,overflow: TextOverflow.ellipsis),)),
                  SizedBox(height: context.blockSizeVertical*.7,),
                  Text(widget.sellingPrize,style: TextStyle(color: Colors.black,fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),)

                ],
              ),
              Positioned(
                  bottom: 36,
                  right: 4,
                  child: CallCenterAddIconButton(
                    icon: widget.isAdded?Icons.delete:Icons.add,

                    onTAp: (){
                    widget.onAdd();
                  },)) ,  Positioned(
                  top: 36,
                  right: 4,
                  height: 5,
                  width: 5,
                  child: Image.asset(

                      "asset_images/exclamation.png"))
            ],
          ),
        ),
      );
  }
}
class PopUpDateFormField extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final bool enable;
  final bool required;
  final bool row;
  final TextEditingController? controller;
  // final TextEditingController controller;
  final FormFieldSetter<DateTime>? onSaved;
  final DateFormat? format;
  const PopUpDateFormField(
      {Key? key,
        required this.label,
        this.controller,
        this.row=false,

        this.enable = true,
        this.required = false,
        this.onSaved,
        this.format,
        this.initialValue})
      : super(key: key);

  @override
  _PopUpDateFormFieldState createState() => _PopUpDateFormFieldState();
}

class _PopUpDateFormFieldState extends State<PopUpDateFormField> {
  @override
  Widget build(BuildContext context) {
    print("avalvaruvo"+widget.initialValue.toString());
    final mFormat = widget.format ?? DateFormat.yMd();
    return widget.row?
    SizedBox(

        child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              //horizontal: 10,
                vertical: 5),
            leading: Container(

                width: 70,
                child: Text.rich(TextSpan(
                    text: widget.label,
                    // style:CommonTextStyle.normalHeadingStyle,
                    children: widget.required
                        ? [
                      TextSpan(
                          text: "*", style: TextStyle(color:Colors.grey))
                    ]
                        : []))),
            title:  Container(
                height: 38,

                child:

                DateTimeField(
                  initialValue: widget.initialValue,


                  // controller: widget.controller,
                  enabled: widget.enable,
                  validator: (value) => value == null ? "* required" : null,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today_outlined),
                    contentPadding: null,
                    labelStyle: TextStyle(color: Colors.black),
                    // labelText: widget.initialValue?.toString().split(" ")[0],
                    isDense: true,
                    label: null,
                    alignLabelWithHint: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(2),

                        borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

                    focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(2),

                        borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                  ),
                  format: mFormat,
                  style: TextStyle(fontSize: 14), onChanged: widget.onSaved,
                  //  onFieldSubmitted: widget.onSaved,
                  onShowPicker: (context, currentValue) async {
                    DateTime? date;
                    if (widget.enable)
                      date = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));

                    return date ?? currentValue;
                  },
                )
            )
        )):  Padding(
      //height: 40,
      //  width: context.blockSizeHorizontal * 20,
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            widget.label,
            // style:CommonTextStyle.normalHeadingStyle,
          ),

          SizedBox(height: 3,),

          DateTimeField(
            controller: widget.controller,
            // initialValue: widget.initialValue,
            enabled: widget.enable,
            validator: (value) => value == null ? "* required" : null,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_today_outlined),
              contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 22),
              labelStyle: TextStyle(color: Colors.black),
              // labelText: widget.initialValue?.toString().split(" ")[0],
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

              focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
            ),
            format: mFormat,
            style: TextStyle(fontSize: 17), onChanged: widget.onSaved,
            //  onFieldSubmitted: widget.onSaved,
            onShowPicker: (context, currentValue) async {
              DateTime? date;
              if (widget.enable)
                date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));

              return date ?? currentValue;
            },
          )

        ],
      ),
    );

  }
}

Widget commonSearchRightScreen(BuildContext context,{required Function onchange,required TextEditingController
searcController,EdgeInsetsGeometry? margin,double? height,bool isMargin=true,String hintText="Enter variant for search"}){
  FocusNode focusNode = FocusNode();
  return   Container(
    margin:isMargin!=true?null: margin!=null?margin:EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*1,  ),
    height:height!=null?height: context.blockSizeVertical*5,
    // width: context.blockSizeHorizontal*50,
    // color: Colors.red,
    child:TextFormField(
      focusNode: focusNode,
      controller: searcController,

      onChanged: (sa){
        // print("Varian$sa");isPageSearch=true;
       onchange(sa);
      },
      decoration: InputDecoration(
        suffixIcon: Container(
          width: 1,
          height: context.blockSizeVertical*2,
          margin: EdgeInsets.symmetric(vertical: 7,
              horizontal: context.blockSizeHorizontal * .6),
          child: Image.asset("asset_images/searchIcon.png",height: context.blockSizeVertical*2,),

        ),
        // suffixIcon: Icon(Icons.search),
        isDense: true,
        // label: null,
        labelText: hintText,
        // hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: TextStyle(color:Color(0xff808191),fontSize: context.blockSizeHorizontal *.9, ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
          BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
          BorderSide(color: Color(0xff333840).withOpacity(.4)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),

            borderSide:
            BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
      ),
    ),);
}

Widget commonTextButton(BuildContext context,{required Function ontap,required String label}){
  return InkWell(
      onTap: () {
        ontap();
      },
      child:  Text(

        label,
        style: TextStyle(color: Colors.blue,
            // decoration:TextDecoration.underline,
            fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*.9),
      ));
}