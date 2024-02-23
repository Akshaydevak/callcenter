import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp4.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/social_media.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/User_Management_Cubit/user_management_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import '../../Widgets/commonutils.dart';
import '../../shared_preference/shared_preference.dart';
import '../dashboard/screens/gp_card.dart';
import '../dashboard/screens/popUps/PopUp1.dart';
import '../dashboard/screens/popUps/PopUp2.dart';
import '../dashboard/screens/popUps/PopUp8.dart';

class ProfileScreen extends StatefulWidget {
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController? allCustomerId;
  final VoidCallback rightSideScreenRefresh;
  const ProfileScreen({Key? key, required this.text,this.allCustomerId, required this.stock,required this.rightSideScreenRefresh}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          ProfileField(
            onTap: (){
            showDailogPopUp(
              context,
              EighthPopUp(rightSideScreenRefresh: widget.rightSideScreenRefresh,),
            );
          },),
          // ProductCard(
          //     text: widget.text,
          //     stock: widget.stock),

        ],
      )
    );
  }
}
///////////////////////////
class ProfileField extends StatefulWidget {
  final VoidCallback onTap;
  const ProfileField({Key? key, required this.onTap}) : super(key: key);

  @override
  State<ProfileField> createState() => _ProfileFieldState();
}

class _ProfileFieldState extends State<ProfileField> {
  CustomerList? fullName;
  String userAvatarName="";

  getUSerAvatharName(){
    if(listCustomer!=null){
      if(listCustomer?.customerName?.isNotEmpty==true){

        var list=listCustomer?.customerName!.split("");
        if(list?.isNotEmpty==true){
          userAvatarName=list![0]+list[1];
          userAvatarName=userAvatarName.toUpperCase();
        }

      }
    }
  }

