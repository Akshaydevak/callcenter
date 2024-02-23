

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../color_palette/color_palette.dart';
import '../custom_table/custominputdecoration.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:intl_phone_field/country_picker_dialog.dart';

import 'Callcenter/widgets.dart';

class MobileTextValidation extends StatelessWidget {
  final TextEditingController controller;
  const MobileTextValidation({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical * 6,
      width: context.blockSizeHorizontal * 40,
      color: Color(0xfff4f3f3),
      child: TextField(

        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          label: null,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
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
      ),
    );
  }
}
//////////////////////////////////
class TextOnlyButtonCall extends StatelessWidget {
  final String text;
  final int color1;
  final int color2;
  final VoidCallback? onTap;
  const TextOnlyButtonCall(
      {Key? key,
        required this.text,
        required this.color1,
        required this.color2,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.blockSizeVertical * 5,
      width: context.blockSizeHorizontal * 16.5,
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
                borderRadius: BorderRadius.zero,
                // side: BorderSide(color: Color(0xffF4F4F4))
              )),
              backgroundColor: MaterialStateProperty.all(Color(color1)))),
    );
  }
}
///////////////////////////////////
class SmallTextFieldPopUp extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool read;

  const SmallTextFieldPopUp({Key? key, required this.controller, required this.text, required this.read}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: context.blockSizeHorizontal * 1,

                color: Colors.black)),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
        Container(
          height: context.blockSizeVertical * 5.5,
          width: context.blockSizeHorizontal * 13,
          decoration: BoxDecoration(
              border: Border.all(
                  width: context.blockSizeHorizontal * 0.01,
                  color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: TextField(controller: controller,
            readOnly: read,
            decoration: InputDecoration(
              isDense: true,
              label: null,
              filled: true,
              fillColor: Color(0xffF2F2F2),
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
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
          ),
        ),
      ],
    );
  }
}
/////////////////////////
class MediumTextFieldPopUp extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool read;

  const MediumTextFieldPopUp({Key? key, required this.controller, required this.text, required this.read}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: context.blockSizeHorizontal * 1,
                  color: Colors.black)),
          SizedBox(
            height: context.blockSizeVertical * .5,
          ),
          Container(
            height: context.blockSizeVertical * 5.5,
            
            decoration: BoxDecoration(
                border: Border.all(
                    width: context.blockSizeHorizontal * 0.01,
                    color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(controller: controller,
              readOnly: read,
              decoration: InputDecoration(
                isDense: true,
                label: null,
                filled: true,
                fillColor: Color(0xffF2F2F2),
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
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
            ),
          ),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////
class LargeTextFieldPopUp extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String? hintText;
  final bool read;
  final Function? onChange;
  final Color? fillColor;
  final double? width;

  const LargeTextFieldPopUp(
      {Key? key, required this.controller,this.hintText, required this.text, required this.read,this.onChange, this.fillColor=const Color(0xffF2F2F2), this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: context.blockSizeHorizontal * 1,
                  color: Colors.black)),
          SizedBox(
            height: context.blockSizeVertical * .5,
          ),
          Container(
            // height: context.blockSizeVertical * 5.5,
            // width:width!=null?width: context.blockSizeHorizontal * 18.5,
            decoration: BoxDecoration(
                border: Border.all(
                    width: context.blockSizeHorizontal * 0.01,
                    color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(controller: controller,
              onChanged: (va){
             if(onChange!=null){
               onChange!(va);
             }

              },
              readOnly: read,
              decoration: InputDecoration(
                isDense: true,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey,fontSize: context.blockSizeHorizontal * .8,),
                label: null,
                filled: true,
                fillColor:fillColor ,
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
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
            ),
          ),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////
class PopUpHeaderCallcenter extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onTap;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  final bool isCancel;
  final bool buttonVisible;
  final double width;
  final String leftButtonText;
  final String rightButtonText;
  final double height;
  final FocusNode? focusNode;

  final Function(RawKeyEvent event)? onkeyEvent;

  const PopUpHeaderCallcenter({
    Key? key,
    required this.label,
    this.onEdit,
    this.leftButtonText="",
    this.rightButtonText="",
    this.widthPopup = 50,
    this.dataField,
    this.buttonVisible=true,
    this.onAddNew,
    this.width=600,
    this.height=500,
    this.isCancel=true,
    required this.onApply,
    this.isDirectCreate = false, this.onTap, this.onkeyEvent, this.focusNode,
  }) : super(key: key);

  @override
  _PopUpHeaderCallcenterState createState() => _PopUpHeaderCallcenterState();
}

class _PopUpHeaderCallcenterState extends State<PopUpHeaderCallcenter> {
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(focusNode: widget.focusNode!=null?widget.focusNode!:FocusNode(),

        onKey: ( RawKeyEvent event) {
      if(widget.onkeyEvent!=null)
      widget.onkeyEvent!(event);},
      child: Container(
        height:widget.height,

        // padding: EdgeInsets.all(10),
        width: widget.width,
        child: GeneralSavePage(
          isCancel: widget.isCancel,
          bottomButtonVisibi: widget.buttonVisible,
          onEdit: widget.onEdit,
          onTap: widget.onTap,
          leftButtonText: widget.leftButtonText,
          rightButtonText: widget.rightButtonText,
          onPopUp: true,
          onApply: widget.onApply,
          onCreate: widget.isDirectCreate ? true : _selections[0],
          onCancel: () {
            Navigator.pop(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(widget.label, fontSize: 18),
                  // Transform.scale(
                  //   scale: 0.8,
                  //   child: _toggleButtonList(widget.onAddNew ?? (v) {}),
                  // ),
                  Transform.scale(
                    scale: 0.7,
                    alignment: Alignment.topRight,
                    child: CloseButton(onPressed: () {
                      Navigator.pop(context);
                    }),
                  ),
                ],
              ),
              greyDivider(),
              if (widget.dataField != null) widget.dataField!,
            ],
          ),
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {
      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}
///////////////////////////////////////////////////////////////////////////////
class GeneralSavePage extends StatelessWidget {
  final VoidCallback? onTap;
  final bool onCreate;
  final bool bottomButtonVisibi;
  final bool onPopUp;
  final bool isCancel;
  final Widget child;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final double? height;
  final String leftButtonText;
  final String rightButtonText;
  final bool isLaoding;


  final VoidCallback? onCancel;
  const GeneralSavePage(
      {Key? key,
        required this.child,
        this.isCancel=true,
        this.height,
        this.isLaoding=false,
        this.leftButtonText="",
        this.rightButtonText="",


        this.bottomButtonVisibi=true,
        required this.onApply,
        this.onCancel,
        this.onCreate = false,
        this.onPopUp = false,
        this.onEdit, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("wwww"+onCreate.toString());
    return Container(
      height:height??MediaQuery.of(context).size.height * 48,
      width: 100,
      child: Stack(
        children: [
          Container(

              height:height??MediaQuery.of(context).size.height * 48,
              margin: EdgeInsets.only(
                  bottom: onCreate
                      ? 40
                      : onEdit != null
                      ? 40
                      : 20),
              child: child),
         if(bottomButtonVisibi) Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0XFFbacF8F8F8
                ),
                padding:  EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    if (onCreate) save(context),
                    if (onEdit != null && !onCreate) edit(isCancel: isCancel,cancelText: leftButtonText,continueText: rightButtonText,isLoading: isLaoding)
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget edit({bool isCancel=true,String cancelText="CANCEL",String continueText="Continue",bool isLoading=false}) {


    return Container(
      // color: Colors.green,
      // height: 30,
      child: Row(
        children: [
        if(isCancel)  CommonButtonCustom(
              textColor: Color(0xff808080),
              color: Color(0xffF8F8F8),
              onPressed: onEdit,
              child: Row(
                children: [
                  // Icon(Icons.edit),
                  // SizedBox(width: 3),
                  Text("cancelText",style: TextStyle(color: Colors.white),),
                  // TextOnlyButton(text: "CONTINUE", color1: 0xff687892, color2: 0xffFFFFFF)
                ],
              )),
          if(isCancel)   SizedBox(width: 4,),

          CommonButtonGradiant(
            isIndiactor:isLoading ,
            margin: EdgeInsets.zero,

            width: 120,


            height: 40,

              onTap: onTap,

              label:continueText.isEmpty?"Continue":continueText,

          ),
        ],
      ),
    );
  }

  Widget save(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          SizedBox(
            height: 30,
            child: CommonButtonLightCustom(
                onPressed: onCancel,
                textColor: Colors.grey,
                color: Colors.orange,
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.grey),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Discard",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            child: CommonButtonCustom(
                onPressed: onApply,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class Generalpagination extends StatelessWidget {
  final Widget child;
  final int currentTab;
  final int lastTab;
  final Function(int)? onClick;
  final bool create;
  final VoidCallback? onApply;

  const Generalpagination(
      {Key? key,
        required this.child,
        required this.currentTab,
        required this.lastTab,
        this.onClick,
        this.create = false,
        this.onApply})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 60,
              margin: EdgeInsets.only(bottom: 20),
              child: child),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentTab == 0 ? Container() : previous(),
                  currentTab == lastTab
                      ? create
                      ?
                  //save
                  Container()
                      : Container()
                      : next()
                ],
              ))
        ],
      ),
    );
  }

  Widget previous() {
    return Container(
      alignment: Alignment.centerLeft,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(0);
              if (onClick != null && val == 1) onClick!(currentTab - 1);
              if (onClick != null && val == 2) onClick!(currentTab - 1);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.expand,
                  size: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.ac_unit, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "previous",
                ),
              ),
            ],
            isSelected: [
              false,
              false,
              false,
            ]),
      ),
    );
  }

  Widget next() {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.centerRight,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(currentTab + 1);
              if (onClick != null && val == 1) onClick!(currentTab + 1);
              if (onClick != null && val == 2) onClick!(lastTab);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Next",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add, size: 12),
              )
            ],
            isSelected: [
              false,
              false,
              false
            ]),
      ),
    );
  }
}

class CommonButtonLightCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonLightCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: Colors.white,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: color!),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}

class CommonButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Palette.BACKGROUND,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: color,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}

/////////////////////////////////////////////////////////////////////
class PopUpHeaderCallcenterTwo extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final bool buttonVisible;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onTap;
  final String leftButtonText;
  final String rightButtonText;
  final VoidCallback? onCrossButtonPress;
  final bool isCancel;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  final double width;
  final double height;
  final  EdgeInsets margin;
  final bool isLoading;
  const PopUpHeaderCallcenterTwo({
    Key? key,
    this.rightButtonText="",
    this.leftButtonText="",
    required this.label,
    this.isLoading=false,
    this.onEdit,
    this.isCancel=true,
    this.margin=const EdgeInsets.only(left: 11),
    this.widthPopup = 50,
    this.dataField,
    this.onAddNew,
    this.buttonVisible=true,
    this.height=850,
    required this.onApply,
    this.isDirectCreate = false, this.width=1000, this.onTap, this.onCrossButtonPress,
  }) : super(key: key);

  @override
  _PopUpHeaderCallcenterTwoState createState() => _PopUpHeaderCallcenterTwoState();
}

class _PopUpHeaderCallcenterTwoState extends State<PopUpHeaderCallcenterTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height,
      margin: widget.margin,


      padding: EdgeInsets.only(left: 8,top: 10,right: 12),
      width: widget.width,
      // color: Colors.red,
      child: GeneralSavePage(
        height: widget.height,
        isCancel: widget.isCancel,
        isLaoding: widget.isLoading,
        rightButtonText: widget.rightButtonText,
        leftButtonText: widget.leftButtonText,
        onEdit: widget.onEdit,
        bottomButtonVisibi: widget.buttonVisible,
        onTap: widget.onTap,
        onPopUp: true,
        onApply: widget.onApply,
        onCreate: widget.isDirectCreate ? true : false,
        onCancel: () {
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label, fontSize: 18),

                // Transform.scale(
                //   scale: 0.8,
                //   child: _toggleButtonList(widget.onAddNew ?? (v) {}),
                // ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    print("Akshayyyyyyyyyyyyyyy");

                    if(widget.onCrossButtonPress!=null){
                      widget.onCrossButtonPress!();
                    }
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {
      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}
////////////////////////////////////////////////////////////////////////////
class PopUpHeaderCallcenterThree extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onTap;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;

  const PopUpHeaderCallcenterThree({
    Key? key,
    required this.label,
    this.onEdit,
    this.widthPopup = 50,
    this.dataField,
    this.onAddNew,
    required this.onApply,
    this.isDirectCreate = false, this.onTap,
  }) : super(key: key);

  @override
  _PopUpHeaderCallcenterThreeState createState() => _PopUpHeaderCallcenterThreeState();
}

