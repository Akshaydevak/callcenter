import 'package:flutter/material.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:salesapp/Widgets/popupcallwidget.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


class SelectableDropDownpopUp extends StatefulWidget {
  final String label;
  final String? value;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;

  final String? code;
  final bool required;
  final bool row;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  const SelectableDropDownpopUp(
      {Key? key,
        this.value,
        this.type,
        required this.label,
        this.row=false,
        this.enable = false,
        this.code,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap,
        required this.controller1})
      : super(key: key);

  @override
  _SelectableDropDownpopUpState createState() =>
      _SelectableDropDownpopUpState();
}

class _SelectableDropDownpopUpState extends State<SelectableDropDownpopUp> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return  widget.row?
    SizedBox(


        child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              //horizontal: 10,
                vertical: 5),
            leading: Container(

                width: 70,
                child: Text.rich(TextSpan(
                    text: widget.label,
                    style: TextStyle(fontWeight: FontWeight.w400),
                    children: widget.required
                        ? [
                      TextSpan(
                          text: "*", style: TextStyle(color:Colors.grey))
                    ]
                        : []))),
            title:
            Container(
              height: 39,
              child:Container(

                decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.01),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


                child: widget.type != null
                    ? PopUpCall(
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    code: widget.code,

                    enable: widget.enable,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                    onTap: (){},
                      controller:widget.controller1,
                      // TextEditingController(text: widget.controller1),
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06)),
                          ),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(

                          ),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),
        )):
    Container(
        // padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 13,),
            ),
            SizedBox(height:3),
            Container(
              // height: context.blockSizeVertical * 6,
              // width: context.blockSizeHorizontal * 22,

              child:Container(
                // width: context.blockSizeHorizontal*22,
                // height: context.blockSizeVertical * 6,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius: BorderRadius.circular(5),
              ),


                child: widget.type != null
                    ? PopUpCall(
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    code: widget.code,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        ));
  }
}


//////////////////////////////////////////////
class SelectableDropDownpopUpTab extends StatefulWidget {
  final String label;
  final String? value;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;
  final bool required;
  final bool row;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  final EdgeInsets? padding;
  const SelectableDropDownpopUpTab(
      {Key? key,
        this.value,
        this.type,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap, required this.controller1, this.padding})
      : super(key: key);

  @override
  _SelectableDropDownpopUpTabState createState() =>
      _SelectableDropDownpopUpTabState();
}

class _SelectableDropDownpopUpTabState extends State<SelectableDropDownpopUpTab> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return  widget.row?
    SizedBox(


        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            //horizontal: 10,
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: TextStyle(fontWeight: FontWeight.w400),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(
            height: 39,
            child:Container(

              decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.01),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


              child: widget.type != null
                  ? PopUpCall(
                  onSelection: widget.onSelection,
                  onAddNew: widget.onAddNew,
                  value: widget.value,

                  enable: widget.enable,
                  type: widget.type!)
                  :TypeAheadFormField(

                textFieldConfiguration: TextFieldConfiguration(
                    onTap: (){},
                    controller:widget.controller1,
                    // TextEditingController(text: widget.controller1),
                    decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(2),


                          borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06)),
                        ),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                        isDense: true,
                        border: OutlineInputBorder(

                        ),
                        suffixIcon: Icon(Icons.more_horiz_rounded))),
                onSuggestionSelected: (suggestion) {
                  widget.onSelection(suggestion);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    // leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(suggestion.toString()),
                  );
                },
                suggestionsCallback: (String? areas) async {
                  return list;
                },
              ),
            ) ,
          ),
        )):
    Container(
        padding: widget.padding?? EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 13,),
            ),
            SizedBox(height:3),
            Container(
              height: context.blockSizeVertical * 6,
              width: context.blockSizeHorizontal * 30,

              child:Container(
                width: context.blockSizeHorizontal*20,
                height: context.blockSizeVertical * 6,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius: BorderRadius.circular(5),
                ),


                child: widget.type != null
                    ? PopUpCall(
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        ));
  }
}
//////////////////////////////////////////////////
class DropDownMobileCallCenter extends StatefulWidget {
  final String label;
  final String? code;
  final String? value;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;
  final bool required;
  final bool row;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  final EdgeInsets? padding;
  const DropDownMobileCallCenter(
      {Key? key,
        this.value,
        this.type,
        this.code,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap, required this.controller1, this.padding})
      : super(key: key);

  @override
  _DropDownMobileCallCenterState createState() =>
      _DropDownMobileCallCenterState();
}

