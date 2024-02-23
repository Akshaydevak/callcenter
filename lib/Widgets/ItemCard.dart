import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../color_palette/color_palette.dart';


class ItemCard<T> extends StatefulWidget {
  final String id;
  final String time;
  final String name;
  final T item;
  final VoidCallback onClick;
  final VoidCallback? onDelete;
  final bool isSelected;
  const ItemCard(
      {Key? key,
        required this.isSelected,
        required this.onClick,
        required this.item,
        required this.id,
        this.onDelete,
        required this.name,
        this.time = ""})
      : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isHover = false;
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
        onTap: widget.onClick,
        child: Container(
          // height: context.blockSizeHorizontal * 4.5,
          decoration: BoxDecoration(
            // color: Colors.red,
              color: widget.isSelected
                  ? Palette.searchInputColor
                  : isHover
                  ? Palette.searchInputColor
                  : null,
              border: widget.isSelected
                  ? Border(
                  left: BorderSide(
                      color: Palette.Grey.withOpacity(.4), width: 2))
                  : null),
          child: Container(
            // color: Colors.green,
            // alignment: Alignment.topCenter,
            // padding: EdgeInsets.only(bottom: 29),
            // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            child: ListTile(
              minVerticalPadding: 10,

              // contentPadding: EdgeInsets.zero,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.id,
                    style: GoogleFonts.roboto(
                        fontSize: context.blockSizeHorizontal * 0.85,
                        fontWeight: FontWeight.w600,
                        color: Palette.Grey),
                  ),
                  Text(
                    widget.time,
                    style: GoogleFonts.roboto(
                        fontSize: context.blockSizeHorizontal * 1.1,
                        fontWeight: FontWeight.w600,
                        color: Palette.Grey),
                  ),
                ],
              ),
              subtitle: Text(
                widget.name,
                style: GoogleFonts.roboto(
                    fontSize: context.blockSizeHorizontal * 1.1,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//////
class ItemCardCallCenter<T> extends StatefulWidget {
  final String id;
  final String time;
  final String name;
  final T item;
  final VoidCallback onClick;
  final VoidCallback? onDelete;
  final bool isSelected;
  const ItemCardCallCenter(
      {Key? key,
        required this.isSelected,
        required this.onClick,
        required this.item,
        required this.id,
        this.onDelete,
        required this.name,
        this.time = ""})
      : super(key: key);

  @override
  _ItemCardCallCenterState createState() => _ItemCardCallCenterState();
}

class _ItemCardCallCenterState extends State<ItemCardCallCenter> {
  bool isHover = false;
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
        onTap: widget.onClick,
        child: Container(
          // height: context.blockSizeHorizontal * 4.5,
          decoration: BoxDecoration(
            // color: Colors.red,
              color: widget.isSelected
                  ? Palette.colrWarrantySelectee
                  : isHover
                  ? Palette.colrCallCenter
                  : Colors.white,

            border: Border.all(
              color: Color(0xff687892).withOpacity(.2)
            ),
            borderRadius: BorderRadius.all(Radius.circular(7))
              ),
          child: Container(
            // color: Colors.green,
            // alignment: Alignment.topCenter,
            // padding: EdgeInsets.only(bottom: 29),
            // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            child: ListTile(
              minVerticalPadding: 10,

              // contentPadding: EdgeInsets.zero,
              title: Text(
                widget.name,
                style: GoogleFonts.roboto(
                    fontSize: context.blockSizeHorizontal * 1.1,
                    fontWeight:widget.isSelected?FontWeight.bold:FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class ItemCardDateCallCenter<T> extends StatefulWidget {


  final String name;

  final VoidCallback onClick;
  final VoidCallback? onDelete;
  final bool isSelected;
  const ItemCardDateCallCenter(
      {Key? key,
        required this.isSelected,
        required this.onClick,


        this.onDelete,
        required this.name,
        })
      : super(key: key);

  @override
  _ItemCardDateCallCenterState createState() => _ItemCardDateCallCenterState();
}

class _ItemCardDateCallCenterState extends State<ItemCardDateCallCenter> {
  bool isHover = false;
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
        onTap: widget.onClick,
        child: Container(
          // height: context.blockSizeHorizontal * 4.5,
          decoration: BoxDecoration(
            // color: Colors.red,
              color: widget.isSelected
                  ? Palette.blue
                  : isHover
                  ? Palette.colrCallCenter
                  : Colors.white,
              // border: widget.isSelected
              //     ? Border(
              //     left: BorderSide(
              //         color: Color(0xff6F91CB), width: 2))
              //     : Border(bottom: BorderSide(color: Colors.grey.withOpacity(.6)))
          ),
          child: Container(
            // color: Colors.green,
            // alignment: Alignment.topCenter,
            // padding: EdgeInsets.only(bottom: 29),
            // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            child: ListTile(
              minVerticalPadding: 10,

              // contentPadding: EdgeInsets.zero,
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: context.blockSizeHorizontal*1,),
               Container(
                 height: 7,
                 width: 7,
                 color: widget.isSelected?Colors.white: Colors.black,
                  ),
                  SizedBox(width: context.blockSizeHorizontal*.7,),
                  Text(
                    widget.name,
                    style: GoogleFonts.roboto(
                        fontSize: context.blockSizeHorizontal * 1.22,
                        fontWeight:widget.isSelected? FontWeight.bold:FontWeight.w600,
                        color:widget.isSelected?Colors.white: Colors.black),
                  ),
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////


class UnderLinedInput extends StatefulWidget {
  //  final String label;
  // final bool required;
  final VoidCallback? onClick;
  final bool enable;
  final String initial;
  final bool restricted;
  final String hintText;
  // final String? tileName;
  final int maxLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onComplete;
  // final List<String>? items;
  const UnderLinedInput(
      {Key? key,
        this.enable = true,
        this.initial="",
        this.hintText = "",
        this.maxLines = 1,
        this.controller,
        this.onChanged,
        this.onComplete,
        this.restricted = false,
        this.onClick})
      : super(key: key);

  @override
  _UnderLinedInputState createState() => _UnderLinedInputState();
}

class _UnderLinedInputState extends State<UnderLinedInput> {
  bool formatter=false;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          // color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: Center(
            child: TextFormField(textAlign: TextAlign.center,


              onTap: () {
                if (widget.onClick != null) widget.onClick!();
              },
              maxLines: widget.maxLines,

              controller: widget.controller,
              enabled: widget.enable,style: GoogleFonts.roboto(fontSize: 14),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),],
              onEditingComplete: widget.onComplete,
              onChanged: widget.onChanged,
              decoration: InputDecoration(

                contentPadding: EdgeInsets.all(10),
                isDense: true,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.roboto(fontSize: 10),
                border:InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}