class _PopUpHeaderCallcenterThreeState extends State<PopUpHeaderCallcenterThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:850,

      padding: EdgeInsets.all(10),
      width: 500,
      height: 500,
      // color: Colors.red,
      child: GeneralSavePage(
        onEdit: widget.onEdit,
        onPopUp: true,
        onTap: widget.onTap,
        onApply: widget.onApply,
        onCreate: widget.isDirectCreate ? true : _selections[0],
        onCancel: () {
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label, fontSize: 18),
                // Transform.scale(
                //   scale: 0.8,
                //   child: _toggleButtonList(widget.onAddNew ?? (v) {}),
                // ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {
      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}
///////////////////////////////////////////////////////////////////////////////
class MobileWithImage extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String img1;
  final bool formatter;

  const MobileWithImage({Key? key, required this.controller,this.formatter=false, required this.text, required this.img1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: context.blockSizeHorizontal * 1,
                color: Colors.black)),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
        Row(
          children: [
            Container(
              height: context.blockSizeVertical*6,
              width: context.blockSizeHorizontal*2,
              child: Image.asset(img1),
            ),
            SizedBox(width: context.blockSizeHorizontal*0.5,),
            Container(
              height: context.blockSizeVertical * 5.5,
              width: context.blockSizeHorizontal * 15,

              child: TextField(controller: controller,
                keyboardType:
               formatter? TextInputType.number:null ,
                inputFormatters:formatter?
                <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ]:null,


                decoration: InputDecoration(
                  isDense: true,
                  label: null,

                  alignLabelWithHint: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}
////////////////////////////////////////////////////////////////////////
class NormalFieldText extends StatelessWidget {
  final String text;
  final bool formatter;
  final bool integerOnly;
  final bool? readOnly;

  final TextEditingController controller;
  final String value;
  final bool isMandatory;
  final bool isWidth;
  final String? validatirText;
  final FormFieldValidator? validator;
  const NormalFieldText(

      {Key? key,
        required this.text,
        this.isWidth=true,
        this.integerOnly=false,
        this.formatter=false,
        this.isMandatory=false,
        required this.controller,

        this.value="", this.validatirText, this.validator, this.readOnly})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isWidth?
      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(text, style: TextStyle(fontWeight: FontWeight.w400,fontSize: context.blockSizeHorizontal*1)),
              if(isMandatory)
                Text("*",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: context.blockSizeHorizontal * .9,
                        color: Colors.red)),
            ],
          ),
          SizedBox(
            height: context.blockSizeVertical * .5,
          ),
          Container(
            // height: context.blockSizeVertical * 6,
            // width: context.blockSizeHorizontal * 20,
            child: TextFormField(
              controller: controller,
              readOnly: readOnly??false,
              keyboardType:formatter?TextInputType.numberWithOptions(decimal: true):null,
              inputFormatters:formatter? <TextInputFormatter>[integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,

              validator: (value) {
                if(isMandatory){
                  if(validator!=null){
                    validator!(value);
                  }
                  else{
                    if (value!.isEmpty) {
                      return validatirText;
                    }
                  }

                }
                return null;
              },


              decoration: InputDecoration(labelText: value,
                contentPadding:
                EdgeInsets.symmetric(vertical: context.blockSizeVertical*2, horizontal: 10.0),



                // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
                isDense: true,
                label: null,

                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
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
            ),
          )
        ],
      ),
    ):
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(text, style: TextStyle(fontWeight: FontWeight.w400,fontSize: context.blockSizeHorizontal*1)),
            if(isMandatory)
              Text("*",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: context.blockSizeHorizontal * .9,
                      color: Colors.red)),
          ],
        ),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
        Container(
          // height: context.blockSizeVertical * 6,
          // width: context.blockSizeHorizontal * 20,
          child: TextFormField(
            controller: controller,
            readOnly: readOnly??false,
            keyboardType:formatter?TextInputType.numberWithOptions(decimal: true):null,
            inputFormatters:formatter? <TextInputFormatter>[integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,

            validator: (value) {
              if(isMandatory){
                if(validator!=null){
                  validator!(value);
                }
                else{
                  if (value!.isEmpty) {
                    return validatirText;
                  }
                }

              }
              return null;
            },


            decoration: InputDecoration(labelText: value,
              contentPadding:
              EdgeInsets.symmetric(vertical: context.blockSizeVertical*2, horizontal: 10.0),



              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,

              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
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
          ),
        )
      ],
    );
  }
}

