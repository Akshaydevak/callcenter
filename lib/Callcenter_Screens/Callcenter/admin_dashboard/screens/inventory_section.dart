

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class InventorProfileSection extends StatefulWidget {
final bool isLoading;
InventorProfileSection({this.isLoading=false});

  @override
  State<InventorProfileSection> createState() => _InventorProfileSectionState();
}

class _InventorProfileSectionState extends State<InventorProfileSection> {
  String inventoryLogo="";
  String inventoryName="";
  String displaNmae="";
  String description="";
  String phone="";
  String email="";
  String loaclity="";
  String address1="";
  String city="";
  String state="";
  String country="";
  String poCode="";

 Future<void> getInventoryDetailse()async {
   UserPreferences().getInventoryList().then((value) {
     inventoryLogo=value?.storeLogo??"";
     state=value?.state??"";
     inventoryName=value.name??"";
     displaNmae=value.companyDisplayName??"";
     email=value.email??"";
     address1=value.addressOne??"";
     description=value.description??"";
     phone=value.primary??"";
     country=value.countryName??"";
     city=value.cityz??"";

setState(() {

});
 });}
  @override

  void initState() {
    getInventoryDetailse();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(


      decoration: BoxDecoration(color: widget.isLoading?Colors.black.withOpacity(.04):Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
        child:widget.isLoading?Container(
        color:Colors.black.withOpacity(.04),
      ) :Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.blockSizeVertical*4,),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.withOpacity(.5),

              )

            ),
            child:inventoryLogo.isEmpty? Image.asset("asset_images/emptyUSer.png"):Image.network(inventoryLogo),

          ),
          SizedBox(
            height:  context.blockSizeVertical*1
            ,
          ),
          _buildText(inventoryName,fontWeight: FontWeight.bold,size: context.blockSizeHorizontal*1.45),
          _buildText(displaNmae,fontWeight: FontWeight.normal,size: context.blockSizeHorizontal*1,textClr: Color(0xff11142D)),
          SizedBox(height: context.blockSizeVertical*2.5),
          _buildText(description,fontWeight: FontWeight.normal,size: context.blockSizeHorizontal*1,textClr: Color(0xff11142D)),
          SizedBox(height: context.blockSizeVertical*2.5),
          _buildText(phone,fontWeight: FontWeight.bold,size: context.blockSizeHorizontal*1,textClr: Color(0xff66687B)),
          _buildText(email,fontWeight: FontWeight.bold,size: context.blockSizeHorizontal*1,textClr: Color(0xff66687B)),
          SizedBox(height: context.blockSizeVertical*2.5),
      Container(
        height: 20,
          width: 20,
          child: SvgPicture.string(LeftMenuSvgs().locationIcon)),
          _buildText("$address1,$state",fontWeight: FontWeight.bold,size: context.blockSizeHorizontal*1,textClr: Color(0xff66687B)),
          _buildText("$city,$state,$country",fontWeight: FontWeight.bold,size: context.blockSizeHorizontal*1,textClr: Color(0xff66687B)),



        ],
      ),
    );
  }
}


Widget _buildText(String text,{FontWeight? fontWeight,double? size,Color textClr=Colors.black}){
  return Container(
    child: Text(text,style: TextStyle(fontWeight:fontWeight ==null?FontWeight.normal:fontWeight,fontSize: size??12,color: textClr,height: 1.5),),
  );
}