import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:salesapp/Callcenter_Screens/common/focus_node.dart';
import 'package:salesapp/Cubit/Payement/hover_payment_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/custom_table/colors.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class TextFieldCallCenter extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final double width;
  final double? font;
  final bool readOnly;
  final bool isWidth;

  const TextFieldCallCenter({Key? key, required this.controller, required this.text,  this.width=0.5,this.isWidth=true,  this.font, required this.readOnly}) : super(key: key);

  @override
  State<TextFieldCallCenter> createState() => _TextFieldCallCenterState();
}

class _TextFieldCallCenterState extends State<TextFieldCallCenter> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        // padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       widget.isWidth?   Container(
            width: context.blockSizeHorizontal*5.5,
              child: Text(widget.text,style: TextStyle(fontSize: widget.font==null? context.blockSizeHorizontal*.86:widget.font,fontWeight: FontWeight.w500),)):
       Container(
           // width: context.blockSizeHorizontal*5.5,
           child: Text(widget.text,style: TextStyle(fontSize: widget.font==null? context.blockSizeHorizontal*.86:widget.font,fontWeight: FontWeight.w500),)),
          SizedBox(width: context.blockSizeHorizontal*0.5,),
          SizedBox(
              // height: context.blockSizeVertical*5,
              width: context.blockSizeHorizontal*10.5,
              child: TextField(
                    style:TextStyle(fontSize:context.blockSizeHorizontal*.86),
                readOnly: widget.readOnly,
                controller: widget.controller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12),
                  // contentPadding: EdgeInsets.all(12),
                  isDense: true,
                  label: null,
                  labelStyle: TextStyle(color: Colors.white),
                  alignLabelWithHint: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                    borderSide:
                    BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide:
                    BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                ),
              ))
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////
class TextDropDown extends StatefulWidget {
  final String? orderTypeValue;
   TextDropDown({Key? key, this.orderTypeValue}) : super(key: key);

  @override
  State<TextDropDown> createState() => _TextDropDownState();
}

class _TextDropDownState extends State<TextDropDown> {
 String value="Wholesale";
  final List<String> itemsList=["Wholesale","Retail"];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.blockSizeVertical*5.5,
        width: context.blockSizeHorizontal*8,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff3E4F5B).withOpacity(.2)),
          borderRadius: const BorderRadius.all(Radius.circular(2))),
      child: Container(
        alignment: Alignment.center,
        padding:  EdgeInsets.all(context.blockSizeHorizontal*.4),
        child:Text(widget.orderTypeValue??"",style:TextStyle(fontSize: context.blockSizeHorizontal*.86))
        // DropdownButtonHideUnderline(
        //   child: DropdownButton(
        //     iconSize: context.blockSizeHorizontal*1.96,
        //     value: value,
        //
        //     items:  itemsList.map((String items) {
        //       return DropdownMenuItem(
        //
        //
        //         value: items,
        //         child: Text(items),
        //       );
        //     }).toList(),
        //
        //     onChanged: (sa){
        //      setState(() {
        //        value=sa.toString();
        //      });
        //     },
        //     style: TextStyle(fontSize: context.blockSizeHorizontal*.86),
        //
        //   ),
        // ),
      ),
        );
  }
}

//////////////////////////////////////////////////////////////////
class TextContainer extends StatefulWidget {
  final String text;
  final String? hintText;
  final double height;
  final double width;
  final Color? filledColour;
  final FocusNode? focusNode;
  final bool readOnly;
  final bool formatter;
  final bool integerOnly;
  final Function(String)? onChanged;
  final Function? onSubmit;
  final TextEditingController controller;
  const TextContainer({Key? key,
    required this.text,
    this.height=10,
    this.formatter=false,
    this.integerOnly=false,
    this.width=20,
    required this.controller,
    this.onChanged, required this.readOnly, this.filledColour, this.hintText, this.focusNode, this.onSubmit}) : super(key: key);

  @override
  State<TextContainer> createState() => _TextContainerState();
}