class _DropDownMobileCallCenterState extends State<DropDownMobileCallCenter> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return  widget.row?
    SizedBox(


        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: TextStyle(fontWeight: FontWeight.w400),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(
            height: 39,
            child:Container(

              decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.01),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


              child: widget.type != null
                  ? PopUpCall(
                  onSelection: widget.onSelection,
                  onAddNew: widget.onAddNew,
                  value: widget.value,

                  enable: widget.enable,
                  type: widget.type!)
                  :TypeAheadFormField(

                textFieldConfiguration: TextFieldConfiguration(
                    onTap: (){},
                    controller:widget.controller1,
                    // TextEditingController(text: widget.controller1),
                    decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(2),


                          borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06)),
                        ),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                        isDense: true,
                        border: OutlineInputBorder(

                        ),
                        suffixIcon: Icon(Icons.more_horiz_rounded))),
                onSuggestionSelected: (suggestion) {
                  widget.onSelection(suggestion);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    // leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(suggestion.toString()),
                  );
                },
                suggestionsCallback: (String? areas) async {
                  return list;
                },
              ),
            ) ,
          ),
        )):
    Container(
        padding: widget.padding?? EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 13,),
            ),
            SizedBox(height:3),
            Container(
              height: context.blockSizeVertical * 6,
              width: context.blockSizeHorizontal * 50,

              child:Container(
                width: context.blockSizeHorizontal*20,
                height: context.blockSizeVertical * 6,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius: BorderRadius.circular(5),
                ),


                child: widget.type != null
                    ? PopUpCall(
                  code:widget.code,
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        ));
  }
}
//////////////////////
class DropDownSearchCallCenter extends StatefulWidget {
  final Function (String)? onchanged;
  final String label;
  final String? value;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;
  final bool required;
  final bool row;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  const DropDownSearchCallCenter(
      {Key? key,
        this.value,
        this.type,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap, required this.controller1, this.onchanged})
      : super(key: key);

  @override
  _DropDownSearchCallCenterState createState() =>
      _DropDownSearchCallCenterState();
}

class _DropDownSearchCallCenterState extends State<DropDownSearchCallCenter> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return  widget.row?
    SizedBox(


        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: TextStyle(fontWeight: FontWeight.w400),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(
            height: 39,
            child:Container(

              decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.01),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


              child: widget.type != null
                  ? PopUpCall(onchanged: widget.onchanged,
                  onSelection: widget.onSelection,
                  onAddNew: widget.onAddNew,
                  value: widget.value,
                  enable: widget.enable,
                  type: widget.type!)
                  :TypeAheadFormField(

                textFieldConfiguration: TextFieldConfiguration(
                    onTap: widget.onTap,
                    controller:widget.controller1,
                    // TextEditingController(text: widget.controller1),
                    decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(2),


                          borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06)),
                        ),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                        isDense: true,
                        border: OutlineInputBorder(

                        ),
                        suffixIcon: Icon(Icons.more_horiz_rounded))),
                onSuggestionSelected: (suggestion) {
                  widget.onSelection(suggestion);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    // leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(suggestion.toString()),
                  );
                },
                suggestionsCallback: (String? areas) async {
                  return list;
                },
              ),
            ) ,
          ),
        )):
    Container(
        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   widget.label,
            //   style: TextStyle(fontSize: 13,),
            // ),
            // SizedBox(height:3),
            Container(
              height: context.blockSizeVertical * 6,
              width: context.blockSizeHorizontal * 58.5,

              child:Container(
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius: BorderRadius.circular(5),
                ),


                child: widget.type != null
                    ? PopUpCall(onchanged: widget.onchanged,
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap:() {
                        widget.onTap;

                      },
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        ));
  }
}
////////////////////////////////////////
class OrderTypesDropdown extends StatefulWidget {
  final String label;
  final String? value;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;
  final bool required;
  final bool row;
  final bool isMandotory;
  final bool isLabel;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  const   OrderTypesDropdown(
      {Key? key,
        this.value,
        this.type,
        this.focusNode,
        this.isMandotory=false,
        this.isLabel=false,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap,
        required this.controller1, this.padding
      })
      : super(key: key);

  @override
  _OrderTypesDropdownState createState() =>
      _OrderTypesDropdownState();
}

