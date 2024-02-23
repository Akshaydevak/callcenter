import 'dart:convert';
import 'dart:typed_data';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../color_palette/color_palette.dart';
import '../../../../custom_table/custominputdecoration.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import '../Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'commonutils.dart';


class ProfileContainer extends StatefulWidget {
  final Function ontap;

   ProfileContainer({Key? key, required this.ontap}) : super(key: key);

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  String fullName = "";
  String firstLetter = "";
  List<String> ak=[];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

      fullName = pref.getString("username")??"";

    var list=fullName.split("");
    if(list.isNotEmpty){
      firstLetter=list[0]+list[1];
      firstLetter=firstLetter.toUpperCase();
    }
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: context.blockSizeVertical*.3),
          // height: context.blockSizeVertical * 5,
          width: context.blockSizeHorizontal * 9.8,
          decoration: BoxDecoration(
              border: Border.all(
                  width: context.blockSizeHorizontal * 0.02,
                  color: Colors.white),
              borderRadius:
                  BorderRadius.circular(context.blockSizeHorizontal * 10),
              color: Colors.white),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Container(
              //   // color: Colors.red,
              //
              //     width:200 ,
              //     alignment: Alignment.topRight,
              //     // margin: EdgeInsets.only(
              //     //   top: height * .035,
              //     // ),
              //     child: Text(
              //       "Akshay",
              //       style: TextStyle(
              //           color: Colors.white,
              //             fontSize: context.blockSizeHorizontal * 1,
              //           fontWeight: FontWeight.w400),
              //     )),
              SizedBox(
                width: context.blockSizeHorizontal * 4.5,
                child:
                // TypeAheadFormField(
                //     textFieldConfiguration: TextFieldConfiguration(
                //       controller: TextEditingController(text:fullName)
                //
                //     ),
                //   onSuggestionSelected: (suggestion) {  }, itemBuilder: (BuildContext context, Object? itemData) {
                //     return ListTile(
                //       title: Text("Akshay"),
                //
                //     );
                //
                // }, suggestionsCallback: (String pattern) {
                //     return  ak;
                // },)
                Text(

                  fullName,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: context.blockSizeHorizontal * 1,overflow: TextOverflow.ellipsis,),
                ),

              ),
              SizedBox(width: context.blockSizeHorizontal*.5,),
              CircleAvatar(

                radius: context.blockSizeHorizontal * 1,
                child: Text(firstLetter,style: TextStyle(fontWeight: FontWeight.bold,fontSize:context.blockSizeHorizontal*1 ),),
              ),
        GestureDetector(onTap: (){
          widget.ontap();
          // showDailogPopUp(
          //     context,
          //     InventoryPopup()
          //
          // );

        }, child: Icon(Icons.arrow_drop_down,size:context.blockSizeHorizontal*1.5,))


            ],
          ),
        ),
      ],
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////
class TextButtonLarge extends StatelessWidget {
  final String images;
  final String text;
  final VoidCallback? onTap;
  const TextButtonLarge({Key? key, required this.images, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: context.blockSizeHorizontal * 8.2,
      height: context.blockSizeVertical * 5,
      color: Colors.white,
      child: TextButton(
          onPressed:onTap,
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xff687892)))),
              backgroundColor: MaterialStateProperty.all(Color(0xff687892))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(images),
                height: context.blockSizeVertical * 1.2,
                width: context.blockSizeHorizontal*1,
              ),
              SizedBox(
                width: context.blockSizeHorizontal * 0.5,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: context.blockSizeHorizontal * 0.9),
              ),
            ],
          )),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////
class ImageButtonSmall extends StatelessWidget {
  final String images;
  const ImageButtonSmall({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.blockSizeHorizontal * 2.5,
      height: context.blockSizeVertical * 5,
      child: TextButton(
          onPressed: () {},
          child: Image(
            image: AssetImage(images), height: context.blockSizeHorizontal * 1,
            color: Color(0xff66687B),
            // width: context.blockSizeHorizontal*2,
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xffF4F4F4)))),
              backgroundColor: MaterialStateProperty.all(Colors.white))),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
class TextButtonLarge2 extends StatelessWidget {
  final String images;
  final String text;
  final VoidCallback? onTap;
  const TextButtonLarge2({Key? key, required this.images, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: context.blockSizeHorizontal * 8.2,
      height: context.blockSizeVertical * 5,
      child: TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(images),
                height: context.blockSizeVertical * 1.5,
                // width: context.blockSizeHorizontal*1.5,
                color: Color(0xff66687B),
              ),
              SizedBox(
                width: context.blockSizeHorizontal * 0.5,
              ),
              Text(
                text,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    color: Color(0xff66687B),
                    fontSize: context.blockSizeHorizontal * 0.9),
              ),
            ],
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xffF4F4F4)))),
              backgroundColor: MaterialStateProperty.all(Colors.white))),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////