class _TextContainerState extends State<TextContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.8),),
        SizedBox(height: context.blockSizeVertical*0.5,),
        Container(
          // padding: EdgeInsets.all(5),
            // height: widget.height,
            width: widget.width,
            child: TextField(
              onEditingComplete: (){
                if(widget.onSubmit!=null)
                  widget?.onSubmit!();
              },


              keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
              inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
              readOnly: widget.readOnly,
              style:  TextStyle(color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*0.92),
              onChanged: widget.onChanged,
              controller:widget.controller.text=="Null"?TextEditingController(text: ""): widget.controller,
              focusNode: widget.focusNode,
              decoration: InputDecoration(contentPadding: EdgeInsets.all(10),
                fillColor: widget.filledColour,

                hintText: widget?.hintText?.isNotEmpty==true?widget.hintText:"",
                hintStyle: TextStyle(color: Colors.white),
                filled: widget.filledColour==null?false:true,
                isDense: true,
                label: null,
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(
                      color: Color(0xff3E4F5B).withOpacity(.1)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                ),
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
              ),
            ))
      ],
    );
  }
}
///////////////////////////////////////////////////////////////////////////
class TextBtn extends StatelessWidget {
  final String text;
  final int color1;
  final int color2;
  final VoidCallback? onTap;
  final double height;
  final double width;
  const TextBtn(
      {Key? key,
        required this.text,
        required this.color1,
        required this.color2,
        this.onTap,  this.height=20,  this.width=40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Reco.Price",style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.9)),
        SizedBox(height: context.blockSizeVertical*1,),
        SizedBox(
          height: height,
          width: width,
          child: TextButton(
              onPressed: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(color: Color(color2),fontSize: context.blockSizeHorizontal*0.9),
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                    // side: BorderSide(color: Color(0xffF4F4F4))
                  )),
                  backgroundColor: MaterialStateProperty.all(Color(color1)))),
        ),
      ],
    );
  }
}

//////////////////////////////////////////////
class InsideText extends StatefulWidget {
  final String text1;
  final String text2;
  final double height;
  final double width;
  const InsideText({Key? key, required this.text1,  this.height=20,  this.width=50, required this.text2}) : super(key: key);

  @override
  State<InsideText> createState() => _InsideTextState();
}

class _InsideTextState extends State<InsideText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:context.blockSizeHorizontal*2.3,
      alignment: Alignment.center,
      // width: widget.width,
      padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*.6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Color(0xffE3E3E3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: context.blockSizeHorizontal*0.2,),
          Text(widget.text1,style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*1),),
          Container(
            alignment: Alignment.center,
            height: context.blockSizeHorizontal*7,
              child: Text(widget.text2,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff66687B),fontSize: context.blockSizeHorizontal*1,overflow: TextOverflow.ellipsis),)), SizedBox(width: context.blockSizeHorizontal*0.26,),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////
class ButtonTextOnly extends StatelessWidget {
  final String text;
  final int color1;
  final int color2;
  final VoidCallback? onTap;
  final double? height;
  final double width;
  const ButtonTextOnly(
      {Key? key,
        required this.text,
        required this.color1,
        required this.color2,
        this.onTap,  this.height=20,  this.width=50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: Color(color2),fontSize: context.blockSizeVertical*1.6,fontWeight: FontWeight.bold),
              ),
            ],
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
                side: BorderSide(color: Color(0xff687892),width: 0.05)
              )),
              backgroundColor: MaterialStateProperty.all(Color(color1)))),
    );
  }
}
///////////////////////////////////
class ProductGPCard extends StatefulWidget {
  final String txt1;
  final TextEditingController controller;
  const ProductGPCard({Key? key, required this.txt1,required this.controller}) : super(key: key);

  @override
  State<ProductGPCard> createState() => _ProductGPCardState();
}

class _ProductGPCardState extends State<ProductGPCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: context.blockSizeVertical*6,
      width: context.blockSizeHorizontal*8,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 0.01),
          borderRadius: BorderRadius.circular(2)
      ),
      child: Column(
        children: [
          Text(widget.txt1,style: TextStyle(fontWeight: FontWeight.w600,fontSize:context.blockSizeHorizontal*1),),
          Divider(height: 2,thickness: 0.5,color: Colors.grey,),
Container(
  padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*2,vertical: context.blockSizeVertical*3),
  child: Text( widget.controller.text!="null"? widget.controller.text:""),
)
//           TextField(style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff6F91CB),fontSize:context.blockSizeHorizontal*1)
//           ,controller: widget.controller,
//             readOnly: true,
// decoration: InputDecoration(border: InputBorder.none),
//           )
        ],
      ),
    );
  }
}

class CommonButtonGradiant extends StatefulWidget {
  final String? headingText;
  final String label;
  final bool isHold;
  final bool isInActive;
  final bool isFocus;