class mobilePhoneext extends StatefulWidget {
  final String text;

  final TextEditingController controller;
  final TextEditingController? dialCode;
  final TextEditingController? alCode;
  final String value;
  final String? initalCode;
  final bool isMandatory;
  final bool formatter;
  final bool isWidth;
  final Function onChange;
  final Function? onCountryChange;
  final Function? refresh;
  final Function? changeAlcode;
  final double? textFormFieldWidth;
  const mobilePhoneext(

      {Key? key,
        required this.text,
        this.isWidth=true,
        this.initalCode,
        this.textFormFieldWidth,
        this.isMandatory=false,
        this.formatter=false,
        this.alCode,
        required this.controller,
        this.onCountryChange,

        this.value="",  this.dialCode, required this.onChange, this.refresh, this.changeAlcode})
      : super(key: key);

  @override
  State<mobilePhoneext> createState() => _mobilePhoneextState();
}

class _mobilePhoneextState extends State<mobilePhoneext> {
  String countryCode="UAE";
  @override
  void initState() {
    print("initial country code ${widget.initalCode}");
   countryCode=widget.initalCode??"IN";
   print(" country code $countryCode");

   super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("initial country code ${widget.initalCode}");
    countryCode=widget?.initalCode??"IN";

    print("initial ffffffffff code ${countryCode}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.text, style: TextStyle(fontWeight: FontWeight.w400,fontSize: context.blockSizeHorizontal*1)),
            if(widget.isMandatory)
              Text("*",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: context.blockSizeHorizontal * .9,
                      color: Colors.red)),
          ],
        ),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
      countryCode==""?Container(): widget.isWidth?
     Container(
          // height: context.blockSizeVertical * 12,
          width:widget.textFormFieldWidth?? context.blockSizeHorizontal * 17.5,
          child:
          IntlPhoneField(


    //         pickerDialogStyle:
    // PickerDialogStyle(
    // searchFieldCursorColor:
    // Color(0xffff9900),
    // listTileDivider: Divider(
    // height: 0,
    // ),
    // searchFieldInputDecoration:
    // InputDecoration(
    // focusedBorder:
    // UnderlineInputBorder(
    // borderSide: BorderSide(
    // color: Color(
    // 0xffff9900),
    // width: 2.0,
    // style: BorderStyle
    //     .solid)),
    // suffixIcon: Icon(
    // Icons.search,
    // color: Color(0xffff9900),
    // ),
    // labelText: "Search Country...",
    // labelStyle: TextStyle(
    // color: Colors.grey),
    // enabledBorder:
    // new UnderlineInputBorder(
    // borderSide: BorderSide(
    // color: Color(
    // 0xffff9900),
    // width: 1.0,
    // style: BorderStyle
    //     .solid)))),

            disableLengthCheck: true,
            validator:null,

            initialCountryCode: countryCode,
            onCountryChanged: (country){
              print("country.name${country.name}");
              // if(onCountryChange)


                widget.dialCode?.text="+"+country.dialCode;
                widget.alCode?.text=country.code;
                if(widget.changeAlcode!=null){
                  widget.changeAlcode!(country);
                }

                // if(widget.refresh!=null)
                // widget.refresh!();






            },
            onChanged:(va){
              widget.onChange(va.number.toString());
            },

            controller: widget.controller,
            // keyboardType: formatter? TextInputType.number:null ,
            inputFormatters:widget.formatter?
            <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ]:null,
            // validator: (value){
            //   if(value==null||value==""){
            //     return 'Enter a valid email!';
            //
            //   }
            // },
            decoration: InputDecoration(labelText: widget.value,
              // errorText: "nothing to dispaly",
              contentPadding: EdgeInsets.zero,

              counter: Offstage(),

              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,

              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
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
          ),
        ):
      Container(
        // height: context.blockSizeVertical * 12,
        // width:widget.textFormFieldWidth?? context.blockSizeHorizontal * 17.5,
        child: IntlPhoneField(



          disableLengthCheck: true,
          validator:null,pickerDialogStyle:
          PickerDialogStyle(
            width: MediaQuery.of(context).size.width/3.5,
          searchFieldCursorColor:
          Color(0xffff9900),
          listTileDivider: Divider(
          height: 0,
          ),
          searchFieldInputDecoration:
          InputDecoration(

          focusedBorder:
          UnderlineInputBorder(
          borderSide: BorderSide(
          color: Color(
          0xffff9900),
          width: 2.0,
          style: BorderStyle
              .solid)),
          suffixIcon: Icon(
          Icons.search,
          color: Color(0xffff9900),
          ),
          labelText: "Search Country...",
          labelStyle: TextStyle(
          color: Colors.grey),
          enabledBorder:
          new UnderlineInputBorder(
    borderSide: BorderSide(
    color: Color(
    0xffff9900),
    width: 1.0,
    style: BorderStyle
        .solid)))),

          initialCountryCode: countryCode,
          onCountryChanged: (country){
            print("country.name${country.name}");
            // if(onCountryChange)


            widget.dialCode?.text="+"+country.dialCode;
            widget.alCode?.text=country.code;
            if(widget.changeAlcode!=null){
              widget.changeAlcode!(country);
            }

            // if(widget.refresh!=null)
            // widget.refresh!();






          },
          onChanged:(va){
            widget.onChange(va.number.toString());
          },

          controller: widget.controller,
          // keyboardType: formatter? TextInputType.number:null ,
          inputFormatters:widget.formatter?
          <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ]:null,
          // validator: (value){
          //   if(value==null||value==""){
          //     return 'Enter a valid email!';
          //
          //   }
          // },
          decoration: InputDecoration(labelText: widget.value,
            // errorText: "nothing to dispaly",
            contentPadding: EdgeInsets.zero,

            counter: Offstage(),

            // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
            isDense: true,
            label: null,

            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
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
        ),
      )
      ],
    );
  }
}
class mobilePhoneLimitText extends StatefulWidget {
  final String text;