class TextOnlyButton extends StatelessWidget {
  final String text;
  final int color1;
  final int color2;
  final VoidCallback? onTap;
  const TextOnlyButton(
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
      width: context.blockSizeHorizontal * 8,
      child: TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.roboto(color: Color(color2),fontSize: context.blockSizeHorizontal*0.9),
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
///////////////////////////////////////////////////////////////////////////////////
class NormalTextField extends StatelessWidget {
  final String text;
  final bool readOnlyField;
  final TextEditingController controller;
  final String value;
  const NormalTextField(
      {Key? key,
      required this.text,
      required this.controller,
      required this.readOnlyField,
         this.value=""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500,)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          decoration: BoxDecoration(
            color: readOnlyField==true?Color(0xffE3E3E3).withOpacity(0.2):Colors.white,),
          // height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 22,
          child: TextField(
            readOnly: readOnlyField,
            controller: controller,
            decoration: InputDecoration(labelText: value,
              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              ),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
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
///////////////////////////////////////////////////////////////////////////////
class NormalTextFieldTab extends StatelessWidget {
  final String text;
  final bool readOnlyField;
  final TextEditingController controller;
  final String value;
  const NormalTextFieldTab({Key? key, required this.text, required this.readOnlyField, required this.controller, this.value=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          decoration: BoxDecoration(
            color: readOnlyField==true?Color(0xffE3E3E3).withOpacity(0.2):Colors.white,),
          width: context.blockSizeHorizontal * 30,
          child: TextField(
            readOnly: readOnlyField,
            controller: controller,
            decoration: InputDecoration(labelText: value,
              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
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
//////////////////////////////////////////////////////////////
class DateForTextFieldTab extends StatefulWidget {
  final String text;
  // final bool readOnlyField;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final DateTime? initialValue;
  final bool required;
  final bool row;
  final bool enable;

  final FormFieldSetter<DateTime>? onSaved;
  final DateFormat? format;

  const DateForTextFieldTab({
    Key? key,
    required this.text,
    // required this.readOnlyField,
    required this.controller,
    this.onTap,
    this.initialValue,
    this.required = false,
    this.row = false,
    this.onSaved,
    this.format,
    this.enable = true,
  }) : super(key: key);

  @override
  State<DateForTextFieldTab> createState() => _DateForTextFieldTabState();
}

class _DateForTextFieldTabState extends State<DateForTextFieldTab> {
  @override
  Widget build(BuildContext context) {
    final mFormat = widget.format ?? DateFormat.yMd();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 30,
          child: DateTimeField(
            // initialValue: widget.initialValue,
            controller: widget.controller,
            enabled: widget.enable,
            validator: (value) => value == null ? "* required" : null,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_today_outlined),
              contentPadding: null,
              labelStyle: TextStyle(color: Colors.black),
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              border: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
            ),
            format: mFormat,
            style: GoogleFonts.roboto(fontSize: 12), onChanged: widget.onSaved,
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
          ),
        )
      ],
    );
  }
}


////////////////////////////////////////////////////////////////////////////////
class LargeTextField extends StatelessWidget {
  final String text;
  final bool readOnlyField;
  final TextEditingController controller;

  const LargeTextField({
    Key? key,
    required this.text,
    required this.controller,
    required this.readOnlyField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 11.5,
          width: context.blockSizeHorizontal * 22,
          child: TextField(
            maxLines: 10,
            controller: controller,
            readOnly: readOnlyField,
            decoration: InputDecoration(
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
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
//////////////////////////////////
class LargeTextFieldTab extends StatelessWidget {
  final String text;
  final bool readOnlyField;
  final TextEditingController controller;
  const LargeTextFieldTab({Key? key, required this.text, required this.readOnlyField, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 12,
          width: context.blockSizeHorizontal * 30,
          child: TextField(
            maxLines: 10,
            controller: controller,
            readOnly: readOnlyField,
            decoration: InputDecoration(
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
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
///////////////////////////////////////////////////////////////////////////////

class NormalField extends StatelessWidget {
  final String text;
  final bool readOnlyField;
  final String values;
  const NormalField(
      {Key? key,
        required this.text,
        required this.values,
        required this.readOnlyField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 20,
          child: TextField(
            // obscuringCharacter: values.toString(),

            readOnly: readOnlyField,

            decoration: InputDecoration(
              hintText: values,
              // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3E4F5B),width: context.blockSizeVertical*2)),
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
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

///////////////////////////////////////////////////////////////////////////
class EmailTextFields extends StatefulWidget {
  final String? text;
  final bool isText;
  final TextEditingController controller;
  final bool obText;
  final FormFieldValidator? validator;
  const EmailTextFields({Key? key, this.isText=true, this.text, required this.controller, this.obText=false, this.validator}) : super(key: key);

  @override
  State<EmailTextFields> createState() => _EmailTextFieldsState();
}

class _EmailTextFieldsState extends State<EmailTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       if(widget.isText)...[
         Text(widget.text??"",
             style: GoogleFonts.roboto(
                 fontWeight: FontWeight.w400,
                 fontSize: context.blockSizeHorizontal * 1,
                 color: Colors.black)),
         SizedBox(
           height: context.blockSizeVertical * 1,
         ),
       ],
        Container(
          // height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 23,
          // decoration: BoxDecoration(
          //     border: Border.all(
          //         width: context.blockSizeHorizontal * 0.02,
          //         color: Colors.grey),
          //     borderRadius: BorderRadius.all(Radius.circular(6))),
          child: TextFormField(
              controller: widget.controller,
              validator: widget.validator,
              obscureText: widget.obText,
            decoration:  InputDecoration(

              border: OutlineInputBorder(
                borderSide: BorderSide(
              width: 0.4, color: Colors.grey.withOpacity(0.4)),),
              enabledBorder: OutlineInputBorder( borderSide: BorderSide(
               color: Colors.grey.withOpacity(0.5),width: 0.5),
            ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color(0xff687892)),
                )
            ),),
        ),
      ],
    );
  }
}
//////////////////////////////////////////////////////////////////
class SmallTextFields extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  const SmallTextFields({Key? key, required this.text, required this.controller}) : super(key: key);

  @override
  State<SmallTextFields> createState() => _SmallTextFieldsState();
}

class _SmallTextFieldsState extends State<SmallTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: context.blockSizeHorizontal * 1,
                color: Color(0xff666666))),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 5.5,
          width: context.blockSizeHorizontal * 9,
          decoration: BoxDecoration(
              border: Border.all(
                  width: context.blockSizeHorizontal * 0.01,
                  color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextField(controller: widget.controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ))),
        ),
      ],
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////
class CheckedBoxTable extends StatefulWidget {
  final bool? valueChanger;
  final Color color;
  final Function(bool?) onSelection;
  CheckedBoxTable(
      {required this.onSelection,
      this.valueChanger = false,
      this.color = Colors.white});

  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBoxTable> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xff3E4F5B),
      value: widget.valueChanger,
      onChanged: widget.onSelection,
    );
  }
}

///////////////////////////////////////////////////////////////////////////

class DateForTextField extends StatefulWidget {
  final String text;
  // final bool readOnlyField;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final DateTime? initialValue;
  final bool required;
  final bool row;
  final bool enable;
  final bool read;

  final FormFieldSetter<DateTime>? onSaved;
  final DateFormat? format;

  const DateForTextField({
    Key? key,
     this.text="",
    // required this.readOnlyField,
     this.controller,
    this.onTap,
    this.initialValue,
    this.required = false,
    this.row = false,
    this.onSaved,
    this.format,
    this.enable = true, required this.read,
  }) : super(key: key);

  @override
  State<DateForTextField> createState() => _DateForTextFieldState();
}

class _DateForTextFieldState extends State<DateForTextField> {
  @override
  Widget build(BuildContext context) {
    final mFormat = widget.format ?? DateFormat.yMd();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 22,
          child: DateTimeField(readOnly: widget.read,
            // initialValue: widget.initialValue,
            controller: widget.controller,
            enabled: widget.enable,
            validator: (value) => value == null ? "* required" : null,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_today_outlined),
              contentPadding: null,
              labelStyle: TextStyle(color: Colors.black),
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
            ),
            format: mFormat,
            style: TextStyle(fontSize: 12), onChanged: widget.onSaved,
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
          ),
        )
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////////////
class PopUpHeader extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  const PopUpHeader({
    Key? key,
    required this.label,
    this.onEdit,
    this.widthPopup = 50,
    this.dataField,
    this.onAddNew,
    required this.onApply,
    this.isDirectCreate = false,
  }) : super(key: key);

  @override
  _PopUpHeaderState createState() => _PopUpHeaderState();
}

class _PopUpHeaderState extends State<PopUpHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:100,

      padding: EdgeInsets.all(10),
      width: 600,
      child: GeneralSavePage(
        onEdit: widget.onEdit,
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
                Transform.scale(
                  scale: 0.8,
                  child: _toggleButtonList(widget.onAddNew ?? (v) {}),
                ),
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
//////////////////////////////////////////////////////////////////////////////////
class PopUpHeaderCall extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  const PopUpHeaderCall({
    Key? key,
    required this.label,
    this.onEdit,
    this.widthPopup = 50,
    this.dataField,
    this.onAddNew,
    required this.onApply,
    this.isDirectCreate = false,
  }) : super(key: key);

  @override
  _PopUpHeaderCallState createState() => _PopUpHeaderCallState();
}

class _PopUpHeaderCallState extends State<PopUpHeaderCall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:100,

      padding: EdgeInsets.all(10),
      width: 600,
      child: GeneralSavePage(
        onEdit: widget.onEdit,
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
  final bool onCreate;
  final bool onPopUp;
  final Widget child;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  const GeneralSavePage(
      {Key? key,
      required this.child,
      required this.onApply,
      this.onCancel,
      this.onCreate = false,
      this.onPopUp = false,
      this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("wwww"+onCreate.toString());
    return Container(
      height: MediaQuery.of(context).size.height * 58,
      width: 100,
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 58,
              margin: EdgeInsets.only(
                  bottom: onCreate
                      ? 40
                      : onEdit != null
                          ? 40
                          : 20),
              child: child),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    if (onCreate) save(context),
                    if (onEdit != null && !onCreate) edit()
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget edit() {
    return SizedBox(
      height: 30,
      child: CommonButtonCustom(
          onPressed: onEdit,
          child: Row(
            children: [
              Icon(Icons.edit),
              SizedBox(width: 3),
              Text(
                "Save changes",
              )
            ],
          )),
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

//////////////////////////////////////////////////////////////////////////////

class ButtonsCommon extends StatefulWidget {
  final String text;
  final int color1;
  final int color2;
  final VoidCallback? onTap;
  final bool isLoading;
  const ButtonsCommon({Key? key, required this.text,
    this.onTap,
    this.isLoading=false,
    required this.color1,
    required this.color2}) : super(key: key);

  @override
  State<ButtonsCommon> createState() => _ButtonsCommonState();
}

class _ButtonsCommonState extends State<ButtonsCommon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical * 6,
      width: context.blockSizeHorizontal * 23,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff687892), Color(0xff8498B8)],
          ),borderRadius: BorderRadius.circular(5)),

      child: TextButton(
        onPressed: widget.onTap,
        child:widget. isLoading?SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(

              color: Colors.white,
            )):Text(widget.text,style: GoogleFonts.roboto(color: Color(widget.color1),)),),
    );
  }
}
///////////////////////////////////////////////////////////////////

class LeftMenuContainer extends StatefulWidget {
  String menuIcon;
  final bool ? selected;
  final VoidCallback ? ontap;
  final bool svg;
  final String label;
  final double height;
  final double width;
  LeftMenuContainer({Key? key,required this.menuIcon, this.selected=false, this.ontap, this.svg=false,
     this.height=10,  this.width=10, required this.label}) : super(key: key);

  @override
  State<LeftMenuContainer> createState() => _LeftMenuContainerState();
}

class _LeftMenuContainerState extends State<LeftMenuContainer> {
  bool isHover=false;
  double? iconHeight;
  double? iconwidth;
  void onHover(){


  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.ontap,
      child: Tooltip(
        message: widget.label,
        margin: EdgeInsets.only(left: 30),

        child: MouseRegion(
          onEnter: (event) {
            isHover = true;
            setState(() {});
          },
          onExit: (event) {
            isHover = false;
            setState(() {});
          },
          child: Container(
            height:context.blockSizeVertical*7,
            width: context.blockSizeHorizontal*4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:widget.selected==true? Color(0xff687892):isHover?Colors.grey.withOpacity(.3):Colors.transparent,
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: widget.width,
                    height: widget.height,
                    child: SvgPicture.string(widget.menuIcon,
                      width: widget.width,
                      height: widget.height,
                      fit: BoxFit.fill,

                      color:widget.selected==true?Colors.white:Color(0xff7f8da1),
                    )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class EmptyDataDisplay extends StatelessWidget {
  final String? imaeName;
  const EmptyDataDisplay({Key? key,this.imaeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Container(


      // width: 70,
      child:  Center(
        child: SvgPicture.string(imaeName!=null?imaeName!:LeftMenuSvg().emptyData,fit: BoxFit.fitHeight,height: context.blockSizeVertical*20,

        ),
      ),
    );
  }
}class EmptyDataTableDisplay extends StatelessWidget {
  final String? imaeName;
  const EmptyDataTableDisplay({Key? key,this.imaeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Container(


      // width: 70,
      child:  Center(
        child: Lottie.asset('asset_images/loadingAnimation.json',)));
        // SvgPicture.string(imaeName!=null?imaeName!:LeftMenuSvg().emptyData,fit: BoxFit.fitHeight,height: context.blockSizeVertical*20,



  }
}



class ProfileIcon extends StatefulWidget {
  String menuIcon;
  final bool ? selected;
  final VoidCallback ? ontap;
  final bool svg;
  final double height;
  final double width;
  final Color clr;
  final Color iconColor;
  ProfileIcon({Key? key,required this.menuIcon, this.selected=false, this.ontap, this.svg=false,
    this.height=11,  this.width=11, required this.clr,this.iconColor=Colors.grey}) : super(key: key);

  @override
  State<ProfileIcon> createState() => _ProfileIconState();
}

class _ProfileIconState extends State<ProfileIcon> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child: InkWell(
        onTap:widget.ontap,
        child: Container(
          height:context.blockSizeVertical*2.5,
          width: context.blockSizeHorizontal*1.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color:widget.clr,
          ),
          alignment: Alignment.center,
          child: Container(
              width: widget.width,
              height: widget.height,
              child: SvgPicture.string(widget.menuIcon,
                color:widget.iconColor,
              )),
        ),
      ),
    );
  }
}
class SocialMediaIcon extends StatefulWidget {
  String menuIcon;
 final  String menuHoverIcon;
 final  String label;
  final bool ? selected;
  final VoidCallback ? ontap;
  final bool svg;
  final double height;
  final double width;
  final Color clr;
  final Color iconColor;
  SocialMediaIcon({Key? key,required this.menuIcon, this.selected=false, this.ontap, this.svg=false,
    this.height=11,  this.width=11, required this.clr,this.iconColor=Colors.grey, required this.menuHoverIcon, required this.label}) : super(key: key);

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child: Tooltip(
        message: widget.label,
        child: InkWell(
          onTap:widget.ontap,
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal:isHover?0: context.blockSizeHorizontal * .1,),
            height: isHover?context.blockSizeHorizontal*2.4:context.blockSizeHorizontal*2.2,
            width: isHover?context.blockSizeHorizontal*2.4:context.blockSizeHorizontal*2.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
              // color:widget.clr,
              // border: Border.all(
              //   color: isHover?Colors.grey:Colors.grey.withOpacity(.4)
              // )
            ),
            alignment: Alignment.center,
            child: Container(

                child: SvgPicture.string(isHover?widget.menuHoverIcon:widget.menuIcon,
                  height: isHover?context.blockSizeHorizontal*2.4:context.blockSizeHorizontal*2.2,
                  width: isHover?context.blockSizeHorizontal*2.4:context.blockSizeHorizontal*2.2,
                  // color:widget.iconColor,
                )),
          ),
        ),
      ),
    );
  }
}
//0xff7f8da1
//////////////////////////////////////////////////////////
class TopTextContainer extends StatefulWidget {
  String text;
  final bool ? selected;
  final VoidCallback ? ontap;
  TopTextContainer({Key? key,required this.text, this.selected=false, this.ontap,}) : super(key: key);