  final VoidCallback? onTap;
  final double? height;
  final double? fontSize;
  final double? width;
  final Color? buttonColor;
  final EdgeInsets? margin;
  final bool isIcon;
  final bool isIndiactor;
  CommonButtonGradiant({this.buttonColor,this.isIndiactor=false,this.isFocus=false,this.isIcon=false,required this.label,this.isHold=false,this.headingText,this.isInActive=false,required this.onTap,this.height,this.width,this.margin,this.fontSize});

  @override
  State<CommonButtonGradiant> createState() => _CommonButtonGradiantState();
}

class _CommonButtonGradiantState extends State<CommonButtonGradiant> {
bool  isHover = false;
  @override
  Widget build(BuildContext context) {
    return    MouseRegion(

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
        margin: widget.margin??EdgeInsets.only(top: context.blockSizeVertical*1),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.headingText!=null)
            Text(widget.headingText??"",style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.8),),
            SizedBox(height: context.blockSizeVertical*0.5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2),
              height:widget.height?? context.blockSizeVertical*4,
              width:widget.width?? context.blockSizeHorizontal*5.3 ,
              // margin: EdgeInsets.only(top: context.blockSizeVertical*.),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient:LinearGradient(
                    colors:
                 widget.isFocus ||isHover? [Color(0xff6F91CB),
                   Color(0xff6F91CB)]:   widget.isHold==false? widget.label=="PAYMENT AND CONTINUE"?[Color(0xff08aa58),Color(0xff08aa58)]:widget.isInActive?[Color(0xffcdcdcd),
      Color(0xffcdcdcd)]:widget.label=="Out of Stock"?[Colors.red,Colors.red]:[Color(0xff687892),
                       Color(0xff8498B8)]:
                      [        Color(0xffcDcDcD),
                        Color(0xffcDcDcD),



                      //add more colors for gradient
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, //end of the gradient color
                    stops: [ 0.5, 0.8] //stops for individual color
                  //set the stops number equal to numbers of color
                ),

              ),
              child: InkWell(
                  onTap:(){

                    if(widget.onTap!=null){
                      widget.onTap!();
                    }


                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                   if(widget.isIcon)   Container(
                        height: context.blockSizeHorizontal*1.3,
                        width:context.blockSizeHorizontal*1.3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.white,
                          )

                        ),
                        child: Icon(Icons.done,color: Colors.white,size: context.blockSizeHorizontal*1.1,),
                      ),
                      if(widget.isIcon)   SizedBox(width:context.blockSizeHorizontal*.8 ,),
                      widget.isIndiactor?SizedBox(
                        height: 20,
                        width: 20,
                        child: customCupertinoLoading(

                          color: Colors.white,
                        ),
                      ):     Text(
                        widget?.label??"Continue",
                        style: TextStyle(color: Color(0xfff4f3f3),fontSize:widget.fontSize?? context.blockSizeHorizontal*.9),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
class CommonButtonGradiant2 extends StatefulWidget {
  final String? headingText;
  final String label;
  final bool isHold;
  final bool isInActive;

  final VoidCallback? onTap;
  final double? height;
  final double? fontSize;
  final double? width;
  final Color? buttonColor;
  final EdgeInsets? margin;
  final bool isIcon;
  final bool isIndiactor;
  final String? image;
  final int quarterTurns;
  final IconData icon;
  final Color? labelColor;
  final Gradient? linearGraidiant;
  CommonButtonGradiant2({this.buttonColor,this.quarterTurns=0,this.labelColor,this.isIndiactor=false,this.isIcon=false,required this.label,this.isHold=false,this.headingText,this.isInActive=false,required this.onTap,this.height,this.width,this.margin,this.fontSize, this.linearGraidiant, this.icon=Icons.done, this.image});

  @override
  State<CommonButtonGradiant2> createState() => _CommonButtonGradiant2State();
}

class _CommonButtonGradiant2State extends State<CommonButtonGradiant2> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: widget.margin??EdgeInsets.only(top: context.blockSizeVertical*1),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.headingText!=null)
            Text(widget.headingText??"",style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.8),),
            SizedBox(height: context.blockSizeVertical*0.5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2),
              height:widget.height?? context.blockSizeVertical*4,
              width:widget.width?? context.blockSizeHorizontal*5.3 ,
              // margin: EdgeInsets.only(top: context.blockSizeVertical*.),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient:widget.linearGraidiant!=null?widget.linearGraidiant:LinearGradient(
                    colors:

                      [        Color(0xffcDcDcD),
                        Color(0xffcDcDcD),



                      //add more colors for gradient
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, //end of the gradient color
                    stops: [ 0.5, 0.8] //stops for individual color
                  //set the stops number equal to numbers of color
                ),

              ),
              child: RotatedBox(
      quarterTurns:widget.quarterTurns,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                 if(widget.isIcon)...[
                   Container(
                     height: context.blockSizeHorizontal*1.3,
                     width:context.blockSizeHorizontal*1.3,
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,

                         border: Border.all(
                           color: Colors.white,
                         )

                     ),
                     child: Icon(widget.icon,color: Colors.white,size: context.blockSizeHorizontal*1.1,),
                   ),
                SizedBox(width:context.blockSizeHorizontal*.8 ,),

                // SvgPicture.string(w,
                // width: widget.width,
                // height: widget.height,
                // fit: BoxFit.fill,
                //
                // color:widget.selected==true?Colors.white:Color(0xff7f8da1),

                 ],

                    widget.isIndiactor?SizedBox(
                      height: 20,
                      width: 20,
                      child: customCupertinoLoading(

                        color: Colors.white,
                      ),
                    ):     Text(

                      widget.label??"",
                      style: TextStyle(color:widget.labelColor!=null?widget.labelColor: Color(0xfff4f3f3),fontSize:widget.fontSize?? context.blockSizeHorizontal*.9),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CommonUnGradiantButton extends StatelessWidget {
  final String lable;
  final String value;
  final Color? clr;
  const CommonUnGradiantButton({Key? key, required this.lable,this.clr, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        Container(
      padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*.5,vertical: context.blockSizeVertical*1),
      decoration: BoxDecoration(
        color: clr==null?Colors.transparent:clr,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
            color:clr?? Color(0xff687892).withOpacity(.2)
        ),
      ),
      child: Row(
        children: [
          Text(lable,style: TextStyle(color: Color(0xff687892),fontSize: 13),),
          SizedBox(width: context.blockSizeHorizontal*1,),
          Text(value,style: TextStyle(color: Colors.black),),

        ],
      ),
    );
  }
}



