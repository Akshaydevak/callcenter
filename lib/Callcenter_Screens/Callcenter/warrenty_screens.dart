import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/warranty_popup.dart';
import 'package:salesapp/Cubit/warranty/warranty_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class WarrantyScreen extends StatefulWidget {
  final TextEditingController? allCustomerId;
  final Function priceDataChange;
  const WarrantyScreen({Key? key,  this.allCustomerId, required this.priceDataChange}) : super(key: key);

  @override
  State<WarrantyScreen> createState() => _WarrantyScreenState();
}

class _WarrantyScreenState extends State<WarrantyScreen> {
  List<warrentyModel> warrantyValues =[];
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
  create: (context) => WarrantyCubit()..getWarrantys(int.tryParse(widget.allCustomerId!.text)??0),
  child: BlocConsumer<WarrantyCubit, WarrantyState>(
  listener: (context, state) {
    print("state++++++++++++++++++++++++++++++++");
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          warrantyValues=data;
          print("warrantyValues"+warrantyValues.toString());


        });
  },
  builder: (context, state) {
    return Builder(
      builder: (context) {
        return Container(

          margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.blockSizeVertical*1.5,),
              Container(
                height: context.blockSizeVertical*42,
                child:warrantyValues.isEmpty?Center(child: EmptyDataDisplay()): ListView.separated(

                    itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xffD5DEE7)
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      warrantyHeadingText(warrantyValues[index].warrentyTypeTitle??"",context),
                      SizedBox(height: context.blockSizeVertical*1,),

                      warrantyDescriptionText(warrantyValues[index].description??"", context),
                      SizedBox(height: context.blockSizeVertical*3,),
                      TextButton(onPressed: (){
                        showDailogPopUp(
                          context,
                          WarrentyPopUp(
                            model: warrantyValues[index],
                              priceDataChange:widget.priceDataChange

                          ),
                        );
                      }, child: Text("View warranty details",style: TextStyle(color: Color(0xff6F91CB),fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.bold)),)
                    ],
                  ),
                ), separatorBuilder: (context, index) => SizedBox(height: 2,), itemCount: warrantyValues.length),
              )

              // Container(
              //   // color: Colors.red,
              //   height: context.blockSizeVertical*42,
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [  SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyHeadingText("1) Year domestic warranty",context),
              //         SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyDescriptionText("Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Integer dol or varius lectus habitasse.",context),
              //         SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyHeadingText("Warranty Types",context),
              //         SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyPointText("Warranty Types",context),
              //         warrantyPointText("Warranty Types",context),
              //         warrantyPointText("Warranty Types",context),
              //         SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyHeadingText("1) Year domestic warranty",context),
              //         SizedBox(height: context.blockSizeVertical*1,),
              //         warrantyDescriptionText("Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Integer dol or varius lectus habitasse.",context),
              //       ],
              //     ),
              //   ),
              // ),
              // Spacer(),
              // TextButton(onPressed: (){
              //   showDailogPopUp(
              //     context,
              //     WarrentyPopUp(
              //
              //     ),
              //   );
              // }, child: Text("you have 2 years additional warranty and extended warranty",style: TextStyle(color: Colors.blue)),)




            ],
          ),

        );
      }
    );
  },
),
);
  }
}
Widget warrantyHeadingText(String text,BuildContext context){
  return Container(
    width:400,
    child: Text(text,style: TextStyle(overflow: TextOverflow.ellipsis,fontWeight: FontWeight.bold,fontSize:context.blockSizeHorizontal*1.3 ),
    ),
  );
}
Widget warrantySubHeadingText(String text,BuildContext context){
  return Container(
    width:400,
    child: Text(text,style: TextStyle(overflow: TextOverflow.ellipsis,fontWeight: FontWeight.w400,fontSize:context.blockSizeHorizontal*1.1 ),
    ),
  );
}
Widget warrantyDescriptionText(String text,BuildContext context){
  return Container(
    // width:400,
    child: Text(text,style: TextStyle(
        height: 1.5,
        fontWeight: FontWeight.w400,fontSize:context.blockSizeHorizontal*1),
    ),
  );
}
Widget warrantyPointText(String text,BuildContext context){
  return Row(
    children: [
      Image(
        height: context.blockSizeVertical*1,
          image: AssetImage("asset_images/doticon.png"),fit: BoxFit.fitHeight,),
      SizedBox(width: context.blockSizeHorizontal*.7,),
      Container(
        width:context.blockSizeHorizontal*15,
        // color: Colors.red,
        child: Text(text,style: TextStyle(
            overflow: TextOverflow.ellipsis,

            fontWeight: FontWeight.w400,fontSize:context.blockSizeHorizontal*.99 ),
        ),
      ),
    ],
  );
}
Widget warrantySubHeadingPointText(String text,BuildContext context){
  return Row(
    children: [
      Image(
        height: context.blockSizeVertical*1,
          image: AssetImage("asset_images/doticon.png"),fit: BoxFit.fitHeight,),
      SizedBox(width: context.blockSizeHorizontal*.7,),
      Container(
        // width:context.blockSizeHorizontal*15,
        // color: Colors.red,
        child: Text(text,style: TextStyle(
            overflow: TextOverflow.ellipsis,

            fontWeight: FontWeight.w400,fontSize:context.blockSizeHorizontal*1 ),
        ),
      ),
    ],
  );
}
Widget warrantySubHeadingPoinPoin(String heading,String value, context){
  return     Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      warrantySubHeadingPointText(heading,context),
      warrantyDescriptionText(value,context),
    ],
  );
}