  final TextEditingController controller;
  final TextEditingController? dialCode;
  final TextEditingController? alCode;
  final String value;
  final String? initalCode;
  final bool isMandatory;
  final bool formatter;
  final bool isWidth;
  final Function onChange;
  final Function? onCountryChange;
  final Function? refresh;
  final Function? changeAlcode;
  final double? textFormFieldWidth;
  const mobilePhoneLimitText(

      {Key? key,
        required this.text,
        this.isWidth=true,
        this.initalCode,
        this.textFormFieldWidth,
        this.isMandatory=false,
        this.formatter=false,
        this.alCode,
        required this.controller,
        this.onCountryChange,

        this.value="",  this.dialCode, required this.onChange, this.refresh, this.changeAlcode})
      : super(key: key);

  @override
  State<mobilePhoneLimitText> createState() => _mobilePhoneLimitTextState();
}

class _mobilePhoneLimitTextState extends State<mobilePhoneLimitText> {
  String countryCode="UAE";
  @override
  void initState() {
    print("initial country code ${widget.initalCode}");
   countryCode=widget.initalCode??"IN";
   print(" country code $countryCode");

   super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("initial country code ${widget.initalCode}");
    countryCode=widget?.initalCode??"IN";

    print("initial ffffffffff code ${countryCode}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.text, style: TextStyle(fontWeight: FontWeight.w400,fontSize: context.blockSizeHorizontal*1)),
            if(widget.isMandatory)
              Text("*",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: context.blockSizeHorizontal * .9,
                      color: Colors.red)),
          ],
        ),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
      countryCode==""?Container(): widget.isWidth?
     Container(
          // height: context.blockSizeVertical * 12,
          width:widget.textFormFieldWidth?? context.blockSizeHorizontal * 17.5,
          child:
          IntlPhoneField(
    //         pickerDialogStyle:
    // PickerDialogStyle(
    // searchFieldCursorColor:
    // Color(0xffff9900),
    // listTileDivider: Divider(
    // height: 0,
    // ),
    // searchFieldInputDecoration:
    // InputDecoration(
    // focusedBorder:
    // UnderlineInputBorder(
    // borderSide: BorderSide(
    // color: Color(
    // 0xffff9900),
    // width: 2.0,
    // style: BorderStyle
    //     .solid)),
    // suffixIcon: Icon(
    // Icons.search,
    // color: Color(0xffff9900),
    // ),
    // labelText: "Search Country...",
    // labelStyle: TextStyle(
    // color: Colors.grey),
    // enabledBorder:
    // new UnderlineInputBorder(
    // borderSide: BorderSide(
    // color: Color(
    // 0xffff9900),
    // width: 1.0,
    // style: BorderStyle
    //     .solid)))),

            disableLengthCheck: true,
            validator:null,

            initialCountryCode: countryCode,
            onCountryChanged: (country){
              print("country.name${country.name}");
              // if(onCountryChange)


                widget.dialCode?.text="+"+country.dialCode;
                widget.alCode?.text=country.code;
                if(widget.changeAlcode!=null){
                  widget.changeAlcode!(country);
                }

                // if(widget.refresh!=null)
                // widget.refresh!();






            },
            onChanged:(va){
              widget.onChange(va.number.toString());
            },

            controller: widget.controller,
            // keyboardType: formatter? TextInputType.number:null ,
            inputFormatters:widget.formatter?
            <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ]:null,
            // validator: (value){
            //   if(value==null||value==""){
            //     return 'Enter a valid email!';
            //
            //   }
            // },
            decoration: InputDecoration(labelText: widget.value,
              // errorText: "nothing to dispaly",
              contentPadding: EdgeInsets.zero,

              counter: Offstage(),

              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,

              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
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
          ),
        ):
      Container(
        // height: context.blockSizeVertical * 12,
        // width:widget.textFormFieldWidth?? context.blockSizeHorizontal * 17.5,
        child: IntlPhoneField(



          disableLengthCheck: true,
          validator:null,pickerDialogStyle:
          PickerDialogStyle(
            width: MediaQuery.of(context).size.width/3.5,
          searchFieldCursorColor:
          Color(0xffff9900),
          listTileDivider: Divider(
          height: 0,
          ),
          searchFieldInputDecoration:
          InputDecoration(

          focusedBorder:
          UnderlineInputBorder(
          borderSide: BorderSide(
          color: Color(
          0xffff9900),
          width: 2.0,
          style: BorderStyle
              .solid)),
          suffixIcon: Icon(
          Icons.search,
          color: Color(0xffff9900),
          ),
          labelText: "Search Country...",
          labelStyle: TextStyle(
          color: Colors.grey),
          enabledBorder:
          new UnderlineInputBorder(
    borderSide: BorderSide(
    color: Color(
    0xffff9900),
    width: 1.0,
    style: BorderStyle
        .solid)))),

          initialCountryCode: countryCode,
          onCountryChanged: (country){
            print("country.name${country.name}");
            // if(onCountryChange)


            widget.dialCode?.text="+"+country.dialCode;
            widget.alCode?.text=country.code;
            if(widget.changeAlcode!=null){
              widget.changeAlcode!(country);
            }

            // if(widget.refresh!=null)
            // widget.refresh!();






          },
          onChanged:(va){
            widget.onChange(va.number.toString());
          },

          controller: widget.controller,
          // keyboardType: formatter? TextInputType.number:null ,
          inputFormatters:widget.formatter?
          <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ]:null,
          // validator: (value){
          //   if(value==null||value==""){
          //     return 'Enter a valid email!';
          //
          //   }
          // },
          decoration: InputDecoration(labelText: widget.value,
            // errorText: "nothing to dispaly",
            contentPadding: EdgeInsets.zero,

            counter: Offstage(),

            // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
            isDense: true,
            label: null,

            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
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
        ),
      )
      ],
    );
  }
}
//////////////////////////////////////
class TFields extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String? validatorText;
  final bool isMandatory;
  final bool formatter;
  final bool integerOnly;
  final bool isWidth;


  const TFields({Key? key, this.isWidth=true,required this.controller, this.formatter=false,   this.integerOnly=false, required this.text,this.validatorText,this.isMandatory=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: context.blockSizeHorizontal * 1,
                    color: Colors.black)),
            if(isMandatory)
              Text("*",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: context.blockSizeHorizontal * .9,
                      color: Colors.red)),
          ],
        ),
        SizedBox(
          height: context.blockSizeVertical * .5,
        ),
      isWidth?
      Container(
          // height: context.blockSizeVertical * 5.5,
          width: context.blockSizeHorizontal * 17.5,

          child: TextFormField(controller: controller,
            validator: (value) {
              if(isMandatory) {
                if (value!.isEmpty ) {
                  return validatorText;
                }
              }
              return null;
            },
            keyboardType:formatter?TextInputType.numberWithOptions(decimal: true):null,
            inputFormatters:formatter? <TextInputFormatter>[integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
            decoration: InputDecoration(
              // isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide:
                BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              ),
              contentPadding:    EdgeInsets.symmetric(vertical: context.blockSizeVertical*2, horizontal: 10.0),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide:
                BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              ),
              border: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
            ),
          ),
        ):
      Container(
        // height: context.blockSizeVertical * 5.5,
        // width: context.blockSizeHorizontal * 17.5,

        child: TextFormField(controller: controller,
          validator: (value) {
            if(isMandatory) {
              if (value!.isEmpty ) {
                return validatorText;
              }
            }
            return null;
          },
          keyboardType:formatter?TextInputType.numberWithOptions(decimal: true):null,
          inputFormatters:formatter? <TextInputFormatter>[integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
          decoration: InputDecoration(
            // isDense: true,
            label: null,
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide:
              BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
            ),
            contentPadding:    EdgeInsets.symmetric(vertical: context.blockSizeVertical*2, horizontal: 10.0),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide:
              BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
            ),
            border: OutlineInputBorder(
                borderSide:
                BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
          ),
        ),
      ),
      ],
    );
  }
}