  @override
  State<TopTextContainer> createState() => _TopTextContainerState();
}

class _TopTextContainerState extends State<TopTextContainer> {
  Uint8List _uintListt=Base64Decoder().convert("iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAIAAABM5OhcAAAIR0lEQVR4nO3ba0hTfRwH8JM6L2ym0UXNUrIrtVLUTMuuXntTohWFlUy7SFmYaSkYSEheRvNFrgzJJfkmCsqISi2MiuhiWmktM3QVhmZgdrE5L3tenOc5DMs9x7Pzaxnfz6vf3P9mfDvn7P+f44xGIwMgNhtrLwD+TggWkECwgASCBSQQLCCBYAEJBAtIIFhAAsECEggWkECwgASCBSQQLCCBYAEJBAtIIFhAAsECEggWkECwgASCBSQQLCCBYAEJBAtIIFhAAsECEggWkECwgASCBSQQLCCBYAEJBAtIIFhAAsECEggWkECwgASCBSQQLCAhTrACAwPH/Yd/L51Ox/XasGHDaCf9/PnzOItt3brVdMzo6Ghh4yQnJ5uOI5PJuLdqamp4/kZ6vZ7rtWPHDjMtu7u7i4qKwsPDp02b5uDg4OLiEhAQcPDgwaamptH+MxLBFYvczp07v337JuKAp0+fnjlzZlpa2q1bt9rb2w0Gw5cvX+rr61Uq1aJFi7Zt29bd3S3idMIgWOTevn176NAhsUbbv39/cnLySNExGo0VFRX+/v6tra1izSiMnXWnt4RMJqutrR3p3fz8/KqqKrYuLy/38vL6ZTM3N7eRRrh8+bKLiwvPxUydOtXMuyUlJZs2bVq1ahXP0UaiUqlOnDjBvYyKikpLSwsKCpJIJI2NjSdPnjx37hzDMDqdLjw8vL6+3tXV1cIZhTOKISAgQMCAbW1tXK+4uDhRVsJJSEjgBtdqtTx7RUVFcb26uroEzy6VSof9O/v4+Hz//t18rx8/fnDtk5KShr2r0+kkEgnXoLCw8OcRKioqbGz+vQspFArB67ccboW/SWtra1ZWliUjFBQU9Pf3s3VKSkpGRsbPbeLj47lZysvLX716ZcmMlkCwaC1YsMDBwYGti4uL7927J3ioS5cusYWLi8uxY8dGapaZmcnewYeGhjQajeDpLIRg0Zo1a1ZOTg5bDw0NJSYmmt7v+Gtpaeno6GDruLg4Z2fnkVrKZLKwsDC2vnLlioC5RPHnBqukpITd0QkNDWUYRqfTKRQKd3d3qVQql8v37dvX2Nho7TXykpGRERgYyNYtLS1HjhwRMMj79++5Ojg42HzjhQsXskVzc3NPT4+A6Sz35wbLlFarDQoKOnv2bGdnZ29v74sXL4qLiwsKCqy9Ll5sbW01Go29vT37sqio6MGDB6MdxHR/YcqUKeYbcx8GjUajVqsd7VyiGAPB6u3tjYmJ6erqGvbz1NRUayxHCLlcnp2dzdbsDbGvr29UI5h+zOQe4Ufy9etXrm5vbx/VRGIZA8FqaGh4/fq1k5OTSqX68OFDd3d3dXX14cOHufvLmJCVleXn58fWWq2We/DiyXS/raWlxXzj5uZmrv75P+TvIX6w+J+vzZgxg/+wFRUVBw4c8PDwcHV1jYiIyM/PF33lw0yePJnPb8Fdisyzs7PTaDR2dv/uSCuVyrq6Ov6Lkcvl3EWrsrLSTEuDwXDz5k3upbDPCpYbA1cshmH8/f1jY2OtvQpL+fn5cZtMg4ODCoXCYDDw7CuRSCIiItj64cOH3NbDz06dOtXZ2cm91Ov1QtdrkbERrOjoaGsvQRzZ2dlyuZytm5qacnNz+fc13RFVKBS/3BKrrq7OzMw0/Ymtra2glVpK/LNCM+d3w3R0dGzZsoVPyyVLlliwIoF4nhV6e3vzH9Pe3l6j0QQHBw8ODjIMk5eXFxsbyz17mbd06dLExMSysjKGYXp6etasWbNr166EhIT58+czDPPy5UuNRlNaWjowMBAQEPDkyRO2l6OjI//liUj8YPE/atXpdDxbenp6CluMJZYtWzZp0iTRhw0MDMzIyGCfEQcGBhQKxePHj7lnL/PUanVra+vt27cZhunv71er1Wq1elgbLy+vCxcu+Pj4sC9/PrX8PcbGrXDChAnWXoKYcnJy5s2bx9ZPnz7Ny8vj2dHR0bGqqmrPnj3cSfMw69atq6+vN71Kubu7W7haYcZGsLjdxb+Dg4NDWVkZF47c3Fz+3/y0t7dXq9XPnj1LTU2Vy+Xjx4+XSCTe3t7x8fE1NTWVlZUTJ0403aY3/30eOmP4+1hjWkhISGpqqkqlYhjGYDAoFIpRbcfL5fKioqKR3uUesGxsbLhL4282Nq5Yf6Xc3NzZs2ezdV1dnVKpFGvku3fvssXcuXOdnJzEGnZUECyrcXJyOnPmzLj//vwkJydHlHO9vr6+q1evsnVkZKTlAwqDYFnT8uXLU1JS2Lqvry8pKclM4/T0dF9fXw8PD/N7xeXl5dxZoRV3lREsK8vLy+OOthoaGsy0NBqNz58/7+jouH79+sePH3/Z5tOnT0ePHmVrX1/fFStWiLta/hAsK5NKpaY3RDM2b97MFnq9fu/evUNDQ8MadHV1rV+/nvs6g4gPbQIgWNa3evXq3bt3/2+zxYsXr127lq0vXrwYEhJSWVnZ3t6u1+vfvHlz/PhxX1/f+/fvsw2Sk5O5s0WrwHbDH6GwsPDatWvv3r0z36y0tDQ0NJQ9sXj06FFMTMwvm23cuNH0r8SsAlesP4Kzs3Npaen/NvP09Lxz587KlStHaiCVSpVK5fnz53meEdFBsP4UkZGR5j8VsqZPn15bW3vjxo3t27fPmTNHJpNJJBI3N7ewsDClUtnW1paens7niY3aOKPRaO01wF8IVywggWABCQQLSCBYQALBAhIIFpBAsIAEggUkECwggWABCQQLSCBYQALBAhIIFpBAsIAEggUkECwggWABCQQLSCBYQALBAhIIFpBAsIAEggUkECwggWABCQQLSCBYQALBAhIIFpBAsIAEggUk/gFtbknT0BmG+wAAAABJRU5ErkJggg==");
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height:context.blockSizeVertical*5,
        width: context.blockSizeHorizontal*6,
        decoration: BoxDecoration(
          borderRadius: widget.selected==true?BorderRadius.circular(5):BorderRadius.zero,
          color:widget.selected==true? Color(0xff687892):Color(0xffE5E8EC),
        ),
        alignment: Alignment.center,
        child: Container(

            child: Text(widget.text,style: TextStyle(color: widget.selected==true?Colors.white:Color(0xff7F8DA1)),),
            )),

    );
  }
}
////////////////////////////////////////////////////////////
class PasswordTextField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final bool password;
  final FormFieldValidator? validator;
  const PasswordTextField(
      {Key? key, required this.text,required this.controller,  this.password=false, this.validator})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool show = false;

  void initState() {
    super.initState();
    show = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: context.blockSizeHorizontal * 1,
                color: Colors.black)),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        SizedBox(
          // height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 23,
          // color: Colors.white,
          // decoration: BoxDecoration(
          //     border: Border.all(
          //         width: context.blockSizeHorizontal * 0.02,
          //         color: Colors.grey),
          //     borderRadius: BorderRadius.all(Radius.circular(6))),
          // color: Colors.grey.shade200,
          child: Container(
            // padding: const EdgeInsets.only(left: 1, bottom: 12),
            child: TextFormField(
              validator: widget.validator,
              controller: widget.controller,
              obscureText: show,
              decoration: InputDecoration(
                  suffixIcon: widget.password
                      ? Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: IconButton(
                    icon: show
                          ? Icon(
                        Icons.visibility,
                        size: 18,
                    )
                          : Icon(
                        Icons.visibility_off_outlined,
                        size: 18,
                    ),
                    onPressed: () {
                        show = !show;
                        setState(() {});
                    },
                  ),
                      )
                      : null,
                  labelStyle: TextStyle(
                      fontSize: 13,
                      color: Palette.DARK),
                  hintStyle:
                  const TextStyle(fontSize: 13, color: Colors.black12),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.4, color: Colors.grey.withOpacity(0.4)),),
                  enabledBorder: OutlineInputBorder( borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.5),width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color(0xff687892)),
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
}