class textOnclickPadding extends StatefulWidget {
  final String? text;
  final Function ontap;
  textOnclickPadding({required this.text,required this. ontap});

  @override
  State<textOnclickPadding> createState() => _textOnclickPaddingState();
}

class _textOnclickPaddingState extends State<textOnclickPadding> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return  Container(


      child: MouseRegion(
        onEnter: (event) {
          isHover = true;
          setState(() {});
        },
        onExit: (event) {
          isHover = false;
          setState(() {});
        },
        child: InkWell(
          onTap: () {
            widget.  ontap();

          },
          child: Container(
            color:isHover?Colors.grey.shade200:Colors.transparent,
            padding: EdgeInsets.all(11),
            child:
            Text(widget.text??"",style: TextStyle(fontSize: 13.5),),
          ),
        ),
      ),
    );;
  }
}




class CheckedBoxes extends StatefulWidget {
  final bool? valueChanger;
  final Color color;
  final double hght;
  final Function(bool?) onSelection;
  CheckedBoxes({required this.onSelection,this.valueChanger=false,this.color=Colors.transparent,this.hght=50});

  @override
  _CheckedBoxesState createState() => _CheckedBoxesState();
}

class _CheckedBoxesState extends State<CheckedBoxes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: widget.hght,
      child: Checkbox(
        side: BorderSide(
            width: 1,
            color:  Color(0xff3E4F5B).withOpacity(.5)




        ),


        activeColor: Color(0xff3E4F5B),
        value: widget.valueChanger,
        onChanged: widget.onSelection,
      ),
    );
  }
}


class IconWithInCircle extends StatefulWidget {
  final VoidCallback ontap;
  final String image;
  const IconWithInCircle({Key? key, required this.ontap, required this.image}) : super(key: key);

  @override
  State<IconWithInCircle> createState() => _IconWithInCircleState();
}

class _IconWithInCircleState extends State<IconWithInCircle> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: (){
      widget.ontap();
    },
      child:
      CircleAvatar(
        backgroundColor: Color(0xff66687B).withOpacity(.2),
        minRadius: context.blockSizeHorizontal*1,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Center(
            child: Container(
                height: context.blockSizeVertical*2,

                child: Image.asset(widget.image)),
          ),

          // backgroundImage: AssetImage("image/bg.jpg"),
          minRadius: context.blockSizeHorizontal*0.9,
        ),
      ),);
  }
}




