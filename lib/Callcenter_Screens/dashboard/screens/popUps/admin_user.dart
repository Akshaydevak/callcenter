import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/CallCenterWidgets.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/admin_user/admin_user_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/employee_list/employee_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/user_read/admin_user_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/admin_channel_create/admin_channel_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/admin_channel_read/admin_channel_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/change_password/admin_change_password_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/channel_list/admin_channel_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminCreationUser extends StatefulWidget {
  final bool? isPatch;
  final bool? isRadOnly;
  final String? empCode;

  const AdminCreationUser({Key? key, this.isPatch, this.isRadOnly, this.empCode}) : super(key: key);

  @override
  State<AdminCreationUser> createState() => _AdminCreationUserState();
}

class _AdminCreationUserState extends State<AdminCreationUser> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController altPhoneController=TextEditingController();
  TextEditingController genderController=TextEditingController(text:"M");
  TextEditingController countryController=TextEditingController(text:
  "INDIA");
  TextEditingController buisnessCodeController=TextEditingController();
  TextEditingController departMentCodeController=TextEditingController();
  TextEditingController roleController=TextEditingController();
  TextEditingController additionlRoleController=TextEditingController();
  TextEditingController designationController=TextEditingController();
  TextEditingController setPasswordController=TextEditingController();
  TextEditingController countryCode=TextEditingController();
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Male"),value: "Male"),
    DropdownMenuItem(child: Text("Female"),value: "Female"),

  ];
  int? roleId;
  int? additionalRoleId;
  String? designationCode;
  String?  dialcode="+91";
  bool isLoading=false;




  bool _submit() {
    final isValid = _formKey?.currentState?.validate();
    print("isValidisValidisValidisValidisValid");
    print(isValid);

    _formKey.currentState?.save();
    return isValid!;
  }
  @override
  void initState() {
    if(widget.isPatch==true)context.read<AdminUserReadCubit>().getAdminUserReadRead(widget.empCode??"");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  MultiBlocListener(
      listeners: [

        BlocListener<AdminUserCreateCubit, AdminUserCreateState>(
          listener: (context, state) {
            state.maybeWhen(orElse: (){},success: (data){
              if(data.data1){

  context.read<EmployeeListCubit>().adminEmployeeList();
  context.showSnackBarSuccess(data.data2);
  Navigator.pop(context);



              }
              else{
                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: Variable.errorMessege,
                    ));
              }
              setState(() {
                isLoading=false;
              });
            },);
            // TODO: implement listener
          },
        ),
        BlocListener<AdminUserReadCubit, AdminUserReadState>(
          listener: (context, state) {
            state.maybeWhen(orElse: (){},success: (data){
           setState(() {
             fullNameController.text=data.fname??"";
             lastNameController.text=data.lname??"";
             emailController.text=data.email??"";
             designationController.text=data.designation??"";
             roleController.text=data.role??"";
             genderController.text=data.gender??"M";
             countryController.text=data.countryName??"";
             countryCode.text=data.mobileCountry?.toUpperCase()??"IN";
             altPhoneController.text=data.mobile??"";
             dialcode="+"+data.mobilecode.toString();
             designationCode=data.designation??"";

             roleId=data.roleId;
             if(data.additionalRole?.isNotEmpty==true){
               additionalRoleId=data.additionalRole?[0].uid;
               additionlRoleController.text=data.additionalRole?[0].name??"";
             }




           });
            },);
            // TODO: implement listener
          },
        ),
      ],
      child: AlertDialog(
          contentPadding: EdgeInsets.zero,

          content: PopUpHeaderCallcenterTwo(
            isCancel: false,
            isLoading: isLoading,
            rightButtonText: widget.isPatch==true?"UPDATE":"CREATE",


            width: MediaQuery.of(context).size.width/2,
            isDirectCreate: false,
            label: 'New User', onApply: () {  },onEdit: (){

          },
            onTap: () async {
              var isValdationCheck=    _submit();
              if(isValdationCheck){
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? token = prefs.getString('token');
                String? invId = prefs.getString('invId');
                AdminCreationModel model=AdminCreationModel(
                  employeeCode: widget.empCode,
                  fistName: fullNameController.text,
                  lastName: lastNameController.text,
                  email: emailController.text,
                  phoneNumber: dialcode!+altPhoneController.text,
                  gender: genderController.text,
                  nationality: countryController.text,
                  department: departMentCodeController.text,
                  designation: designationCode,
                  officialRole: roleId,
                  additonalRole: [additionalRoleId??0],
                  buinessCode: invId



                );
                print(model);
                setState(() {
                  isLoading=true;
                });
             widget.isPatch==true? context.read<AdminUserCreateCubit>().postAdminUserUpdate(model) : context.read<AdminUserCreateCubit>().postAdminUserCreate(model);
              }

            },

           dataField:
            Container(
              height: context.blockSizeVertical*70,

              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      NormalFieldText( readOnly: widget.isRadOnly??false,
                                        text: 'Full Name', controller: fullNameController,isMandatory: true,validatirText: "Enter Full Name",),
                                      SizedBox(width: 20,),
                                      NormalFieldText(
                                        readOnly: widget.isRadOnly??false,
                                        text: 'Last Name', controller:lastNameController ,isMandatory: true,validatirText: "Enter Last Name",),

                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      NormalFieldText(
                                        readOnly: widget.isRadOnly??false,
                                        controller: emailController,text: "Email Id",isMandatory: true,validatirText: "Enter Email Id",
                                        validator: (value) {
                                          print("entered to the email page");
                                          if (value.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            print("email checking case 2");
                                            return 'Enter a valid email!';
                                          }
                                          return null;
                                        },),
                                      SizedBox(width: 20,),
                                      widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Phone Number', controller: altPhoneController,isMandatory: true,validatirText: "Phone Number",):     Expanded(
                                        child: mobilePhoneext(
                                          isWidth: false,


                                          text: 'Phone Number',

                                          isMandatory: true,
                                          changeAlcode: (  va){
                                            setState(() {

                                              countryController.text=va.name;
                                              countryCode.text="${va.code}";
                                              dialcode="+${va.dialCode}";


                                            });
                                          },
                                          refresh: (val){

                                            setState(() {

                                            });
                                          },
                                          initalCode:widget.isPatch==true?countryCode.text.toString():"IN",controller:altPhoneController,formatter: true,dialCode: countryCode,onChange: ( va){



                                          },),
                                      ),





                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),

                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      Expanded(
                                        // width: 1000/2,
                                        child: Row(
                                          children: [
                                            widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Gender', controller: genderController,isMandatory: true,validatirText: "Enter Gender",):
                                      Expanded(

                                        child:Container(

                                          child:
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // width: context.blockSizeHorizontal*5.5,
                                                padding: const EdgeInsets.only(top: 4),
                                                child: Text(
                                                  "Gender",
                                                  style: TextStyle(fontSize:context.blockSizeHorizontal*.86,fontWeight: FontWeight.w500),
                                                ),

                                              ),
                                              SizedBox(
                                                height: context.blockSizeVertical * .5,
                                              ),

                                              Container(
                                                width: 400,
                                               padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1),
                                               height: context.blockSizeVertical*5.5,
                                                decoration: BoxDecoration(
                                                  color:  Colors.white ,
                                                  border: Border.all(

                                                    color: Color(0xff3E4F5B).withOpacity(.1),
                                                    width: 1, //width of border

                                                  ),

                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                child: DropdownButton(
                                                  underline: Container(),
                                                    value:  genderController.text=="M"?"Male":genderController.text=="F"?"Female":genderController?.text??"Male",
                                                    onChanged: ( newValue){
                                                      setState(() {
                                                        genderController.text=newValue.toString()??"";;
                                                      });
                                                    },
                                                    items: menuItems
                                                ),
                                              ),
                                            ],
                                          ),
                                        )



                //                         OrderTypesDropdown(
                //
                //
                //                           row: true,
                //                         padding: EdgeInsets.all(0),
                //
                //   controller1: genderController,
                //   label: "Gender",
                //   list: ["Male","Female"],
                //   value: genderController.text=="M"?"Male":genderController.text=="F"?"Female":genderController.text,
                //   onSelection: (String? val) {
                //                             setState(() {
                //                               genderController.text=val??"";
                //                             });
                //
                //
                //   },
                //   restricted: true,
                // ),
                                      ),

                                            // NormalFieldText(text: 'Geneder', controller: genderController,isMandatory: true,validatirText: "Enter Gender",),
                                            NormalFieldText(readOnly:true,text: 'Country', controller: countryController,isMandatory: true,validatirText: "Enter Country",),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),

                                      widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Designation', controller: designationController,isMandatory: true,validatirText: "Select Designation",):
                                      Expanded(
                                        child: ChannelDropdown(row: true,
                                          isMandotory: true,



                                          controller1: designationController,
                                          label: "Designation",
                                          type: "designation_list_admin",
                                          value: designationController.text,
                                          onSelection: (DesignationListModel? va) async {
                                            setState(() {
                                              print("va?.code${va?.code}");
                                              designationController.text=va?.title??"";
                                              designationCode=va?.code;
                                            });


                                          },
                                          restricted: true,
                                        ),
                                      ),
                                      // NormalFieldText(readOnly: widget.isRadOnly??false,
                                      //   text: 'Department', controller: departMentCodeController,validatirText: "Enter Department ",),





                                    ],
                                  ),
                                   SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [


                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),



                                      widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Role', controller: roleController,isMandatory: true,validatirText: "Select Role",):        Expanded(
                                        child: ChannelDropdown(row: true,
      isMandotory: true,



      controller1: roleController,
      label: "Role",
      type: "designation_role",
      value: roleController.text,
      onSelection: (GeneralRoleModel? va) async {
                                          setState(() {
                                            print(va);
                                            roleController.text=va?.role??"";
                                            roleId=va?.id;
                                          });


      },
      restricted: true,
      ),
                                      ),
                                      SizedBox(width: 20,),
                                      widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Additional Role', controller: additionlRoleController,isMandatory: true,validatirText: "Select Additional Role",):         Expanded(
                                        child: ChannelDropdown(row: true,
                                          isMandotory: true,



                                          controller1: additionlRoleController,
                                          label: "Additional Role",
                                          type: "additional_roles",
                                          value: additionlRoleController.text,
                                          onSelection: (GeneralRoleModel? va) async {
                                            setState(() {
                                              print(va);
                                              additionlRoleController.text=va?.role??"";
                                              additionalRoleId=va?.id;
                                            });


                                          },
                                          restricted: true,
                                        ),
                                      ),
                                        //
                                        // NormalFieldText(text: 'Role', controller: roleController,isMandatory: true,validatirText: "Enter Role",),




                                    ],
                                  ),
                                   SizedBox(height: context.blockSizeVertical*1.5,),


                                  // Row(
                                  //   children: [
                                  //
                                  //
                                  //     // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                  //
                                  //     widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Designation', controller: designationController,isMandatory: true,validatirText: "Select Designation",):     Expanded(
                                  //       child: ChannelDropdown(row: true,
                                  //         isMandotory: true,
                                  //
                                  //
                                  //
                                  //         controller1: designationController,
                                  //         label: "Designation",
                                  //         type: "designation_list_admin",
                                  //         value: designationController.text,
                                  //         onSelection: (DesignationListModel? va) async {
                                  //           setState(() {
                                  //             print(va);
                                  //             designationController.text=va?.title??"";
                                  //             designationCode=va?.code;
                                  //           });
                                  //
                                  //
                                  //         },
                                  //         restricted: true,
                                  //       ),
                                  //     ),
                                  //     SizedBox(width: 20,),
                                  //     Expanded(child: Container()),
                                  //
                                  //
                                  //
                                  //
                                  //
                                  //   ],
                                  // ),
                                  // SizedBox(height: context.blockSizeVertical*2,),
                                  // Row(
                                  //   children: [
                                  //     TFields(text: 'TRN Number', controller: trnNumber,isMandatory: true,validatorText: "Enter Trn number",),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     NormalFieldText(controller: buildingName,text: "Building name/Room No",isMandatory: true,validatirText: "Enter Building Name",),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     SelectableDropDownpopUp(
                                  //
                                  //       // row: true,
                                  //       code: widget.alcode,
                                  //       controller1:emirate,
                                  //       label: "State/Emirate",
                                  //       type: "StatePop_UpCall",
                                  //       value: emirate?.text??"",
                                  //       // onchange: (vale) {
                                  //       //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  //       // },
                                  //       enable: true,
                                  //       onSelection: (StateList? va) {
                                  //         isSetstate=true;
                                  //         setState(() {
                                  //
                                  //           print(va?.code.toString());
                                  //           emirate?.text = va?.name.toString() ?? "";
                                  //           // stateCode = va?.code.toString() ?? "";
                                  //           setState(() {});
                                  //         });
                                  //       },
                                  //     ),
                                  //     // NormalFieldText(text: 'State/Emirate', controller: emirate,isMandatory: true,validatirText: "Enter emirates",),
                                  //
                                  //
                                  //   ],
                                  // ),
                                  // SizedBox(height: context.blockSizeVertical*2,),
                                  // Row(
                                  //   children: [
                                  //     TFields(text: 'City', controller:city,isMandatory: true,validatorText: "Enter city",),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     NormalFieldText(text: 'Business Name', controller: street,isMandatory: true,validatirText: "Enter Sreet Name",),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     NormalFieldText(text: 'Landmark', controller: landmark,),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     // NormalFieldText(controller: area,text: "Area",isMandatory: true,validatirText: "Enter Your Area",)
                                  //   ],
                                  // ),
                                  // SizedBox(height: context.blockSizeVertical*2,),
                                  // Row(
                                  //   children: [
                                  //     // TFields(text: 'Zone', controller: zone,isMandatory: true,validatorText: "Enter Zone",),
                                  //     // SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     TFields(
                                  //       text: 'Alternative Email Id', controller: email2,),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     NormalFieldText(controller: mobile2,text: "Alternative Phone number",formatter: true,integerOnly: true,),
                                  //     SizedBox(width: context.blockSizeHorizontal*1.5,),
                                  //     Expanded(
                                  //       child: Container(),
                                  //     )
                                  //   ],
                                  // ),
                                  // SizedBox(height: context.blockSizeVertical*2,),
                                  // // Row(
                                  // //   children: [
                                  // //
                                  // //
                                  // //   ],
                                  // // ),
                                  // SizedBox(height: context.blockSizeVertical*5,),
                                  // Row(
                                  //   children: [
                                  //     SMediaField(text: 'Whatsapp', controller: whatsApp,isVisibleCheckBox: true,formatter: true,integerOnly: true,
                                  //       onSelection: (bool? va){
                                  //         isSetstate=true;
                                  //         setState(() {
                                  //           isMobile=!isMobile;
                                  //           if(isMobile){
                                  //             whatsApp.text=dialCode.text+ mobile1.text;
                                  //           }
                                  //
                                  //         });
                                  //
                                  //       },valueChanger: isMobile,),
                                  //     SizedBox(width: context.blockSizeHorizontal*.4,),
                                  //     SMediaField(text: 'Facebook', controller: fb, valueChanger: null,),
                                  //     SizedBox(width: context.blockSizeHorizontal*.4,),
                                  //     SMediaField(text: 'Instagram', controller: insta,),
                                  //     SizedBox(width: context.blockSizeHorizontal*.4,),
                                  //     SMediaField(text: 'Snapchat', controller: snap,),
                                  //
                                  //   ],
                                  // ),



                                ],
                              ))
                        ],
                      ),
                      // SizedBox(height: context.blockSizeVertical*5,),
                      // Container(
                      //   height: 50,
                      //   color: Colors.green,
                      //   child: Row(
                      //     children: [
                      //       TextOnlyButton(text: "Cancel", color1: 0xff687892, color2: 0xffFFFFFF),
                      //       TextOnlyButton(text: "CONTINUE", color1: 0xff687892, color2: 0xffFFFFFF)
                      //     ],
                      //   ),
                      // )


                    ],
                  ),
                ),
              ),
            ),


          ),

        ),
);
  }
}