class captchaField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final Uint8List uintListt;
  final bool password;
  final Function onRefreshTap;
  final FormFieldValidator? validator;
  final bool isSuffixIcon;
  final bool isCAptchFailed;
  const captchaField(
      {Key? key, required this.text,required this.controller,this.isCAptchFailed=false,this.isSuffixIcon=false,  this.password=false, this.validator, required this.uintListt, required this.onRefreshTap})
      : super(key: key);

  @override
  State<captchaField> createState() => _captchaField();
}

class _captchaField extends State<captchaField> {
  // Uint8List _uintListt=Base64Decoder().convert("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");

  bool show = false;

  void initState() {
    super.initState();
    show = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    print("widget.capchalist${widget.uintListt}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(widget.text,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: context.blockSizeHorizontal * 1,
                  color: Colors.black)),
        ),
        SizedBox(
          height: context.blockSizeVertical * 1,
        ),
        Container(
          margin: EdgeInsets.only(left: context.blockSizeHorizontal*2.5),
          height: context.blockSizeVertical*8.5,
          width: context.blockSizeHorizontal * 23,

          child: DottedBorder(
            strokeWidth: .6,
            color: Color(0xff3E4F5B).withOpacity(.2),
            child:widget.uintListt.isEmpty?Text("") :Image.memory(
    // height: 40,
    // width: 89,

    widget.uintListt,
    // width: 200,
    fit: BoxFit.fitWidth,
            )
          ),
        ),
        SizedBox(height: context.blockSizeVertical*.6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              // height: context.blockSizeVertical * 6,
              width: context.blockSizeHorizontal * 23,
              // color: Colors.white,
              // decoration: BoxDecoration(
              //     border: Border.all(
              //         width: context.blockSizeHorizontal * 0.02,
              //         color: Colors.grey),
              //     borderRadius: BorderRadius.all(Radius.circular(6))),
              // color: Colors.grey.shade200,
              child: Container(
                // height: context.blockSizeVertical*4.2,

                child: TextFormField(
                  validator: widget.validator,
                  controller: widget.controller,
                  obscureText: show,


                  decoration: InputDecoration(
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 55,
                        minHeight: 55,
                      ),

                    suffixIcon:
                  widget.  isSuffixIcon==true?Container(
                    margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1),
                    height:context.blockSizeHorizontal*1,
                    width: context.blockSizeHorizontal*1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Icon(Icons.done,color: Colors.white,size:context.blockSizeHorizontal*1,),
                  ):IconButton(
                      onPressed: (){
                        widget.onRefreshTap();
                        
                      }, icon: Icon(Icons.refresh,color: Color(0xff6F91CB).withOpacity(.7),),
                    ),

                    hintText: "Enter Captcha...",
                      contentPadding:EdgeInsets.symmetric(
                        horizontal:context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*1 ),

                      labelStyle: TextStyle(
                          fontSize: 13,
                          color: Palette.DARK),
                      hintStyle:
                       TextStyle(fontSize: context.blockSizeHorizontal*.86, color: Colors.black.withOpacity(.2),fontWeight: FontWeight.bold,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.4, color: widget.isCAptchFailed?Colors.red: Colors.grey.withOpacity(0.4)),),
                      enabledBorder: OutlineInputBorder( borderSide: BorderSide(
                          color: widget.isCAptchFailed?Colors.red: Colors.grey.withOpacity(0.5),width: 0.5),
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: widget.isCAptchFailed?Colors.red: Color(0xff687892)),
                      )
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}