  //
  @override
  void initState() {
    super.initState();
    getUSerAvatharName();
  }
  //
  // void getData() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     fullName = pref.getString("customer");
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocListener(
  listeners: [
    BlocListener<CustomerListCubit,CustomerListState>(
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
                print("daaaaaaaaaaattttttttttttttt$data");
                listCustomer=CustomerList(
                    customerUserCode:data?[0]?.customerUserCode,
                    id: data?[0]?.id,
                    isActive:data?[0]?.isActive,
                    mobile:data?[0]?.mobile,
                    email:data?[0]?.email,
                    customerName:data?[0].customerName,
                    taxId:data?[0].taxId,
                    businessData:data?[0]?.businessData,
                    customerMeta:data?[0]?.customerMeta,
                    businessUnit: data?[0]?.businessUnit,
                    customerId:data?[0]?.customerId,
                    dateJoined: data?[0]?.dateJoined,
                    isBusinessUser:data?[0]?.isBusinessUser,
                    isDelete:data?[0]?.isDelete,
                    legalUnit:data?[0]?.legalUnit

                );
                getUSerAvatharName();
                UserPreferencesCallCenter().saveUser(listCustomer!);
                setState(() {

                });



              }
          );} )

  ],
  child: Container(

          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: context.blockSizeVertical * 1.9,
              ),
              Row(
                children: [
                  SizedBox(
                    width: context.blockSizeHorizontal * 1,
                  ),
                  Container(
                    alignment: Alignment.center,
                  child:Text( userAvatarName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
                    height: context.blockSizeVertical * 6.5,
                    width: context.blockSizeHorizontal * 3,
                    decoration: BoxDecoration(
                        color: Color(0XFFE5EDFF),
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(3))
                    ),
                  ),
                  SizedBox(
                    width: context.blockSizeHorizontal * 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "USER CODE :  ${listCustomer?.customerUserCode??""}",
                        style: TextStyle(
                            fontSize: context.blockSizeHorizontal * 0.7,
                            fontWeight: FontWeight.bold,
                        color: Color(0xff66687B)),
                      ),
                      SizedBox(
                        height: context.blockSizeVertical * .6,
                      ),

                       Container(
                           width: context.blockSizeHorizontal*11,
                         child: Text(
                          listCustomer?.customerName??"",
                          style: TextStyle(fontWeight: FontWeight.bold,  fontSize: context.blockSizeHorizontal * 1,overflow:TextOverflow.ellipsis,color: Colors.black ),
                      ),
                       )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: context.blockSizeVertical * 1.2,
              ),
               Padding(
                padding: EdgeInsets.only(left: context.blockSizeHorizontal*1),
                child: Row(
                  children: [
                    ProfileIcon(menuIcon:  LeftMenuSvgs().callIcon, clr: Color(0xffF2F2F2),

                    ),
                    SizedBox(
                      width: context.blockSizeHorizontal * .8,
                    ),

                    Text(listCustomer?.mobile??"",style: TextStyle(color: Color(0xff66687B),fontWeight: FontWeight.w400,fontSize: context.blockSizeHorizontal * .96),),
                  ],
                ),
              ),
              SizedBox(
                height: context.blockSizeVertical * 1,
              ),
              Padding(
                padding:  EdgeInsets.only(left:context.blockSizeHorizontal*1),
                child: Row(
                  children: [
                    ProfileIcon(menuIcon:  LeftMenuSvgs().messageIcon, clr: Color(0xffF2F2F2),

                    ),
                    SizedBox(
                      width: context.blockSizeHorizontal * .8,
                    ),
                     Container(

                width: context.blockSizeHorizontal*11,
                         child: Text(listCustomer?.email??"",style: TextStyle(overflow:TextOverflow.ellipsis,color: Color(0xff66687B) ),)),
                 Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(right: context.blockSizeHorizontal*1),
                      child: ProfileIcon(menuIcon:  LeftMenuSvgs().penIcon, clr: Color(0xffF2F2F2),iconColor: Color(0xff6f91cb),
                      width: 12,
                      height: 12,
                      ontap: (){
                          context
                              .read<UserManagementCubit>()
                              .getSearchUserManage(listCustomer?.customerUserCode??"");
                          setState((){});
                          showDailogPopUp(
                            context,
                            SecondPopUp(patch: true,isNavigateTodash: false),
                          );
                      },
                      // InkWell(onTap: (){
                      //   context
                      //       .read<UserManagementCubit>()
                      //       .getSearchUserManage(listCustomer?.customerUserCode??"");
                      //   setState((){});
                      //   showDailogPopUp(
                      //     context,
                      //     SecondPopUp(patch: true,),
                      //   );
                      // },
                      //   child:  Text(
                      //     "Edit",
                      //     style: TextStyle(
                      //       // decoration:TextDecoration.underline,
                      //         color: Color(0xff6F91CB),
                      //         fontSize:  context.blockSizeHorizontal *.8,
                      //         fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                    )),

                  ],
                ),
              ),
              SizedBox(
                height: context.blockSizeVertical * 2,
              ),
              const Divider(
                height: 0.5,
                thickness: 0.5,
              ),
              SizedBox(
                height: context.blockSizeVertical * 1.5,
              ),
              Padding(
                padding:  EdgeInsets.only(left:context.blockSizeHorizontal*1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          "Delivery Address",
                          style: TextStyle(fontWeight: FontWeight.w600,fontSize:  context.blockSizeHorizontal *1,),
                        ),
                        SizedBox(
                          width: context.blockSizeHorizontal * 1.2,
                        ),
                        InkWell(
                            onTap: () {
                              showDailogPopUp(
                                context,
                                const FourthPopUp(),
                              );
                            },
                            child:  Text(

                              "Add New",
                              style: TextStyle(color: Colors.blue,
                                  // decoration:TextDecoration.underline,
                                  fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*.9),
                            )),
                        SizedBox(
                          height: context.blockSizeVertical * 0.2,
                        ),
                      Spacer(),

                        Padding(
                            padding:  EdgeInsets.only(right: context.blockSizeHorizontal*1),
                            child: ProfileIcon(menuIcon:  LeftMenuSvgs().penIcon, clr: Color(0xffF2F2F2),iconColor: Color(0xff6f91cb),
                              width: 12,
                              height: 12,
                              ontap: (){
                                widget.onTap();
                              },
                              // InkWell(onTap: (){
                              //   context
                              //       .read<UserManagementCubit>()
                              //       .getSearchUserManage(listCustomer?.customerUserCode??"");
                              //   setState((){});
                              //   showDailogPopUp(
                              //     context,
                              //     SecondPopUp(patch: true,),
                              //   );
                              // },
                              //   child:  Text(
                              //     "Edit",
                              //     style: TextStyle(
                              //       // decoration:TextDecoration.underline,
                              //         color: Color(0xff6F91CB),
                              //         fontSize:  context.blockSizeHorizontal *.8,
                              //         fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                            )),
                        // Padding(
                        //   padding:  EdgeInsets.only(right: context.blockSizeHorizontal*1),
                        //   child: InkWell(onTap: widget.onTap,
                        //     child:  Text(
                        //       "Change",
                        //       style: TextStyle(
                        //           // decoration:TextDecoration.underline,
                        //           color: Color(0xff6F91CB),
                        //           fontSize:  context.blockSizeHorizontal *.8,
                        //           fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: context.blockSizeVertical * 1,
                    ),
                     Container(
                       height: context.blockSizeVertical*19,
                       // color: Colors.red,
                       child: SingleChildScrollView(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Expanded(child: Text("Area",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,))) ,
                                 Container(
                                     width: context.blockSizeHorizontal*12,
                                     child: Text(listCustomer?.deliveryAddressModel?.area??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold),)),

                               ],
                             ),
                             // SizedBox(
                             //   height: context.blockSizeVertical * .8,
                             // ),
                             // Row(
                             //   children: [
                             //     Expanded(child: Text("Street  ",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,))) ,
                             //     Container(
                             //         width: context.blockSizeHorizontal*12,
                             //         child: Text(listCustomer?.deliveryAddressModel?.street??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold),)),
                             //
                             //   ],
                             // ),
                             SizedBox(
                               height: context.blockSizeVertical * 1,
                             ),
                             Row(
                               children: [
                                 Expanded(child: Text("City  ",style: TextStyle( fontSize:  context.blockSizeHorizontal *1,))) ,
                                 Container(
                                     width: context.blockSizeHorizontal*12,
                                     child: Text(listCustomer?.deliveryAddressModel?.city??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold),)),

                               ],
                             ),
                             SizedBox(
                               height: context.blockSizeVertical * .9,
                             ),
                             Row(
                               children: [
                                 Expanded(child: Text("Country  ",style: TextStyle( fontSize:  context.blockSizeHorizontal *1,))) ,
                                 Container(
                                     width: context.blockSizeHorizontal*12,
                                     child: Text(listCustomer?.deliveryAddressModel?.country??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold),)),

                               ],
                             ),



                             SizedBox(
                               height: context.blockSizeVertical * .9,
                             ),

                             Row(
                               children: [
                                 Expanded(child: Text("Alt Mobile  ",style: TextStyle( fontSize:  context.blockSizeHorizontal *1,))) ,
                                 Container(
                                     width: context.blockSizeHorizontal*12,
                                     child: Text(listCustomer?.customerMeta?.altMobile??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold),)),

                               ],
                             ),
                             SizedBox(
                               height: context.blockSizeVertical * 1,
                             ),
                             Row(
                               children: [
                                 Expanded(child: Text("Alt Email  ",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,))) ,
                                 Container(

                                     width: context.blockSizeHorizontal*12,
                                     child: Text(listCustomer?.email??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.75,fontWeight: FontWeight.bold),)),

                               ],
                             ),
                             SizedBox(height: context.blockSizeVertical*1,),
                             // Row(
                             //   children: [
                             //     Text("Whatsapp : ",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold)) ,
                             //     Container(
                             //
                             //         width: context.blockSizeHorizontal*11,
                             //         child: Text(listCustomer?.customerMeta?.whatsapp??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.75,
                             //             overflow: TextOverflow.ellipsis),)),
                             //
                             //   ],
                             // ),
                             //
                             // Row(
                             //   children: [
                             //     Text("Facebook : ",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold)) ,
                             //     Container(
                             //
                             //         width: context.blockSizeHorizontal*11,
                             //         child: Text(listCustomer?.customerMeta?.facebook??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.75,
                             //             overflow: TextOverflow.ellipsis),)),
                             //
                             //   ],
                             // ),
                             // Row(
                             //   children: [
                             //     Text("Instagram : ",style: TextStyle( fontSize:  context.blockSizeHorizontal *.9,fontWeight: FontWeight.bold)) ,
                             //     Container(
                             //
                             //         width: context.blockSizeHorizontal*11,
                             //         child: Text(listCustomer?.customerMeta?.instagram??"",style: TextStyle( fontSize:  context.blockSizeHorizontal *.75,),)),
                             //
                             //   ],
                             // ),

                           ],
                         ),
                       ),
                     ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.5,
                    ),

                    SizedBox(
                      height:  context.blockSizeHorizontal * .5    ,
                    ),
                    Container(
                       height: context.blockSizeVertical*7,

                      // color: Colors.red,he
                      // padding: EdgeInsets.symmetric(vertical: context.blockSizeHorizontal * .9),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width:context.blockSizeHorizontal*2.75,

                              child: SocialMediaIcon(label: "WhatsApp",menuIcon:  LeftMenuSvgs().watsupIcon,menuHoverIcon:  LeftMenuSvgs().watsupClearIcon, clr: Colors.white,iconColor: Colors.black,ontap: (){
                                showDailogPopUp(
                                    context,
                                    SocialMediaPopUp(


                                ));
                              },)),
                          // SizedBox(
                          //   width: context.blockSizeHorizontal * .4,
                          // ),
                          Container(
                              width:context.blockSizeHorizontal*2.5,
                              child: SocialMediaIcon(
                                  ontap: (){
                                showDailogPopUp(
                                    context,
                                    SocialMediaPopUp(


                                    ));
                              },
                                  label: "Instagram",menuIcon:  LeftMenuSvgs().instagramIcon,menuHoverIcon: LeftMenuSvgs().instagramClearIcon, clr: Colors.white,iconColor: Colors.black)),
                          // SizedBox(instagramClearIcon
                          //   width: context.blockSizeHorizontal * .4,
                          // ),
                          Container(
                              width:context.blockSizeHorizontal*2.5,
                              child: SocialMediaIcon(
                                  ontap: (){
                                    showDailogPopUp(
                                        context,
                                        SocialMediaPopUp(


                                        ));
                                  },
                                  label: "FaceBook",menuIcon:  LeftMenuSvgs().faceBookIcon, menuHoverIcon:  LeftMenuSvgs().faceBookClearIcon, clr:Colors.white,iconColor: Colors.black)),
                          // SizedBox(
                          //   width: context.blockSizeHorizontal * .4,
                          // ),
                          Container(
                              width:context.blockSizeHorizontal*2.5,

                              child: SocialMediaIcon(
                                  ontap: (){
                                    showDailogPopUp(
                                        context,
                                        SocialMediaPopUp(


                                        ));
                                  },
                                  label: "SnapChat",menuIcon:  LeftMenuSvgs().snapCahtIcon,menuHoverIcon:  LeftMenuSvgs().snapCahtClearIcon, clr: Colors.white,iconColor: Colors.black)),
                          // SizedBox(
                          //   width: context.blockSizeHorizontal * .4,
                          // ),


                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: context.blockSizeVertical * 1.3,
                    // ),
                    //  Text("Location on Map",style: TextStyle(color: Color(0xff395279), fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, fontSize:  context.blockSizeHorizontal *.8, ),),

                    // InkWell(
                    //     onTap: () {
                    //       showDailogPopUp(
                    //         context,
                    //         const FourthPopUp(),
                    //       );
                    //     },
                    //     child:  Text(
                    //
                    //       "Add Multiple location",
                    //       style: TextStyle(color: Colors.blue,
                    //           // decoration:TextDecoration.underline,
                    //           fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*.9),
                    //     )),
                    // SizedBox(
                    //   height: context.blockSizeVertical * 0.2,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
);
      }
    );
  }
}
//////////////////
class ButtonCard extends StatelessWidget {
  final VoidCallback? ontap;
  final VoidCallback? ontapp;
  final bool? isChangeHistory;
  const ButtonCard({Key? key, required this.ontap, this.ontapp, this.isChangeHistory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
color: Colors.white,
      child: SizedBox(
        height: context.blockSizeVertical * 8,
        width: context.blockSizeHorizontal * 25,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 5,horizontal: context.blockSizeHorizontal * 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [



              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CommonButtonGradiant(onTap: ontap,
                      isInActive: isChangeHistory==true?false:true,
                      margin: EdgeInsets.zero,
                      width: context.blockSizeHorizontal * 8.2,
                      height: context.blockSizeVertical * 5,
                      label: "Customer History",
                     ),
                  SizedBox(width: context.blockSizeHorizontal*.5,),
                  CommonButtonGradiant(
                      onTap: ontapp,

                    isInActive: isChangeHistory==true?false:true,
                    margin: EdgeInsets.zero,
                      width: context.blockSizeHorizontal * 8.2,
                      height: context.blockSizeVertical * 5,
                      label: "All History",
                      ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
///////
class ProductCard extends StatelessWidget {
  final TextEditingController text;
  final TextEditingController stock;
  const ProductCard({Key? key, required this.text, required this.stock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.blockSizeVertical * 1,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "asset_images/product.png",
                  height: context.blockSizeVertical * 4,
                  width: context.blockSizeHorizontal * 4,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:context.blockSizeHorizontal*12,
                      child: Text(text.text,style: TextStyle(fontSize:context.blockSizeVertical*2,overflow: TextOverflow.ellipsis),)),

                   Text(
                    "Stock :${stock.text}",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: context.blockSizeVertical * 2,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

