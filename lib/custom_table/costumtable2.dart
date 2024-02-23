import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../Callcenter_Screens/svg/leftmenu_svg.dart';
import 'colors.dart';
import 'custominputdecoration.dart';
import 'customoutlinebutton.dart';

Widget customTableTwo({
  required List<TableRow> childrens,
  Map<int, TableColumnWidth>? widths,
  double tableWidth = 1,
  TableBorder? border,
}) =>
    Table(
      columnWidths: widths,
      border: border ??
          TableBorder.all(
              color: Colors.red, style: BorderStyle.solid, width: tableWidth),
      children: childrens,
    );

Widget tableHeadtextTwo(
    String label, {
      double height = 10,
      double? size,
      Color? textColor = Colors.white,
      Color? color =  Pellet.tableHeaderTwo,
      EdgeInsets? padding,
      TextStyle? textStyle,
      Alignment align=Alignment.center,
    }) =>
    Container(
      alignment: align,
      height: height,
      padding: padding ?? EdgeInsets.fromLTRB(3, 3, 0, 4),

      decoration: BoxDecoration(
          color: color,
        border: Border(
          top: BorderSide(
            width: .6,
            color: Colors.grey.withOpacity(.5)
          ), bottom: BorderSide(
            width: .6,
            color: Colors.grey.withOpacity(.5)
          )
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.left,
            style: textStyle==null?TextStyle(fontSize: size, color: textColor,):textStyle,
          ),
        ],
      ),
    );
class textPaddingTwo extends StatefulWidget {
    final String label;

    final VoidCallback onTap;
   final double? fontSize  ;
    final    EdgeInsets? padding;
  final  Alignment align;
    final    double height;
    final    FontWeight fontWeight;
    final Color textColor;
    final String? label1;
    final bool isTap;
    final bool isNoTap;
    final Color ? bagroundColor;
    final double? textExistingWidth;


    textPaddingTwo(this.label,this.onTap,{ this.fontSize,this.isTap=false,this.isNoTap=false,this.padding,this.align=Alignment.center,this.height=0,this.fontWeight=FontWeight.w100,this.textColor=Colors.black, this.label1, this.textExistingWidth, this.bagroundColor});


  @override
  State<textPaddingTwo> createState() => _textPaddingTwoState();
}

class _textPaddingTwoState extends State<textPaddingTwo> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {

    return     MouseRegion(
      cursor:widget.isNoTap? SystemMouseCursors.basic:SystemMouseCursors.click,
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
        onTap: (){


          widget.onTap();
        },
        child:widget.height!=0?
        Container(
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.bagroundColor??Colors.white,
            boxShadow: [
              BoxShadow(
                color: widget.isTap?Colors.grey:Colors.transparent,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ]


          ),



          // height: widget.height,
          alignment: widget.align,
          padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 8, 8),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             //  Text(
             //
             // widget. label1??"",
             //    style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
             //  ),

              Container(
                width: widget.textExistingWidth,

                child: Text(

                widget. label,
                  style: TextStyle(fontSize: widget.fontSize!=null? widget.fontSize:context.blockSizeHorizontal*.9, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor,overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
        ):Container(
          decoration: BoxDecoration(
              color:isHover? Colors.grey.withOpacity(.05):Colors.white,
              boxShadow: [
                BoxShadow(
                  color: widget.isTap?Colors.grey:Colors.transparent,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ]


          ),



          // height: widget.height,
          alignment: widget.align,
          padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 8, 8),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Text(
              //
              // widget. label1??"",
              //    style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
              //  ),

         widget.textExistingWidth!=null?   Container(
            width: widget.textExistingWidth,

            child: Text(

              widget. label,
              style: TextStyle(fontSize: widget.fontSize!=null? widget.fontSize:context.blockSizeHorizontal*.9, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor,overflow: TextOverflow.ellipsis),
            )):    Container(

                child: Text(

                  widget. label,
                  style: TextStyle(fontSize: widget.fontSize!=null? widget.fontSize:context.blockSizeHorizontal*.9, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  bool isEmptyFunction(Function function) {
    // Convert the function body to a string and remove whitespace
    String body = function.toString().replaceAll(RegExp(r'\s'), '');

    // Check if the body is empty or consists only of comments
    return body.isEmpty || body.startsWith('//') || body.startsWith('/*');
  }
}




class AdminTableDotIcon extends StatefulWidget {
  final Function onTap;
  final List<PopupMenuClass>valueList;
  AdminTableDotIcon({required this.onTap, required this.valueList});





  @override
  State<AdminTableDotIcon> createState() => _AdminTableDotIconState();
}

class _AdminTableDotIconState extends State<AdminTableDotIcon> {
  bool isHover=false;


  @override
  Widget build(BuildContext context) {
    return     MouseRegion(
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
        child: PopupMenuButton(
          offset: Offset(0,5),
           position: PopupMenuPosition.under,
          onCanceled : (){
           print("aaaaaaaaaaaaaa");
          },
          onSelected: (val){
            widget.onTap(val);
          },

          itemBuilder: (context) {
             return widget.valueList.map((e) {
               return PopupMenuItem<String>(
                 value: e.value,
                   child: Text(e.text,style: TextStyle(fontSize: context.blockSizeHorizontal*.9),));
             }).toList();

          },

          icon: Container(

            height:context.blockSizeVertical*3,
            width: context.blockSizeHorizontal*2,
            decoration: BoxDecoration(
              border: Border.all(
                  color: isHover?Colors.grey:Colors.grey.withOpacity(.6)

              ),
              shape: BoxShape.circle,
            ),
            child: Center(child: Icon(Icons.more_horiz,size: 15,color: isHover?Colors.grey:Colors.grey.withOpacity(.6)),),
          ),
        ),
      ),
    );
  }
}

class textPaddingAvatar extends StatefulWidget {
    final String label;
    final String? image;
    final bool isImage;

    final VoidCallback onTap;
   final double fontSize  ;
    final    EdgeInsets? padding;
  final  Alignment align;
    final    double height;
    final    FontWeight fontWeight;
    final Color textColor;
    final String? label1;
    final double? textExistingWidth;


    textPaddingAvatar(this.label,this.onTap,{ this.fontSize=13,this.isImage=true,this.padding,this.align=Alignment.center,this.height=0,this.fontWeight=FontWeight.w100,this.textColor= const Color(0xff6F91CB), this.label1,  this.image, this.textExistingWidth});


  @override
  State<textPaddingAvatar> createState() => _textPaddingAvatarState();
}

class _textPaddingAvatarState extends State<textPaddingAvatar> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
     if(widget.isImage)   Container(
          height: context.blockSizeVertical*3,
          width: context.blockSizeVertical*2,

          decoration: BoxDecoration(

            shape: BoxShape.circle,
            // image:DecorationImage(image: AssetImage("asset_images/emptyUSer.png",))
          ),
          child: widget.image?.isEmpty==true||widget.image=="null"?Image.asset("asset_images/emptyUSer.png"):Image.network(widget.image!),

        ),
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

          child: InkWell(
            onTap: widget.onTap,
            child: Container(

              color:isHover? Colors.grey.withOpacity(.05):Colors.white,

              // height: widget.height,
              alignment: widget.align,
              padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 8, 8),
              child:widget.textExistingWidth!=null?Container(
                width:widget.textExistingWidth ,

                child: Text(
                  widget. label=="0"?"":widget. label,

                  style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor,decoration:isHover?TextDecoration.underline:TextDecoration.none,decorationColor: Colors.blue,decorationThickness: 2,overflow:TextOverflow.ellipsis ),
                ),
              ):Container(

                child: Text(

                 widget. label=="0"?"":widget. label,
                  style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor,decoration:isHover?TextDecoration.underline:TextDecoration.none,decorationColor: Colors.blue,decorationThickness: 2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class WislisttextPadding extends StatefulWidget {
    final String label;

    final VoidCallback onTap;
   final double fontSize  ;
    final    EdgeInsets? padding;
  final  Alignment align;
    final    double height;
    final    FontWeight fontWeight;
    final Color textColor;
    final Color? bagroundColor;
    final String? label1;
    final Function(bool) isWislistTap;
    final bool isWislist;


    WislisttextPadding(this.label,this.onTap,{ this.fontSize=13,this.padding,this.align=Alignment.center,this.height=0,this.fontWeight=FontWeight.w100,this.textColor=Colors.black, this.label1, required this.isWislistTap,  this.isWislist=false,  this.bagroundColor});


  @override
  State<WislisttextPadding> createState() => _WislisttextPaddingState();
}

class _WislisttextPaddingState extends State<WislisttextPadding> {
  bool isHover=false;
  late bool val;
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    if (!onChange) val = widget.isWislist;
    onChange = false;
    return     MouseRegion(
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

        color:widget.bagroundColor??Colors.white,

        // height: widget.height,
        alignment: widget.align,
        padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 8, 8),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           //  Text(
           //
           // widget. label1??"",
           //    style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
           //  ),

            InkWell(
              onTap: widget.onTap,
              child: Container(
                width: context.blockSizeHorizontal*27
                ,


                child: Text(

                 widget. label=="0"?"":widget. label,
                  style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
                ),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (){
                val = !val;
                if (widget.isWislistTap != null) widget.isWislistTap!(val);
                onChange = true;
                setState(() {});
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:Colors.grey.withOpacity(.4)
                ),
                child: Icon(Icons.favorite,color:widget.isWislist? Colors.red:Colors.white,size: isHover?17:12,),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class searchList extends StatefulWidget {
  final String label;
  final String label1;
 final  int? selected;
 final  int? index;
  final VoidCallback onTap;
  final double fontSize  ;
  final    EdgeInsets? padding;
  final  Alignment align;
  final    double height;
  final    FontWeight fontWeight;
  final Color textColor;


  searchList(this.label,this.onTap,{ this.fontSize=13, this.padding,this.align=Alignment.center,this.height=0,this.fontWeight=FontWeight.w100,this.textColor=Colors.black, required this.label1, this.selected, this.index});


  @override
  State<searchList> createState() => _searchListState();
}

class _searchListState extends State<searchList> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return     MouseRegion(
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

      child: InkWell(
        onTap: widget.onTap,
        child: Container(


          color:isHover? Colors.grey.withOpacity(.05):      widget.selected==widget.index?Colors.grey.withOpacity(.2):Colors.white,

          // height: widget.height,
          alignment: widget.align,
          padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 20, 8),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(

                  child: Text(

                    widget. label1=="0"?"":widget. label1,
                    style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
                  )),
              Spacer(),
              Container(

                child: Text(

                  widget. label=="0"?"":widget. label,
                  style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}




class NoteAndRemarksPopupText extends StatefulWidget {
    final String label;
    final String? note;
    final String? remark;
    final VoidCallback onTap;
   final double fontSize  ;
    final    EdgeInsets? padding;
  final  Alignment align;
    final    double height;
    final    FontWeight fontWeight;
    final Color textColor;


    NoteAndRemarksPopupText(this.label,this.onTap,{ this.fontSize=13, this.padding,this.align=Alignment.center,this.height=0,this.fontWeight=FontWeight.w100,this.textColor=Colors.black, this.note, this.remark});


  @override
  State<NoteAndRemarksPopupText> createState() => _NoteAndRemarksPopupText();
}

class _NoteAndRemarksPopupText extends State<NoteAndRemarksPopupText> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    print("widget.label.length${widget.label.length}");
    return     MouseRegion(
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

      child: InkWell(
        onTap: widget.onTap,
        child: Container(

          color:isHover? Colors.grey.withOpacity(.05):Colors.white,

          // height: widget.height,
          alignment: widget.align,
          padding:widget. padding ?? EdgeInsets.fromLTRB(8, 8, 8, 8),
          child:Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: context.blockSizeHorizontal*2.7),

                    child: Text(

                     widget. label=="0"?"":widget. label,
                      maxLines: 1,

                      style: TextStyle(fontSize: widget.fontSize, fontWeight:widget. fontWeight,height: 1.5,color: widget.textColor,overflow:TextOverflow.ellipsis ),
                    ),
                  ),
                ],
              ),
           if(widget.label.length>60)   Positioned(
                right: 1,
                  bottom: 1,
                  child: InkWell(
                    onTap: (){
                      showDailogPopUp(
                          context,
                          NoteRemarkPopup(
                            note: widget.note??"",
                            remark:widget.remark??"",



                          ));

                    },
                      child: SvgPicture.string(LeftMenuSvgs().dotIcon,

                      )))

            ],
          ),
        ),
      ),
    );
  }
}

// Widget textPaddingTwo(String label,VoidCallback onTap,
//     {double fontSize = 13,
//       EdgeInsets? padding,
//       Alignment align=Alignment.center,
//       double height=60,
//       bool isHover=true,
//
//       FontWeight fontWeight = FontWeight.w100}) =>
//     MouseRegion(
//       onEnter: (event) {
//         isHover = true;
//
//       },
//       onExit: (event) {
//         isHover = false;
//
//       },
//
//       child: InkWell(
//         onTap: onTap,
//         child: Container(
//           color:isHover?Colors.blue:Colors.white,
//
//           height: height,
//           alignment: align,
//           padding: padding ?? EdgeInsets.fromLTRB(8, 0, 0, 0),
//           child:Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 label=="0"?"":label,
//                 style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
Widget childPadding(Widget child, {EdgeInsets? padding}) => Padding(
  padding: padding ?? EdgeInsets.fromLTRB(3, 3, 0, 4),
  child: child,
);

Widget dataTableHead(BuildContext context, String label) => Row(
  children: [
    boldText(label),
    SizedBox(height: 5,),
    TextButton.icon(
      onPressed: () {},
      label: Text("add new"),
      icon: Icon(Icons.add),
    ),
    // DropDownLabel(),
    SizedBox(height: 5,),
    SizedBox(
        width: 100,
        child: underlinedSearchField())
  ],
);

underlinedSearchField() {}
Widget tableAddNewTitle(String label, VoidCallback onTap) => Row(
  children: [
    boldText(label),
    SizedBox(height: 5,),
    Transform.scale(
      scale: 0.8,
      child: CustomOutLinedButton(
        text: 'Add new',
        iconData: Icons.add,
        onTap: onTap,
      ),
    ),
  ],
);
Widget childCustomPadding(Widget child, {EdgeInsetsGeometry? padding}) =>
    Padding(
      padding: padding ?? EdgeInsets.all(2),
      child: child,
    );


class CustomCheckBox extends StatefulWidget {
  final bool value;
  final Function? onChange;

  const CustomCheckBox({Key? key, this.value = false, this.onChange})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool val;
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    if (!onChange) val = widget.value;
    onChange = false;
    return InkWell(
      onTap: () {
        // val = !val;
        if (widget.onChange != null) widget.onChange!();
        // onChange = true;
        // setState(() {});
      },
      child: Container(
        height: 46,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 0),
        child: Center(
          child: val
              ? Icon(
            Icons.check_box,
            color: Colors.green,
          )
              : Icon(Icons.check_box_outline_blank),
        ),
      ),
    );
  }
}

class PopupMenuClass{
  String value;
  String text;
  PopupMenuClass({required this.value,required this.text});

}
class UnderLinedInput extends StatefulWidget {
  //  final String label;
  // final bool required;
  final VoidCallback? onClick;
  final bool enable;
  final bool  initialCheck;
  final bool  integerOnly;
  final  String  initial;
  final String ? last;
  final bool restricted;
  final String hintText;
  final bool formatter;
  final bool suffixIconEnable;
  final bool readOnly;
  final Color filledColour;
  final AlignmentGeometry alignment;
  final TextAlign textAlighn;
  // final String? tileName;
  final int maxLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onComplete;
  // final List<String>? items;
  const
  UnderLinedInput(
      {Key? key,
        this.last="",
        this.readOnly=false,
        this.integerOnly=false,
        this.alignment=Alignment.topRight,
        this.filledColour=Colors.white,
        this.suffixIconEnable=false,
        this.enable = true,
        this.initial='',
        this.hintText = "Enter..",
        this.maxLines = 1,
        this.controller,
        this.onChanged,
        this.textAlighn=TextAlign.right,
        this.onComplete,
        this.initialCheck=false,
        this.formatter= true,

        this.restricted = false,
        this.onClick})
      : super(key: key);

  @override
  _UnderLinedInputState createState() => _UnderLinedInputState();
}

class _UnderLinedInputState extends State<UnderLinedInput> {

  @override
  Widget build(BuildContext context) {
    widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;


    return Column(
      children: [
        Container(

          alignment: Alignment.topCenter,
          // color: Colors.grey.shade200,
          child:widget.initialCheck?
          Center(
            child: TextFormField(
              textAlign: widget.textAlighn,
              readOnly: widget.readOnly,
              // style:CommonTextStyle.normalTableFieldStyle,

              initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
              onTap: () {
                if (widget.onClick != null) widget.onClick!();
              },
              maxLines: widget.maxLines,

              //controller: widget.controller,
              enabled: widget.enable,
              keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
              inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
              onEditingComplete: widget.onComplete,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.filledColour,
                isCollapsed: true,


                contentPadding: EdgeInsets.all(10),
                isDense: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 14),
                border:InputBorder.none,
              ).copyWith(isDense: true),
            ),
          ):
          Container(

            alignment: widget.alignment,
            child: Center(
              child: TextFormField(
                textAlign: widget.textAlighn,
                readOnly: widget.readOnly,
                // style: CommonTextStyle.normalTableFieldStyle,
                // initialValue:widget.last=="0"?"":widget.last,
                onTap: () {
                  if (widget.onClick != null) widget.onClick!();
                },
                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: widget.enable,
                keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
                inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
                onEditingComplete: widget.onComplete,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  isCollapsed: true,
                  filled: true,
                  fillColor: widget.filledColour,
                  suffixIcon: widget.suffixIconEnable?Icon(Icons.arrow_downward_outlined):null,
                  contentPadding: EdgeInsets.all(10),
                  isDense: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 12),
                  border:InputBorder.none,
                ).copyWith(isDense: true),
              ),
            ),
          ),
        ),
      ],
    );
  }
}