class NegotiationButton extends StatefulWidget {


  final  String? label;
  final Function onTap;
  NegotiationButton({Key? key,required this.onTap,  this.label}) : super(key: key);

  @override
  State<NegotiationButton> createState() => _NegotiationButtonState();
}

class _NegotiationButtonState extends State<NegotiationButton> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child:
      Tooltip(
        message: widget.label,
        child: InkWell(
          onTap:(){
            widget.onTap();
          },
          child: Container(
          height: context.blockSizeVertical*7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isHover?Color(0xff6F91CB):Color(0xffFFFFFF),
              border: Border.all(color:isHover? Colors.transparent:Color(0xff6F91CB))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                    child: SvgPicture.string(isHover? LeftMenuSvgs().whiteBagIcon:LeftMenuSvgs().blueBagIcon,
                      height:context.blockSizeHorizontal*1.3,
                      width: context.blockSizeHorizontal*1.3,
                      // color:widget.iconColor,
                    )),
                SizedBox(width: context.blockSizeHorizontal*.35,),
                Text("Get best price",style: TextStyle(color:isHover?Colors.white:Color(0xff6F91CB),fontSize:context.blockSizeHorizontal*1.1  ),)



              ],
            ),
          ),
        ),
      ),
    );
  }
}
class SocialMediaIconTextFornField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String socialMediaIcon;
  final bool formatter;
  final bool integerOnly;
  const SocialMediaIconTextFornField({Key? key,this.integerOnly=false,
    this.formatter=false, required this.controller, required this.hintText, required this.socialMediaIcon}) : super(key: key);

  @override
  State<SocialMediaIconTextFornField> createState() => _SocialMediaIconTextFornFieldState();
}