class AdminCreationChannel extends StatefulWidget {
  final bool? isPatch;
  final bool? isRadOnly;
  final String? chanllelCode;

  const AdminCreationChannel({Key? key, this.isPatch, this.isRadOnly, this.chanllelCode}) : super(key: key);

  @override
  State<AdminCreationChannel> createState() => _AdminCreationChannelState();
}

class _AdminCreationChannelState extends State<AdminCreationChannel> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController addressOne=TextEditingController();
  TextEditingController location=TextEditingController();
  TextEditingController countryController=TextEditingController(text: "INDIA");
  TextEditingController emailController=TextEditingController();
  TextEditingController altPhoneController=TextEditingController();
  TextEditingController stateController=TextEditingController();
  TextEditingController landMarkController=TextEditingController();

  TextEditingController cityOrTown=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController searchName=TextEditingController();
  TextEditingController displayName=TextEditingController();
  TextEditingController description=TextEditingController();
  TextEditingController postalCode=TextEditingController();
  TextEditingController dailyGpTarget=TextEditingController();
  TextEditingController weeklyGpTarget=TextEditingController();
  TextEditingController yearlyGpTarget=TextEditingController();
  TextEditingController monthlyGpTarget=TextEditingController();
  TextEditingController countryCode=TextEditingController();
  int? roleId;
  int? additionalRoleId;
  String? designationCode;
  String?  dialcode="+91";
  bool isLoading=false;




  bool _submit() {
    final isValid = _formKey?.currentState?.validate();
    print("isValidisValidisValidisValidisValid");
    print(isValid);

    _formKey.currentState?.save();
    return isValid!;
  }
  @override
  void initState() {
    if(widget.isPatch==true)
      context.read<AdminChannelReadCubit>().getAdminChannlReadRead(widget.chanllelCode??"");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  MultiBlocListener(
        listeners: [

          BlocListener<AdminChannelCreateCubit, AdminChannelCreateState>(
            listener: (context, state) {
              state.maybeWhen(orElse: (){},success: (data){
                if(data.data1){
                  print("ssssssssssssssssssssssss");

                  context.read<AdminChannelListCubit>().adminChannelList();
                  context.showSnackBarSuccess(data.data2);
                  Navigator.pop(context);
                }
                else{
                  showDailogPopUp(
                      context,
                      FailiurePopup(
                        content: Variable.errorMessege,
                      ));
                }
                setState(() {
                  isLoading=false;
                });
              },);
              // TODO: implement listener
            },
          ),
          BlocListener<AdminChannelReadCubit, AdminChannelReadState>(
            listener: (context, state) {
              state.maybeWhen(orElse: (){},success: (data){
               setState(() {
                 name.text=data.name??"";
                 displayName.text=data.displayName??"";
                 searchName.text=data.searchName??"";
                 emailController.text=data.email??"";
                 addressOne.text=data.addressOne??"";
                 cityOrTown.text=data.cityTown??"";
                 landMarkController.text=data.landmark??"";
                 altPhoneController.text=data.phoneNumber??"";
                 countryCode.text=data.country?.toUpperCase()??"IN";
                 print("data.country${data.country}");
                 stateController.text=data.state??"";
                 location.text=data.location??"";
                 description.text=data.description??"";
                 postalCode.text=data.postalcode??"";
                 dailyGpTarget.text=data.dailyGpTarget?.toString()??"";
                 weeklyGpTarget.text=data.weeklyTargetGp?.toString()??"";
                 yearlyGpTarget.text=data.yearlyTargetGp?.toString()??"";
                 monthlyGpTarget.text=data.monthlyTargetGp?.toString()??"";
               });

              },);
              // TODO: implement listener
            },
          ),
        ],
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,

          content: PopUpHeaderCallcenterTwo(
            isLoading: isLoading,
            isCancel: false,
            rightButtonText: widget.isPatch==true?"UPDATE":"CREATE",


            width: MediaQuery.of(context).size.width/2,
            isDirectCreate: false,
            label: 'Channel', onApply: () {  },onEdit: (){

          },
            onTap: () async {
              var isValdationCheck=    _submit();
              if(isValdationCheck){
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? taxNum = prefs.getString('taxNum');
                String? invId = prefs.getString('invId');
                int? loginId = prefs.getInt('loginId');



                AdminChannelCreateModel model=AdminChannelCreateModel(
                  addressOne: addressOne.text??"",
                  location: location.text??"",
                  country: countryCode.text.isEmpty?"IN":countryCode.text,
                  state: stateController.text??"",
                  cityTown: cityOrTown.text??"",
                  landmark: landMarkController.text??"",
                  postalcode: postalCode.text??"",
                  phoneNumber:(dialcode)!+altPhoneController.text??"",
                  email: emailController.text??"",
                  name: name.text??"",
                  searchName: searchName.text??"",
                  displayName: displayName.text??"",
                  description: description.text??"",
                  inventoryId: invId,
                  trnNumber: taxNum,
                  userId: loginId.toString(),
                  weeklyTargetGp:double.tryParse( weeklyGpTarget.text)??0,
                  dailyGpTarget: double.tryParse( dailyGpTarget.text)??0,
                  yearlyTargetGp: double.tryParse( yearlyGpTarget.text)??0,
                  monthlyTargetGp: double.tryParse( monthlyGpTarget.text)??0,

                );


                print(model);


setState(() {
  isLoading=true;
});
                widget.isPatch==true?  context.read<AdminChannelCreateCubit>().postAdminChannelUpdate(widget.chanllelCode??"",model): context.read<AdminChannelCreateCubit>().postAdminCahnnelCreate(model);
              }

            },

            dataField:
            Container(
              height: context.blockSizeVertical*70,

              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      NormalFieldText( readOnly: widget.isRadOnly??false,
                                        text: 'Name', controller: name,isMandatory: true,validatirText: "Enter Name",),
                                      SizedBox(width: 20,),
                                      NormalFieldText(
                                        readOnly: widget.isRadOnly??false,
                                        text: 'Display Name', controller:displayName ,isMandatory: true,validatirText: "Enter Display Name",),
                                      SizedBox(width: 20,),
                                      NormalFieldText(
                                        readOnly: widget.isRadOnly??false,
                                        text: 'Search Name', controller:searchName ,isMandatory: true,validatirText: "Enter Search Name",),

                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      NormalFieldText(
                                        readOnly: widget.isRadOnly??false,
                                        controller: emailController,text: "Email Id",isMandatory: true,validatirText: "Enter Email Id",
                                        validator: (value) {
                                          print("entered to the email page");
                                          if (value.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            print("email checking case 2");
                                            return 'Enter a valid email!';
                                          }
                                          return null;
                                        },),
                                      SizedBox(width: 20,),
                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Address One ', controller: addressOne,isMandatory: true,validatirText: "Address One",),
                                      SizedBox(width: 20,),
                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Landmark ', controller: landMarkController,isMandatory: true,validatirText: "Landmark ",),






                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),

                                  Row(
                                    children: [
                                      widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'Phone Number', controller: altPhoneController,isMandatory: true,validatirText: "Phone Number",):
                                      Expanded(
                                        child: mobilePhoneext(
                                          isWidth: false,


                                          text: 'Phone Number',

                                          isMandatory: true,
                                          changeAlcode: (  va){
                                            setState(() {
                                              print("va.code${va.code}va.dialCode${va.dialCode}");

                                              countryController.text=va.name;

                                              countryCode.text="${va.code}";
                                              if(dialcode!="+${va.dialCode}")stateController.clear();
                                              dialcode="+${va.dialCode}";


                                            });
                                          },
                                          refresh: (val){

                                            setState(() {

                                            });
                                          },
                                          initalCode:widget.isPatch==true?countryCode.text:"IN",controller:altPhoneController,formatter: true,dialCode: countryCode,onChange: ( va){



                                        },),
                                      ),
                                      SizedBox(width: 20,),
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                      Expanded(
                                        // width: 1000/2,
                                        child: Row(
                                          children: [
                                            // NormalFieldText(text: 'Geneder', controller: genderController,isMandatory: true,validatirText: "Enter Gender",),
                                            NormalFieldText(readOnly:true,text: 'Country', controller: countryController,isMandatory: true,validatirText: "Enter Country",),
                                            widget.isRadOnly==true?  NormalFieldText(readOnly:true,text: 'State/Emirate', controller: stateController,isMandatory: true,validatirText: "State",):       Expanded(
                                              child: SelectableDropDownpopUp(
                                                // row: true,
                                                code: countryCode?.text.isEmpty==true?"IN":countryCode?.text,
                                                controller1:stateController,
                                                label: "State/Emirate",
                                                type: "StatePop_UpCall",
                                                value: stateController?.text??"",
                                                // onchange: (vale) {
                                                //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                                // },
                                                enable: true,
                                                onSelection: (StateList? va) {
                                                  setState(() {
                                                    print(va?.code.toString());
                                                    stateController?.text = va?.name.toString() ?? "";
                                                    // stateCode = va?.code.toString() ?? "";
                                                    setState(() {});
                                                  });
                                                },
                                              ),
                                            ),
                                            // NormalFieldText(readOnly:widget.isRadOnly??false,text: 'State', controller: stateController,isMandatory: true,validatirText: "Enter state",),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'City/Town ', controller: cityOrTown,isMandatory: true,validatirText: "City or town ",),








                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      NormalFieldText(readOnly: widget.isRadOnly??false,
                                        text: 'Location', controller: location,validatirText: "Location ",),

                                      SizedBox(width: 20,),

                                        NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Description', controller: description),
                                      SizedBox(width: 20,),


                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),



                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Postal code', controller: postalCode,formatter: true,integerOnly: true,),


                                      //
                                      // NormalFieldText(text: 'Role', controller: roleController,isMandatory: true,validatirText: "Enter Role",),




                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Daily Gp Target ', controller: dailyGpTarget,formatter: true),
                                      SizedBox(width: 20,),
                                        NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Weekly Targeted Gp', controller: weeklyGpTarget,formatter: true),
                                      SizedBox(width: 20,),
                                      NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Yearly  Target Gp ', controller: yearlyGpTarget,formatter: true),

                                    ],
                                  ),
                                  SizedBox(height: context.blockSizeVertical*1.5,),
                                  Row(
                                    children: [
                                      // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                     NormalFieldText(readOnly:widget.isRadOnly??false,text: 'Monthly Targeted Gp', controller: monthlyGpTarget, formatter: true),
                                      SizedBox(width: 20,),
                                      Expanded(child: Container()),
                                      SizedBox(width: 20,),
                                      Expanded(child: Container())








                                    ],
                                  ),




                                ],
                              ))
                        ],
                      ),
                      // SizedBox(height: context.blockSizeVertical*5,),
                      // Container(
                      //   height: 50,
                      //   color: Colors.green,
                      //   child: Row(
                      //     children: [
                      //       TextOnlyButton(text: "Cancel", color1: 0xff687892, color2: 0xffFFFFFF),
                      //       TextOnlyButton(text: "CONTINUE", color1: 0xff687892, color2: 0xffFFFFFF)
                      //     ],
                      //   ),
                      // )


                    ],
                  ),
                ),
              ),
            ),


          ),

        ),
      );
  }
}




