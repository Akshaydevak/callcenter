
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/warrenty_screens.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Cubit/Payment_Options_Cubit/payment_options_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/ItemCard.dart';
import 'package:salesapp/color_palette/color_palette.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class WarrentyPopUp extends StatefulWidget {
final warrentyModel model;
final Function priceDataChange;
WarrentyPopUp({required this.model, required this.priceDataChange});

  @override
  State<WarrentyPopUp> createState() => _WarrentyPopUpState();
}

class _WarrentyPopUpState extends State<WarrentyPopUp> {
  late AutoScrollController controller;
   bool select=false;
  int selected = 1;
  void initState() {

    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  List<String>warrantyTypeList=["Product Warranty","Extender Warranty","Extender Warranty"];

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          return AlertDialog(
              content:
              Container(
                height: context.blockSizeVertical*65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      height: context.blockSizeVertical*7,
                     decoration: BoxDecoration(
                       color:  Colors.white,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     
                      child: Row(
                        children: [
                          SizedBox(width: context.blockSizeHorizontal*1,),
                          const Text("Warranty Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          Spacer(),
                          Transform.scale(
                            scale: 0.7,
                            alignment: Alignment.center,
                            child: CloseButton(
                              color: Colors.black,
                                onPressed: () {
                              Navigator.pop(context);
                            }),
                          ),
                          SizedBox(width: context.blockSizeHorizontal*1,),
                        ],
                      ),
                    ),
                    SizedBox(height: context.blockSizeVertical*.9,),
                    Expanded(child: Container(
                      
                      decoration: BoxDecoration(
                        border: Border(
                          right:BorderSide( color:Colors.grey.withOpacity(.7)),
                          bottom:BorderSide( color:Colors.grey.withOpacity(.7)),
                          top:BorderSide( color:Colors.grey.withOpacity(.7)),

                        ),
                        // borderRadius: BorderRadius.circular(14)
                    ),child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          width: context.blockSizeHorizontal*14,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           // border: Border(
                           //   right: BorderSide(
                           //     color: Colors.grey
                           //   )
                           // )
                         ),
                         child:Column(
                           children: [
                             SizedBox(height: 10,),
                           AutoScrollTag(
                                 controller: controller,
                                 index: 1,
                               key: ValueKey(1),
                                 child:   ItemCardCallCenter(
                                   name: "Product Warranty",
                                   id: "",
                                   item: "item",
                                   onClick: () {
                                     setState(() {
                                       select=false;
                                       selected=1;



                                     });
                                   },
                                   isSelected: 1 == selected,
                                   key: UniqueKey(),
                                 ),
                               ),
                          SizedBox(height: 2,),
                          if(widget.model.isAdditionalWarranty==true)   AutoScrollTag(
                                 controller: controller,
                                 index: 2,
                               key: ValueKey(2),
                                 child:   ItemCardCallCenter(
                                   name: "Additional Warranty",
                                   id: "",
                                   item: "item",
                                   onClick: () {
                                     setState(() {
                                       select=false;
                                       selected=2;



                                     });
                                   },
                                   isSelected: 2 == selected,
                                   key: UniqueKey(),
                                 ),
                               ),
                             SizedBox(height: 2,),

                             if(widget.model.isExtendedWarranty==true) AutoScrollTag(
                                 controller: controller,
                                 index: 3,
                               key: ValueKey(3),
                                 child:   ItemCardCallCenter(
                                   name: "Extended Warranty",
                                   id: "",
                                   item: "item",
                                   onClick: () {
                                     setState(() {
                                       select=false;
                                       selected=3;



                                     });
                                   },
                                   isSelected: 3 == selected,
                                   key: UniqueKey(),
                                 ),
                               ),

                           ],
                         )
                         // ListView.separated(itemBuilder: (context, index) =>
                         //     AutoScrollTag(
                         //       controller: controller,
                         //       index: index,
                         //     key: ValueKey(index),
                         //       child:   ItemCardCallCenter(
                         //         name: warrantyTypeList[index]??"",
                         //         id: "",
                         //         item: "item",
                         //         onClick: () {
                         //           setState(() {
                         //             select=false;
                         //             selected=index;
                         //
                         //
                         //
                         //           });
                         //         },
                         //         isSelected: index == selected,
                         //         key: UniqueKey(),
                         //       ),
                         //     ),
                         //     separatorBuilder:(context, index) =>  SizedBox(), itemCount: warrantyTypeList.length),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(

                              margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*2),
                              child:selected==1?
                              Container(
                                width:context.blockSizeHorizontal*40 ,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  warrantyHeadingText(widget.model.warrentyTypeTitle??"",context),
                                  SizedBox(height: context.blockSizeVertical*1,),
                                  warrantySubHeadingPoinPoin("Description : ",widget.model.description.toString()??"",context),
                                  warrantySubHeadingPoinPoin("Code           :",widget.model.warrentyCode??"",context),
                                  SizedBox(height: context.blockSizeVertical*1,),
                                  warrantySubHeadingText("Warranty Conditions",context),
                                  SizedBox(height: context.blockSizeVertical*1,),
                                  if(widget.model.warrentyConditions?.isNotEmpty==true)...[
                                    for(var i =0;i<widget.model.warrentyConditions!.length;i++)
                                      warrantyPointText(widget.model.warrentyConditions?[i]??"",context),
                                    SizedBox(height: context.blockSizeVertical*2,),
                                  ],

                                  // warrantyPointText("Warranty Types",context),
                                  // warrantyPointText("Warranty Types",context),
                                  // warrantyPointText("Warranty Types",context),
                                ],
                              ),):
                              selected==2?
                              Container(
                                // height: context.blockSizeVertical*80,
                                width:context.blockSizeHorizontal*40 ,

                                child:widget.model.additionalWarranty?.isNotEmpty==true?Column(
                                  children: [
                                    warrantyHeadingText("Additional Warranty",context),
                                    SizedBox(height: context.blockSizeVertical*1,),
                                    Container(
                                      width:context.blockSizeHorizontal*40 ,
                                      height: context.blockSizeVertical*80,
                                      child: ListView.separated(itemBuilder: (context, index) =>
                                          Row(
                                            children: [
                                              Text("${index+1})"),
                                              SizedBox(width: context.blockSizeHorizontal*1,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,


                                                children: [
                                                  Container(
                                                    width:context.blockSizeHorizontal*38,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(0xff687892).withOpacity(.2)
                                                      ),
                                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                                  ),
                                                    child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,


                                                    children: [


                                                      warrantySubHeadingPoinPoin("Description  :",widget.model.additionalWarranty?[index].description.toString()??"",context),
                                                      warrantySubHeadingPoinPoin("Duration     :",widget.model.additionalWarranty?[index].duration.toString()??"",context),
                                                      warrantySubHeadingPoinPoin("code         :",widget.model.additionalWarranty?[index].additionalWarrantyCode.toString()??"",context),

                                                      SizedBox(height: context.blockSizeVertical*1,),

                                                      if(widget.model.additionalWarranty?[index].additionalWarrantyConditions?.isNotEmpty==true)...[
                                                        warrantySubHeadingText("Warranty Conditions",context),
                                                        SizedBox(height: context.blockSizeVertical*1,),
                                                        for(var i =0;i<widget.model.additionalWarranty![index].additionalWarrantyConditions!.length;i++)
                                                          warrantyPointText(widget.model.additionalWarranty![index].additionalWarrantyConditions?[i]??"",context),
                                                      ],

                                                      // warrantyPointText("Warranty Types",context),
                                                      // warrantyPointText("Warranty Types",context),
                                                      // warrantyPointText("Warranty Types",context),
                                                    ],
                                                  ),),



                                                ],
                                              ),
                                            ],
                                          ), separatorBuilder: (context, index) => SizedBox(height: context.blockSizeVertical*3,), itemCount: widget.model.additionalWarranty?.length??0),
                                    ),
                                  ],
                                ):Container()

                              ):Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,


                                children: [
                                  Container(
                              width:context.blockSizeHorizontal*40,
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,

                                    children: [
                                      warrantyHeadingText("Extended warranty",context),
                                      SizedBox(height: context.blockSizeVertical*1,),
                                      warrantySubHeadingPoinPoin("Description :",widget.model.extendedWarranty?.description.toString()??"",context),


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          warrantySubHeadingPointText("Duration     : ",context),
                                          warrantyDescriptionText(widget.model.extendedWarranty?.duration.toString()??"",context),
                                        ],
                                      ),
                                      warrantySubHeadingPoinPoin("Maximum Occurence    :",widget.model.extendedWarranty?.maximumOccurance.toString()??"",context),
                                      warrantySubHeadingPoinPoin("code                 :",widget.model.extendedWarranty?.ExtendedWarrantyCode.toString()??"",context),
                                      SizedBox(height: context.blockSizeVertical*1,),

                                      if(widget.model.warrentyConditions?.isNotEmpty==true)...[
                                        warrantySubHeadingText("Warranty Conditions",context),
                                        SizedBox(height: context.blockSizeVertical*1,),
                                        for(var i =0;i<widget.model.warrentyConditions!.length;i++)
                                          warrantyPointText(widget.model.warrentyConditions?[i]??"",context),
                                      ],
                                      SizedBox(height: context.blockSizeVertical*1,),
                                      CallCennterAdditionaCommonListtile(
                                        title:widget.model.extendedWarranty?.price.toString()??"",
                                        onAdd: (){
                                          Navigator.pop(context);
                                          widget.priceDataChange(widget.model.extendedWarranty?.price.toString());
                                        },
                                      ),

                                      // warrantyPointText("Warranty Types",context),
                                      // warrantyPointText("Warranty Types",context),
                                      // warrantyPointText("Warranty Types",context),
                                    ],
                                  ),),



                                ],
                              )
                            ),
                          ),
                        )

                      ],
                    ),

                    ))

                  ],
                ),
              )
          );
        }
    );



  }
}