class _SocialMediaIconTextFornFieldState extends State<SocialMediaIconTextFornField> {
  @override
  Widget build(BuildContext context) {
    return       Row(
      children: [
        Container(
            height: context.blockSizeHorizontal*2.4,
            width: context.blockSizeHorizontal*2.4,
            child: SvgPicture.string(widget.socialMediaIcon,
                height: context.blockSizeHorizontal*2.4,
                width: context.blockSizeHorizontal*2.4
              // color:widget.iconColor,
            )),
        SizedBox(width:2,),
        Container(
          height: context.blockSizeVertical * 6,
          width: context.blockSizeHorizontal * 23,

          // decoration: BoxDecoration(
          //     border: Border.all(
          //         width: context.blockSizeHorizontal * 0.02,
          //         color: Colors.grey),
          //     borderRadius: BorderRadius.all(Radius.circular(6))),
          child: TextFormField(
            keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
            inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
            controller: widget.controller,
            onChanged: (sa){
              setState(() {

              });

            },
            // validator: widget.validator,
            // obscureText: widget.obText,
            decoration:  InputDecoration(
              hintText: widget.hintText,
                suffixIcon:widget.controller.text.isNotEmpty?Container(
                  height: 20,
                    width: 20,
                    child: Icon(Icons.check,color: Color(0xff1C1B1F).withOpacity(.5),)):Container(),

                hintStyle: TextStyle(color: Colors.grey.withOpacity(.8),fontSize: 12),


                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.4, color: Colors.grey.withOpacity(0.4)),),
                enabledBorder: OutlineInputBorder( borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color(0xff687892)),
                )
            ),),
        ),

      ],
    );
  }
}