class LoadingOverlay {


  // LoadingOverlay(this._overlay);

  void show(BuildContext context) {
    OverlayEntry? _overlay;
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout
        builder: (context) => ColoredBox(
          color: Color(0x80000000),
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
          ),
        ),
      );
      Overlay.of(context).insert(_overlay);
    }
  }

  void hide() {
    OverlayEntry? _overlay;
    if (_overlay != null) {
      _overlay.remove();
      // _overlay = null;
    }
  }
}
class CustomToggle extends StatefulWidget {
final String leftText;
final String rightText;
final Color? selectedTextClr;
final Color? unSelectedTextClr;
  final double?height;
  final double?width;
  final Gradient? selectedGradiant;
  final Gradient? sunselectedGradiant;
  final VoidCallback leftButtonPress;
  final VoidCallback rightButtonPress;
  const CustomToggle({Key? key, this.height, this.width, this.selectedGradiant, this.sunselectedGradiant, required this.leftButtonPress, required this.rightButtonPress, required this.leftText, required this.rightText, this.selectedTextClr, this.unSelectedTextClr}) : super(key: key);

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  int  selected=1;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: widget.height??context.blockSizeVertical*5,
      width:widget.width??context.blockSizeHorizontal*15,

      decoration: BoxDecoration(

          // border: Border.all(color: Colors.grey.withOpacity(.8)),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: InkWell(
            onTap: (){
              setState(() {
                selected=1;
                widget.leftButtonPress();
              });

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3),topLeft: Radius.circular(3)),
            gradient:selected==1? widget.selectedGradiant:widget.sunselectedGradiant ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: Text(widget.leftText,style: TextStyle(color: selected==1?widget.selectedTextClr??Colors.white:widget.unSelectedTextClr??Colors.black,fontSize: context.blockSizeHorizontal*1),))),
                ],
              ),
            ),
          )),
          Expanded(child: InkWell(
            onTap: (){
              setState(() {
                selected=2;
                widget.rightButtonPress();
              });

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(3),topRight: Radius.circular(3)),
                  gradient:selected==2? widget.selectedGradiant:widget.sunselectedGradiant ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: Text(widget.rightText,style: TextStyle(color: selected==2?widget.selectedTextClr??Colors.white:widget.unSelectedTextClr??Colors.black,fontSize: context.blockSizeHorizontal*1),))),
                ],
              ),
            ),
          )),
        ],
      ),

    );
  }
}



class CommonButtonGradiantPopup extends StatefulWidget {
  final String? headingText;
  final String label;
  final bool isHold;
  final bool isInActive;
final List<customPopupmenuButton> popupMenuLis;
  final Function? onTap;
  final double? height;
  final double? fontSize;
  final double? width;
  final Color? buttonColor;
  final EdgeInsets? margin;
final IconData? leftIcon;
final IconData? rightIcon;
  final bool isIndiactor;
  final EdgeInsetsGeometry? padding;
   CommonButtonGradiantPopup({this.buttonColor,this.isIndiactor=false,required this.label,this.isHold=false,this.headingText,this.isInActive=false,required this.onTap,this.height,this.width,this.margin,this.fontSize, required this.popupMenuLis, this.leftIcon, this.rightIcon, this.padding});

  @override
  State<CommonButtonGradiantPopup> createState() => _CommonButtonGradiantPopupState();
}

class _CommonButtonGradiantPopupState extends State<CommonButtonGradiantPopup> {
  @override
  Widget build(BuildContext context) {
    return

    PopupMenuButton(
      offset: Offset(0, 5),
      padding: EdgeInsets.zero,
      color:   Color(0xff8498B8),
      position: PopupMenuPosition.under,
      onSelected: (va){
       widget.onTap!(va);
      },
      itemBuilder: (BuildContext context) {
        final List<PopupMenuEntry<String>> popupItems = widget.popupMenuLis!.map((customPopupmenuButton item) {
          return PopupMenuItem<String>(
            padding: EdgeInsets.zero,
            value: item.value,
            child:ListTile(leading: Text(item.label,style: TextStyle(color: Colors.white),),),
          );

        }).toList();

        return
          popupItems;
      },
      child: Container(

          // margin: widget.margin??EdgeInsets.only(top: context.blockSizeVertical*1),
          padding:widget.padding?? EdgeInsets.symmetric(horizontal: 3),
          height:widget.height?? context.blockSizeVertical*4,
          // width: widget.width,

          // margin: EdgeInsets.only(top: context.blockSizeVertical*.),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient:LinearGradient(
                colors:
                [        Color(0xff8498B8),
                  Color(0xff8498B8),



                  //add more colors for gradient
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, //end of the gradient color
                stops: [ 0.5, 0.8] //stops for individual color
              //set the stops number equal to numbers of color
            ),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
             if(widget.leftIcon!=null) Icon(widget.leftIcon,color: Colors.white,size:context.blockSizeHorizontal*1.6),
              Text(
                widget.label??"",
                style: TextStyle(color: Colors.white,fontSize:widget.fontSize?? context.blockSizeHorizontal*.9),
              ),
            if(widget.rightIcon!=null)  Icon(widget.rightIcon,color: Colors.white,size:context.blockSizeHorizontal*1.6 ,)
            ],
          ),

      ),
    );
  }

}