class AdminChangePassword extends StatefulWidget {
  final String userName;
  AdminChangePassword({required this.userName});




  @override
  State<AdminChangePassword> createState() => _AdminChangePasswordState();
}

class _AdminChangePasswordState extends State<AdminChangePassword> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController passwordContoller=TextEditingController();
  TextEditingController confirmPasswordContoller=TextEditingController();
  bool isLoading=false;






  bool _submit() {
    final isValid = _formKey?.currentState?.validate();
    print("isValidisValidisValidisValidisValid");
    print(isValid);

    _formKey.currentState?.save();
    return isValid!;
  }

  @override
  Widget build(BuildContext context) {
    return  Builder(
      builder: (context) {
        return MultiBlocListener(
                listeners: [

                  BlocListener<AdminChangePasswordCubit, AdminChangePasswordState>(
                    listener: (context, state) {
                      state.maybeWhen(orElse: (){},success: (data){
                        if(data.data1){


                          context.showSnackBarSuccess(data.data2);
                          Navigator.pop(context);
                        }
                        else{
                          showDailogPopUp(
                              context,
                              FailiurePopup(
                                content: Variable.errorMessege,
                              ));
                        }
                        setState(() {
                          isLoading=false;
                        });

                      },);
                      // TODO: implement listener
                    },
                  ),

                ],
                child: AlertDialog(
                  contentPadding: EdgeInsets.zero,

                  content: PopUpHeaderCallcenterTwo(
                    buttonVisible: false,
                  height: context.blockSizeVertical*55,
                    // rightButtonText: widget.isPatch==true?"UPDATE":"CREATE",


                    width: MediaQuery.of(context).size.width/3,
                    isDirectCreate: false,
                    label: 'Change Password', onApply: () {  },onEdit: (){

                  },
                    onTap: ()  {


                    },

                    dataField:
                    Form(
                      key: _formKey,
                      child: SingleChildScrollView(

                        child:
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: context.blockSizeVertical*40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              PasswordTextField(text: "Password", controller: passwordContoller,password: true,
                                validator: (value) {

                                    if (value.isEmpty) {
                                      return 'Enter a valid password!';
                                    }
                                  return null;
                                },
                              ),
                              SizedBox(height: context.blockSizeVertical*2,),
                              PasswordTextField(text: " Confirm Password", controller: confirmPasswordContoller,password: true,
                                validator: (value) {

                                    if (value.isEmpty) {
                                      return 'Enter a valid password!';
                                    }
                                  return null;
                                },
                              ),
                              SizedBox(height: context.blockSizeVertical*1,),
                              CommonButtonGradiant(
                                isIndiactor: isLoading,

                                margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                                label:"Confirm Password" ,

                                height: context.blockSizeVertical*5.5,
                                width: context.blockSizeHorizontal * 23,
                                onTap: (){
                             bool ?val=     _formKey.currentState?.validate();
                             if(val==true){
                               if(confirmPasswordContoller.text!=passwordContoller.text){
                                 context.showSnackBarError("Password MissMatch");
                               }
                               else{
                                 setState(() {
                                   isLoading=true;
                                 });

                                 context.read<AdminChangePasswordCubit>().changePasswordEmployee(widget.userName, passwordContoller.text??"");
                               }

                             }



                                },

                              ),






                            ],
                          ),
                        ),
                      ),
                    ),


                  ),

                ),
              );
      }
    );
  }
}


