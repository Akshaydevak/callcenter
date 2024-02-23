
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/warrenty_screens.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import 'package:salesapp/Cubit/Customer_Update_Cubit/customer_update_cubit.dart';
import 'package:salesapp/Cubit/Payment_Options_Cubit/payment_options_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/ItemCard.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/color_palette/color_palette.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SocialMediaPopUp extends StatefulWidget {

  SocialMediaPopUp();

  @override
  State<SocialMediaPopUp> createState() => _SocialMediaPopUpState();
}

class _SocialMediaPopUpState extends State<SocialMediaPopUp> {
  TextEditingController whatsappController=TextEditingController();
  TextEditingController faceBookController=TextEditingController();
  TextEditingController snapChatController=TextEditingController();
  TextEditingController instagramController=TextEditingController();
  @override
  void initState() {
   assignToTextEditingController();
    super.initState();
  }
  void assignToTextEditingController(){
    whatsappController.text=listCustomer?.customerMeta?.whatsapp??"";
    faceBookController.text=listCustomer?.customerMeta?.facebook??"";
    snapChatController.text=listCustomer?.customerMeta?.snapchat??"";
    instagramController.text=listCustomer?.customerMeta?.instagram??"";
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [
    BlocListener<CustomerUpdateCubit,CustomerUpdateState>(
        listener: (context,state){
          state.maybeWhen(
              orElse: () {},
              error: () {
                context.showSnackBarError("error !");
              },
              loading: () {
                context.showSnackBarNormal("Loading");
              },
              success: (data) {

                if (data.data1) {
                  context.showSnackBarSuccess("Customer Details Successfully Updated");
                  Navigator.pop(context);
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(builder: (context) =>
                  //         CallCenterMain(tabValue: 0,)
                  //     ));

                } else {

                  showDailogPopUp(
                      context,
                      FailiurePopup(
                        content: data.data2,
                      ));
                }

              });
        }
    ),
  ],
  child: AlertDialog(
            contentPadding: EdgeInsets.zero,
              content:
              Container(
                height: context.blockSizeVertical*61,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1),
                      height: context.blockSizeVertical*7,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          // borderRadius: BorderRadius.circular(12),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.withOpacity(.3),
                             width: 1.5
                          )
                        )

                      ),

                      child: Row(
                        children: [
                          SizedBox(width: context.blockSizeHorizontal*1,),
                          const Text("Social media",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19,letterSpacing: 1),),
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

                    SizedBox(height: context.blockSizeVertical*1,),
                    Expanded(child: Container(
                      padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter Social media links and connect a user."),
                          SizedBox(height: 15,),
                          SocialMediaIconTextFornField(controller: whatsappController,socialMediaIcon:LeftMenuSvgs().watsupClearIcon,hintText: "Enter whatsApp link",formatter: true,integerOnly: true,),
                          SizedBox(height: 20,),
                          SocialMediaIconTextFornField(controller: faceBookController,
                            socialMediaIcon:LeftMenuSvgs().faceBookClearIcon,hintText: "Enter facebook link",),
                          SizedBox(height: 20,),
                          SocialMediaIconTextFornField(controller: instagramController,
                            socialMediaIcon:LeftMenuSvgs().instagramClearIcon,hintText: "Enter instgram link",),
                          SizedBox(height:20,),  SocialMediaIconTextFornField(controller: snapChatController,
                            socialMediaIcon:LeftMenuSvgs().snapCahtClearIcon,hintText: "Enter snapchat link",),
                          // SizedBox(height: 17,),

                        ],
                      ),

                    )),
                    Divider(color: Colors.grey.withOpacity(.3),thickness: 1,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*2),
                      child:  CommonButtonGradiant(



                      margin: EdgeInsets.zero,
                      onTap: () async {
                        CustomerCreate model=CustomerCreate(
                          whatsapp: whatsappController.text,
                          snapchat: snapChatController.text,
                          facebook: faceBookController.text,
                          instagram: instagramController.text,
                          customerUserCode: listCustomer?.customerUserCode,
                          
                        );
                        print(model);
                        context.read<CustomerUpdateCubit>().postCustomerUpdate(model);

                      },
                      width:  context.blockSizeHorizontal*26,
                      height: context.blockSizeVertical*5.2,
                      label: "Update",),),
                    SizedBox(height: 15,),


                  ],
                ),
              )
          ),
);
        }
    );



  }
}