class NewRadioButtonText extends StatefulWidget {
  final String lable;

  final Function valueAssign;
  NewRadioButtonText({required this.lable,required this.valueAssign});


  @override

  State<NewRadioButtonText> createState() => _NewRadioButtonTextState();
}

class _NewRadioButtonTextState extends State<NewRadioButtonText> {
  List<String>aaa=["Home","Office","Other"];
  String? gender;
  int m=-2;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          for(var i=0;i<aaa.length;i++)...[
            Text(aaa[i],style:GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.w600) ),
            Radio(
              value: m,
              groupValue: i,
              activeColor: Colors.blue,
              onChanged: (val) {
                setState(() {
                  m=i;
                  widget.valueAssign(aaa[m]);

                });
              },
            ),
          ],
        ]
    );
  }
}


//////////////////////final ///////////////////
class SMediaField extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final bool? valueChanger;
  final bool isVisibleCheckBox;
  final bool formatter;
  final bool integerOnly;
  final bool isWidth;
  final Function(String)? onChange;
  final Function(bool?)? onSelection;


  const SMediaField({Key? key,this.integerOnly=false,this.formatter=false,this.isWidth=true, required this.controller, required this.text,  this.valueChanger,  this.isVisibleCheckBox=false,  this.onSelection, this.onChange}) : super(key: key);

  @override
  State<SMediaField> createState() => _SMediaFieldState();
}