class RejectOrderConfirmationPopup extends StatefulWidget {
  final Function(String) onTap;
  RejectOrderConfirmationPopup({required this.onTap});





  @override
  State<RejectOrderConfirmationPopup> createState() => _ARejectOrderConfirmationPopupState();
}

class _ARejectOrderConfirmationPopupState extends State<RejectOrderConfirmationPopup> {
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  TextEditingController _controller=TextEditingController();









  @override
  Widget build(BuildContext context) {
    return  Builder(
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,


          content:Container(
            height: 320,
            width: 500,
            child: Column(
              children: [
                Container(
                  height: context.blockSizeVertical*5,
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*.3 ),
                  child: Row(
                    children: [
                      Text("Reject the Order",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },icon:Icon( Icons.clear,size:17,color: Colors.grey.withOpacity(.5),),)
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.zero,
                    child: Divider()),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*2 ),
                //   child: Row(
                //     children: [
                //       Text("Accept the Order Request submited by",style: TextStyle(fontSize: context.blockSizeHorizontal*.9),),
                //       Text("Rawabi market",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*.8),),
                //       Text("on",style: TextStyle(fontSize: context.blockSizeHorizontal*.9,fontWeight: FontWeight.bold,),),
                //       Text(currentDate,style: TextStyle(fontSize: context.blockSizeHorizontal*.9)),
                //     ],
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1),
                  child: TextField(

                    controller:_controller,
                    maxLines: 7,
                    decoration: InputDecoration(

                      hintText: "Write notes regarding order rejection....",
                      isDense: true,
                      hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
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
                SizedBox(height: 4,),
                Expanded(
                  child: Container(

                    color: Color(0xffF8F8F8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CommonButtonGradiant2(

                          margin: EdgeInsets.zero,
                          width: context.blockSizeHorizontal*6,
                          height: context.blockSizeVertical*5,
                          label:"Cancel",
                          linearGraidiant:LinearGradient(
                              colors:[ Colors.grey.withOpacity(.3),
                                Colors.grey.withOpacity(.3),

                                //add more colors for gradient
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter, //end of the gradient color
                              stops: [ 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                          ),
                          onTap: (){
                            Navigator.pop(context);


                          },

                        ),
                        SizedBox(width: 5,),
                        CommonButtonGradiant2(

                          margin: EdgeInsets.zero,
                          width: context.blockSizeHorizontal*6,
                          height: context.blockSizeVertical*5,
                          label:"Reject Order",
                          linearGraidiant:LinearGradient(
                              colors:[ Colors.red,
                                Colors.red,

                                //add more colors for gradient
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter, //end of the gradient color
                              stops: [ 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                          ),
                          onTap: (){
                            widget.onTap(_controller.text);


                          },

                        ),

                      ],
                    ),
                  ),
                )



              ],
            ),
          )


        );
      }
    );
  }
}