class _OrderTypesDropdownState extends State<OrderTypesDropdown> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;
    // final GlobalKey<TypeAheadFormFieldState<String>> _typeAheadKey = GlobalKey();

    return  widget.row?
    Container(
      // padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            if(widget.isLabel==false)  ...[         Row(
              children: [
                Container(
                  // width: context.blockSizeHorizontal*5.5,
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    widget.label,
                    style: TextStyle(fontSize:context.blockSizeHorizontal*.86,fontWeight: FontWeight.w500),
                  ),

                ),
                if(widget.isMandotory)
                  Text("*",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: context.blockSizeHorizontal * .9,
                          color: Colors.red)),
              ],
            ),
            ],
            SizedBox(
              height: context.blockSizeVertical * .5,
            ),


            Container(
              // height: context.blockSizeVertical * 6,
              // width: context.blockSizeHorizontal * 22,

              child:Container(
                alignment: Alignment.center,
                // width: widget.isLabel==false?context.blockSizeHorizontal*10.5:context.blockSizeHorizontal*15.3,
                // height: widget.isLabel==false?context.blockSizeVertical * 5:context.blockSizeVertical * 5.59,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,
                ),
                child: widget.type != null
                    ? PopUpCall(

                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :
                TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(


                      controller: TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        )):
    Container(
        padding:widget.padding??  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // padding: const EdgeInsets.only(top: 5),
              width: context.blockSizeHorizontal*5.5,
              child: Text(
                widget.label,
                style: TextStyle(fontSize: context.blockSizeHorizontal*.86,fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(width: context.blockSizeHorizontal*0.5,),
            Container(
              // height: context.blockSizeVertical * 5,
              width: context.blockSizeHorizontal * 10.5,

              child:widget.type != null
                  ? PopUpCall(
                  onSelection: widget.onSelection,
                  onAddNew: widget.onAddNew,
                  value: widget.value,
                  enable: widget.enable,
                  type: widget.type!)
                  :
              TypeAheadFormField(

                textFieldConfiguration: TextFieldConfiguration(
                  onEditingComplete: (){
                    // setState(() {
                    //   print("object test");
                    //   FocusScope.of(context).requestFocus(widget.focusNode);
                    //
                    // });
                  },
                    controller:widget.controller1,
                    style:TextStyle(fontSize:context.blockSizeHorizontal*.86),
                    autofocus: true,
                   
                    focusNode: widget.focusNode,
                    // TextEditingController(text: widget.value),
                    onTap: () {
                      if(widget.onTap!=null)
                      widget.onTap!();
                    },
                    
                    decoration: InputDecoration(
                      filled: true,

                        fillColor: Colors.white,
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                        enabledBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),
                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                        isDense: true,
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.more_horiz_rounded))),
                onSuggestionSelected: (suggestion) {
                  widget.onSelection(suggestion);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    // leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(suggestion.toString()),
                  );
                },
                suggestionsCallback: (String? areas) async {
                  return list;
                },
              ) ,
            ),


          ],
        ));
  }
}

//
class ChannelDropdown extends StatefulWidget {
  final bool? showAll;
  final String label;
  final String? value;
  final bool isMandotory;
  final TextEditingController controller1;
  final VoidCallback? onAddNew;
  final VoidCallback? onTap;
  final Function onSelection;
  final Function? refreshSetstate;
  final FocusNode? focusNode;
  final bool required;
  final bool row;
  final bool isLabel;
  final List<String>? list;
  final String? type;
  final bool enable;
  final bool restricted;
  const ChannelDropdown(
      {Key? key,
        this.value,
        this.showAll,
        this.type,
        this.isLabel=false,
        this.isMandotory=false,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew,
        required this.onSelection,
        this.required = false,
        this.list,
        this.restricted = false,
        this.onTap,
        required this.controller1, this.refreshSetstate, this.focusNode
      })
      : super(key: key);

  @override
  _ChannelDropdownState createState() =>
      _ChannelDropdownState();
}

class _ChannelDropdownState extends State<ChannelDropdown> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return  widget.row?
    Container(
      // padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            if(widget.isLabel==false)  ...[         Row(
              children: [
                Container(
                  // width: context.blockSizeHorizontal*5.5,
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    widget.label,
                    style: TextStyle(fontSize:context.blockSizeHorizontal*.86,fontWeight: FontWeight.w500),
                  ),

                ),
                if(widget.isMandotory)
                  Text("*",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: context.blockSizeHorizontal * .9,
                          color: Colors.red)),
              ],
            ),
],
            SizedBox(
              height: context.blockSizeVertical * .5,
            ),


            Container(
              // height: context.blockSizeVertical * 6,
              // width: context.blockSizeHorizontal * 22,

              child:Container(
                alignment: Alignment.center,
                // width: widget.isLabel==false?context.blockSizeHorizontal*10.5:context.blockSizeHorizontal*15.3,
                // height: widget.isLabel==false?context.blockSizeVertical * 5:context.blockSizeVertical * 5.59,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,
                ),
                child: widget.type != null
                    ? PopUpCall(
                    focusNode:widget.focusNode,

                    refreshSetstate: widget.refreshSetstate,
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :
                TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        )):
    Container(
        // padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          if(widget.isLabel==false)  Container(
              width: context.blockSizeHorizontal*5.5,
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                widget.label,
                style: TextStyle(fontSize:context.blockSizeHorizontal*.86,fontWeight: FontWeight.w500),
              ),
            ),
            if(widget.isLabel==false)    SizedBox(width:context.blockSizeHorizontal*.5),
            Container(
              // height: context.blockSizeVertical * 6,
              // width: context.blockSizeHorizontal * 22,

              child:Container(
                alignment: Alignment.center,
                width: widget.isLabel==false?context.blockSizeHorizontal*10.5:context.blockSizeHorizontal*15.3,
                height: widget.isLabel==false?context.blockSizeVertical * 5:context.blockSizeVertical * 5.59,
                decoration: BoxDecoration(
                  color: widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.001, //width of border

                  ),
                  borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,
                ),
                child: widget.type != null
                    ? PopUpCall(
                  refreshSetstate: widget.refreshSetstate,
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :
                TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(
                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:widget.isLabel==false? BorderRadius.circular(2):BorderRadius.zero,

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),


          ],
        ));
  }
}