class _SMediaFieldState extends State<SMediaField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.text,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: context.blockSizeHorizontal * 1,
                    color: Colors.black)),
          if(widget.isVisibleCheckBox)  CheckedBoxs(
              valueChanger: widget.valueChanger,
onSelection:widget.isVisibleCheckBox?widget.onSelection!: (bool? va){}

            )
          ],
        ),
        widget.isVisibleCheckBox?     SizedBox(
          height: 0,
        ):   SizedBox(
          height: context.blockSizeVertical * 1.4,
        ),
   widget.  isWidth?
   Container(
          height: context.blockSizeVertical * 5.5,
          width: context.blockSizeHorizontal * 15,

          child: TextField(
            controller: widget.controller,
            keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
            inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
            decoration: InputDecoration(
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
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
          ),
        ):
   Container(
     // height: context.blockSizeVertical * 5.5,
     // width: context.blockSizeHorizontal * 15,

     child: TextFormField(
       controller: widget.controller,
       onChanged: (va){
         if(widget.onChange!=null){
           widget.onChange!(va);
         }

       },
       keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
       inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
       decoration: InputDecoration(
         isDense: true,
         label: null,

         alignLabelWithHint: true,
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(2),

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
     ),
   ),
      ],
    );
  }
}
////
class AccountDetails extends StatelessWidget {
  final String headText;
  final String detailsText;
  const AccountDetails({Key? key, required this.headText, required this.detailsText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color(0xffEBEBEB),
          border: Border.all(width: 0.05,color: Colors.black)),
          height: context.blockSizeVertical*4,
        width: context.blockSizeHorizontal*13,
          child: Text(headText,style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: context.blockSizeHorizontal*0.5,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color(0xffEBEBEB),
              border: Border.all(width: 0.05,color: Colors.black)),
          height: context.blockSizeVertical*4,
          width: context.blockSizeHorizontal*16,
          child: Text(detailsText),
        )
      ],
    );
  }
}
//
class AccountDetailsCard extends StatelessWidget {
  const AccountDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
     decoration: BoxDecoration(
       color: Colors.white,
       border: Border.all(width: 0.2,color: Colors.black)
     ),

      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AccountDetails(headText: "Bank Name", detailsText: "SBI"),
          SizedBox(height: context.blockSizeVertical*1,),
          const AccountDetails(headText: "Account Name", detailsText: "Savings"),
          SizedBox(height: context.blockSizeVertical*1,),
          const AccountDetails(headText: "Account Number", detailsText: "789456123369"),
          SizedBox(height: context.blockSizeVertical*1,),
          const AccountDetails(headText: "Account Type", detailsText: "Savings"),
          SizedBox(height: context.blockSizeVertical*1,),
          const AccountDetails(headText: "Branch", detailsText: "KAKKUR"),
          SizedBox(height: context.blockSizeVertical*1,),
          const AccountDetails(headText: "IFSC Code", detailsText: "SBI1236985478"),
          SizedBox(height: context.blockSizeVertical*1,),
          Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),),

        ],
      ),
    );
  }
}
//
class AddNewCard extends StatelessWidget {
  final TextEditingController controller;
  const AddNewCard({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(width: 0.2,color: Colors.black),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Add New Payment Options"),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "Bank Name",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "A/C Name",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "A/C Number",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "A/C Type",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "Branch",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          CardAddField(name: "IFSC Code",controller: controller),
          SizedBox(height: context.blockSizeVertical*1.5,),
          SizedBox(
            height: context.blockSizeVertical*3.5,
            width: context.blockSizeHorizontal*3,
            child: TextButton(
                onPressed: (){},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                      // side: BorderSide(color: Color(0xffF4F4F4))
                    )),
                    backgroundColor: MaterialStateProperty.all(Color(0xff687892))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Save",
                      style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
//
class CardAddField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  const CardAddField({Key? key, required this.name, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: context.blockSizeVertical*4,
          width: context.blockSizeHorizontal*8,
          decoration: BoxDecoration(
            color: Color(0xff687892),
              border: Border.all(width: 0.2,color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
          child: Text(name),
        ),
        SizedBox(width: context.blockSizeHorizontal*1,),
        Container(
          width: context.blockSizeHorizontal*10,
          height: context.blockSizeVertical*5,
          decoration: BoxDecoration(border: Border.all(width: 0.2,color: Colors.black)),
          child: TextFormField(
            controller: controller,
          ),
        )
      ],
    );
  }
}
//
class GPayScreen extends StatelessWidget {
  final String? upiID;
  const GPayScreen({Key? key, this.upiID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
    height: context.blockSizeVertical*6,
    decoration: BoxDecoration(border: Border.all(width: 0.2,color: Colors.black),
        gradient: LinearGradient(begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffF3F3F3),
            Color(0xffFFFFFF),
            Color(0xffD2D2D2)], ),
    borderRadius: BorderRadius.circular(5)),
    child: Row(
      children: [
        SizedBox(width: context.blockSizeHorizontal*1.5,),
         Container(
           decoration: BoxDecoration(color: Colors.white,
               borderRadius: BorderRadius.circular(50),
               border: Border.all(width: 0.1,color: Colors.black)),
          padding: EdgeInsets.all(5),
          child: Image(image: AssetImage("asset_images/googlepay.png"),width: 10,height: 10,),),
        SizedBox(width: context.blockSizeHorizontal*1.5,),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(width: 0.2,color: Colors.black),
              borderRadius: BorderRadius.circular(5)),child: Text(upiID??""),),
        // Container(
        //   padding: EdgeInsets.all(10), decoration: BoxDecoration(border: Border.all(width: 0.2,color: Colors.black),
        //     borderRadius: BorderRadius.circular(5)),
        //   child: Text("+91 9846021883"),),
        SizedBox(width: context.blockSizeHorizontal*1.5,),
        Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6F91CB)),),
        SizedBox(width: context.blockSizeHorizontal*1.5,),
      ],
    ),);

  }
}


class CheckedBoxs extends StatefulWidget {
  final bool? valueChanger;
  final Color color;
  final double hght;
  final Function(bool?) onSelection;
  CheckedBoxs({required this.onSelection,this.valueChanger=false,this.color=Colors.transparent,this.hght=50});

  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBoxs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      // height: widget.hght,
      child: Checkbox(
        side: BorderSide(
            width: 1,
            color:  Color(0xff3E4F5B).withOpacity(.5)




        ),


        activeColor: Color(0xffD7D4D4),
        value: widget.valueChanger,
        onChanged: widget.onSelection,
      ),
    );
  }
}