class CustomGradientPopupMenuItem<T> extends PopupMenuItem<T> {
  final List<Color> gradientColors;
  final String text;

  CustomGradientPopupMenuItem({
    required this.text,
    required this.gradientColors,
  }) : super(

    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Text(text, style: TextStyle(color: Colors.white)),
    ),
  );
}


Widget customCupertinoLoading({Color? color, double radius = 10}) => Container(
    child: Center(
        child: Container(
            width: 200,
            height: 200,


            child:
            // Lottie.asset('asset_images/loadingAnimation.json',)),
        CupertinoActivityIndicator(
          radius: radius,
          color: color,
        ),
    )));
Widget customCircularLoading({Color? color, double radius = 10}) => Container(

    height:10,width:10,child: CupertinoActivityIndicator(color: Colors.blue,radius: 10,));


Widget listcustomCupertinoLoading(BuildContext context,{Color? color, double radius = 10,}) => Container(
// margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4,left:context.blockSizeHorizontal*2, ),
height: context.blockSizeVertical*60,
color: Colors.white,
child: Center(child: Center(child:Lottie.asset('asset_images/loadingAnimation.json', ))));

Widget listcustomCupertinoTableLoading(BuildContext context,{Color? color, double radius = 10,}) => Container(
margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4,left:context.blockSizeHorizontal*2, ),
height: context.blockSizeVertical*60,
color: Colors.white,
child: Center(child:Lottie.asset('asset_images/loadingAnimation.json', )),
);


class customPopupmenuButton{
  final String value;
  final String label;
  customPopupmenuButton({required this.value,required this.label});
}


class CustomScrollBar extends StatefulWidget {
  final Widget childs;
  final AutoScrollController controller;
  CustomScrollBar({required this.childs,required this.controller});

  @override
  State<CustomScrollBar> createState() => _CustomScrollBarState();
}

class _CustomScrollBarState extends State<CustomScrollBar> {
  late AutoScrollController scontroller;

  @override
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return  Theme(
      data: Theme.of(context).copyWith(
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all(Color(0xff333840)),
          )),
      // margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
      child: Scrollbar(
        isAlwaysShown: true,
        thickness: 5,


        controller: widget.controller,
        child: widget.childs,

      ),

    );
  }
}
class RadioTextListTile extends StatefulWidget {
  final int grpValue;
  final int index;
  final Function ontap;
  final String text;
  const RadioTextListTile({super.key, required this.grpValue, required this.index, required this.ontap, required this.text});

  @override
  State<RadioTextListTile> createState() => _RadioTextListTileState();
}

class _RadioTextListTileState extends State<RadioTextListTile> {
 bool isHover=true;
  @override
  Widget build(BuildContext context) {

    return
        MouseRegion(
          onEnter: (event) {
            isHover=true;
            setState(() {});
          },
          onExit: (event) {
            isHover = false;
            setState(() {});
          },
      child: Container(
        height: context.blockSizeVertical*5,
        decoration: BoxDecoration(

            border: Border(
              bottom: BorderSide( //
                  width:1,
                  color: Colors.grey.withOpacity(.3)
              ),
            )

        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: widget.index,
              groupValue: widget.grpValue,
              onChanged:(val){
                widget.ontap(val);

              }
            ),
            Text(widget.text,style: TextStyle(fontSize: isHover?context.blockSizeHorizontal*1.1:context.blockSizeHorizontal*1.08,fontWeight:isHover?FontWeight.bold:FontWeight.normal),)


          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////
