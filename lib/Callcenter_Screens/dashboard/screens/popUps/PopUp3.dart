import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl/intl.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


import '../../../../Widgets/Reusable_widget_web.dart';
import '../../../../Widgets/commonutils.dart';
import '../../../../utils/variables.dart';
import '../../../CallCenterWidgets.dart';
import 'PopUp2.dart';



class ThirdPopUp extends StatefulWidget {
final TextEditingController notesOrRemarks;
final TextEditingController remarkTextEditing;
  const
  ThirdPopUp({Key? key, required this.notesOrRemarks, required this.remarkTextEditing,}) : super(key: key);

  @override
  State<ThirdPopUp> createState() => _ThirdPopUpState();
}

class _ThirdPopUpState extends State<ThirdPopUp> {
  FocusNode thirdPopupFocusNode=FocusNode();
  FocusNode textFocusNode=FocusNode();
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(textFocusNode);
    return Builder(
        builder: (context) {
          return
            AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: PopUpHeaderCallcenterTwo(
                margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*2),
                width: 800,
                height: context.blockSizeVertical*50,
                label: "Remarks",
                onApply:() {},
                onTap: (){

                },
                dataField:RawKeyboardListener(
                  autofocus: true,
                  focusNode:thirdPopupFocusNode,
                  onKey: (RawKeyEvent event) {
                    print("pressinggggggggggggggggggggg${event.logicalKey}");
                    if (event is RawKeyDownEvent) {

                      if(event.logicalKey==LogicalKeyboardKey.enter){
                        Navigator.pop(context);

                      }
                    }
                  },
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height * .3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(height: context.blockSizeVertical*2,),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //
                        //     Text("Add Notes",style: TextStyle(fontSize:context.blockSizeHorizontal*1.2),),
                        //     SizedBox(height: context.blockSizeVertical*1,),
                        //     TextField(
                        //
                        //
                        //       controller: widget.notesOrRemarks,
                        //       maxLines: 7,
                        //       decoration: InputDecoration(
                        //
                        //         hintText: "Write notes regarding the order ...",
                        //         isDense: true,
                        //         alignLabelWithHint: true,
                        //         enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(2),
                        //           borderSide:
                        //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        //         ),
                        //
                        //         focusedBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(2),
                        //           borderSide:
                        //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        //         ),
                        //         border: OutlineInputBorder(
                        //             borderSide:
                        //             BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height: context.blockSizeVertical*2,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add Remarks",style: TextStyle(fontSize:context.blockSizeHorizontal*1.2),),
                            SizedBox(height: context.blockSizeVertical*1,),
                            TextField(
                              focusNode: textFocusNode,


                              controller: widget.remarkTextEditing,
                              maxLines: 7,
                              decoration: InputDecoration(

                                hintText: "Write remarks regarding the order ...",
                                isDense: true,
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
                          ],
                        ),
                        SizedBox(height: context.blockSizeVertical*2,),
                        Container(
                          alignment: Alignment.center,
                          height: context.blockSizeVertical*4.5,
                          width: context.blockSizeHorizontal*8.5 ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color:const Color(0xff687892),

                          ),
                          child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                                },
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
                  ),
                ),
              ),
            );

        }
    );
  }
}