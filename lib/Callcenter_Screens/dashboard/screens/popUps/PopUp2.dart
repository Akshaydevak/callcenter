import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/CallcenterAppbar.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_Create_Cubit/customer_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/User_Management_Cubit/user_management_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/customer_statement/customer_statement_cubit.dart';
import 'package:salesapp/Cubit/Customer_Update_Cubit/customer_update_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/usermodel/customer_model.dart';
import 'package:salesapp/Widgets/ItemCard.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/shared_preference/shared_preference.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:some_calendar/some_calendar.dart';
import '../../../CallCenterWidgets.dart';
import '../../../CallCenter_MainScreen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jiffy/jiffy.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../User_Management/User_Management.dart';




class SecondPopUp extends StatefulWidget {
  final bool patch;
   String? alcode;
  final String? dialCode;
  final bool isNavigateTodash;
  final TextEditingController? mobileNumber;

   SecondPopUp({Key? key,  this.patch=false,  this.alcode="",  this.dialCode,this.mobileNumber,this.isNavigateTodash=true}) : super(key: key);

  @override
  State<SecondPopUp> createState() => _SecondPopUpState();
}

class _SecondPopUpState extends State<SecondPopUp> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController mobile1=TextEditingController();
  TextEditingController mobile2=TextEditingController();
  TextEditingController trnNumber=TextEditingController();
  TextEditingController fName=TextEditingController();
  TextEditingController email1=TextEditingController();
  TextEditingController email2=TextEditingController();
  TextEditingController emirate=TextEditingController();
  TextEditingController buildingName=TextEditingController();
  TextEditingController street=TextEditingController();
  TextEditingController city=TextEditingController();
  TextEditingController area=TextEditingController();
  TextEditingController zone=TextEditingController();
  TextEditingController landmark=TextEditingController();
  TextEditingController whatsApp=TextEditingController();
  TextEditingController insta=TextEditingController();
  TextEditingController fb=TextEditingController();
  TextEditingController snap=TextEditingController();
  TextEditingController dialCode=TextEditingController(text:"+91");
  TextEditingController altCode=TextEditingController(text:"+91");
  TextEditingController country=TextEditingController(text:"United Arab state");

bool isMobile=false;
bool isSetstate=false;
bool isLoading=false;

  CustomerList? customerList;
  bool _submit() {
    final isValid = _formKey?.currentState?.validate();
    print("isValidisValidisValidisValidisValid");
    print(isValid);

    _formKey.currentState?.save();
    return isValid!;
  }
  // @override
  // void initState() {
  //   fName.clear();
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    if(widget.patch==false){
      if(isSetstate==false){print("widget?.dialCode${widget?.dialCode}");
        dialCode.text=widget?.dialCode??"+91";
      mobile1.text=widget.mobileNumber?.text??"+91";}
    }


    return BlocProvider(create: (context) => CustomerCreateCubit(),
  child: Builder(
        builder: (context) {
          return
            MultiBlocListener(
              listeners: [
                BlocListener<UserManagementCubit,UserManagementState>(
                    listener: (context,state){
                      state.maybeWhen(
                          orElse: () {},
                          error: () {
                            print("error..read orders");
                          },
                          success: (data) {
                            isSetstate=true;
                            widget.patch?

                            setState(() {
                              customerList=data[0];
                              mobile1.text=customerList?.mobile??"";
                              country.text=customerList?.country??"";
                              fName.text=customerList?.customerName??"";
                              email1.text=customerList?.email??"";
                              trnNumber.text=customerList?.taxId??"";
                              emirate.text=customerList?.state??"";
                              buildingName.text=customerList?.buildingName??"";
                              street.text=customerList?.buisnessName??"";
                              city.text=customerList?.customerMeta?.city??"";
                              area.text=customerList?.customerMeta?.area??"";
                              zone.text=customerList?.customerMeta?.zone??"";
                              landmark.text=customerList?.customerMeta?.landmark??"";
                              whatsApp.text=customerList?.customerMeta?.whatsapp??"";
                              fb.text=customerList?.customerMeta?.facebook??"";
                              insta.text=customerList?.customerMeta?.instagram??"";
                              snap.text=customerList?.customerMeta?.snapchat??"";
                              widget.alcode=customerList?.phoneNumberCountryCode?.isEmpty==true||customerList?.phoneNumberCountryCode==null||customerList?.phoneNumberCountryCode=="null"?"IN":customerList?.phoneNumberCountryCode;
                              dialCode.text=customerList?.phoneNuberCode.toString().isEmpty==true ||customerList?.phoneNuberCode.toString()=="null"?"+91":"+${customerList?.phoneNuberCode.toString()}";
                              mobile2.text=customerList?.alternativeMobile??"";
                              email2.text=customerList?.customerMeta?.altEmail??"";
                              setState(() {
                              });

                            }):null;

                          }
                      );
                    }
                ),
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
                            logined=true;
                            context.showSnackBarSuccess("Customer Created Successfully");
                            UserPreferencesCallCenter().saveUser(listCustomer!);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex),)
                                ));

                            setState(() {

                            });



                          }
                      );} ),
                BlocListener<CustomerCreateCubit,CustomerCreateState>(
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
                            setState(() {
                              isSetstate=true;
                              isLoading=false;
                            });

                            if (data.data1) {
                              context.read<CustomerListCubit>().getCustomerList(mobile1.text);


                            } else {
                              showDailogPopUp(
                                  context,
                                  FailiurePopup(
                                    content: data.data2,
                                    // table:table,
                                  ));

                              // context.showSnackBarError(data.data2);
                            }

                          });
                    }
                ),
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
                            setState(() {
                              isSetstate=true;
                              isLoading=false;
                            });
                            if (data.data1) {
                              context.showSnackBarSuccess("Customer Details Successfully Updated");
                           widget.isNavigateTodash?   Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                      CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex),)
                                  )):Navigator.pop(context);
                              context.read<CustomerListCubit>().getCustomerList(listCustomer?.customerUserCode??"");
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
                            content: PopUpHeaderCallcenterTwo(
                              isCancel: false,
                              isLoading: isLoading,
                              height: context.blockSizeVertical*85,
                              width: context.blockSizeHorizontal*60,

                              label: "User Details",
                              onApply: () {},
                              onEdit: () {
                                print("cancel");
                              },
                              onTap: (){
                                print("condinue");
                            var isValdationCheck=    _submit();
                            if(isValdationCheck){
                              isSetstate=true;
                              setState(() {
                                isLoading=true;
                              });
                              CustomerCreate model=CustomerCreate(
                                  email: email1.text,
                                  altEmail: email2.text,
                                  buildingName:buildingName.text??"" ,
                                  mobile:dialCode.text+ mobile1.text,
                                  altMobile: mobile2.text,
                                  fullName: fName.text,
                                  state: emirate.text,
                                  country: widget?.alcode,
                                  businessName: street.text,
                                  taxId: trnNumber.text,
                                  area: street.text,
                                  isBuisness: true,
                                  isLogin: true,
                                  city: city.text,
                                  landmark: landmark.text,
                                  street: street.text,
                                  zone: zone.text,
                                  facebook: fb.text,
                                  instagram: insta.text,
                                  snapchat: snap.text,
                                  whatsapp:  whatsApp.text,
                                  customerUserCode: customerList?.customerUserCode??""

                              );

                              widget.patch?context.read<CustomerUpdateCubit>().postCustomerUpdate(model):
                              context.read<CustomerCreateCubit>().postCustomerCreate(model);
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
                                        children: [
                                                    mobilePhoneext(
                                                      isWidth: false,
                                                      text: 'Mobile number',
                                                      changeAlcode: (  va){
                                                        setState(() {
                                                          isSetstate=true;
                                                          widget?.alcode=va.code;
                                                          country.text=va.name;
                                                         dialCode.text="+${va.dialCode}";
                                                          print("widget.alcode${widget.alcode}");

                                                        });
                                                      },
                                                      refresh: (val){

                                                      setState(() {

                                                      });
                                                    },
                                                      initalCode:widget.alcode.toString(),controller: mobile1,formatter: true,dialCode: dialCode,onChange: ( va){

                                                      isSetstate=true;

                                                      setState(() {
                                                        if(isMobile){
                                                          whatsApp.text=va;
                                                        }
                                                      });

                                                    },),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(text: 'TRN Number', controller: trnNumber,isMandatory: false,validatirText: "Enter Trn number",isWidth: false),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(text: 'City', controller:city,isMandatory: true,validatirText: "Enter city",isWidth: false),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(
                                                                text: 'Alternative Email Id', controller: email2,isWidth: false),
                                              // NormalFieldText(isWidth: false,
                                              //   controller: email1,text: "Email Id",isMandatory: true,validatirText: "Enter Email Id",
                                              //                   validator: (value) {
                                              //                   print("entered to the email page");
                                              //                     if (value.isEmpty ||
                                              //                         !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              //                             .hasMatch(value)) {
                                              //                       print("email checking case 2");
                                              //                       return 'Enter a valid email!';
                                              //                     }
                                              //                     return null;
                                              //                   },)

                                      ],
                                    ),
                                    ),
                                            SizedBox(width: context.blockSizeHorizontal*1.5,),
                                            Expanded(
                                        child: Column(
                                        children: [
                                          NormalFieldText(text: 'Full Name', controller: fName,isMandatory: true,validatirText: "Enter Full Name",isWidth: false),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(controller: buildingName,text: "Building name/Room No",isMandatory: true,validatirText: "Enter Building Name",isWidth: false,),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(text: 'Business Name', controller: street,isMandatory: true,validatirText: "Enter Sreet Name",isWidth: false,),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(controller: mobile2,text: "Alternative Phone number",formatter: true,integerOnly: true, isWidth: false),

                                      ],
                                    ),
                                    ),
                                            SizedBox(width: context.blockSizeHorizontal*1.5,),
                                            Expanded(
                                        child: Column(
                                        children: [
                                          NormalFieldText(controller: email1,text: "Email Id",isMandatory: true,validatirText: "Enter Email Id",
                                                          validator: (value) {
                                                          print("entered to the email page");
                                                            if (value.isEmpty ||
                                                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                                    .hasMatch(value)) {
                                                              print("email checking case 2");
                                                              return 'Enter a valid email!';
                                                            }
                                                            return null;
                                                          },isWidth: false),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                                        SelectableDropDownpopUp(

                                                          // row: true,
                                                          code: widget.alcode,
                                                          controller1:emirate,
                                                          label: "State/Emirate",
                                                          type: "StatePop_UpCall",
                                                          value: emirate?.text??"",
                                                          // onchange: (vale) {
                                                          //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                                          // },
                                                          enable: true,
                                                          onSelection: (StateList? va) {
                                                            isSetstate=true;
                                                            setState(() {

                                                              print(va?.code.toString());
                                                              emirate?.text = va?.name.toString() ?? "";
                                                              // stateCode = va?.code.toString() ?? "";
                                                              setState(() {});
                                                            });
                                                          },
                                                        ),
                                          SizedBox(height: context.blockSizeVertical*2,),
                                          NormalFieldText(text: 'Landmark', controller: landmark,isWidth: false),
                                          SizedBox(height: context.blockSizeVertical*11,),


                                      ],
                                    ),
                                    ),
                                          ]
                                          //   Expanded(
                                          //       child: Column(
                                          //         crossAxisAlignment: CrossAxisAlignment.start,
                                          //         children: [
                                          //           SizedBox(height: context.blockSizeVertical*1,),
                                          //           Row(
                                          //             children: [
                                          //               mobilePhoneext(text: 'Mobile number',
                                          //                 changeAlcode: (  va){
                                          //                   setState(() {
                                          //                     isSetstate=true;
                                          //                     widget?.alcode=va.code;
                                          //                     country.text=va.name;
                                          //                    dialCode.text="+${va.dialCode}";
                                          //                     print("widget.alcode${widget.alcode}");
                                          //
                                          //                   });
                                          //                 },
                                          //                 refresh: (val){
                                          //
                                          //                 setState(() {
                                          //
                                          //                 });
                                          //               },
                                          //                 initalCode:widget.alcode.toString(),controller: mobile1,formatter: true,dialCode: dialCode,onChange: ( va){
                                          //
                                          //                 isSetstate=true;
                                          //
                                          //                 setState(() {
                                          //                   if(isMobile){
                                          //                     whatsApp.text=dialCode.text+ va;
                                          //                   }
                                          //                 });
                                          //
                                          //               },),
                                          //
                                          //               // MobileWithImage(controller: mobile1,text: "Phone Number",img1: "asset_images/cntry.png",formatter: true,),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               NormalFieldText(text: 'Full Name', controller: fName,isMandatory: true,validatirText: "Enter Full Name",),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //
                                          //               NormalFieldText(controller: email1,text: "Email Id",isMandatory: true,validatirText: "Enter Email Id",
                                          //                 validator: (value) {
                                          //                 print("entered to the email page");
                                          //                   if (value.isEmpty ||
                                          //                       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          //                           .hasMatch(value)) {
                                          //                     print("email checking case 2");
                                          //                     return 'Enter a valid email!';
                                          //                   }
                                          //                   return null;
                                          //                 },)
                                          //             ],
                                          //           ),
                                          //           SizedBox(height: context.blockSizeVertical*2,),
                                          //           Row(
                                          //             children: [
                                          //               TFields(text: 'TRN Number', controller: trnNumber,isMandatory: true,validatorText: "Enter Trn number",),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               NormalFieldText(controller: buildingName,text: "Building name/Room No",isMandatory: true,validatirText: "Enter Building Name",),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               Expanded(
                                          //                 child: SelectableDropDownpopUp(
                                          //
                                          //                   // row: true,
                                          //                   code: widget.alcode,
                                          //                   controller1:emirate,
                                          //                   label: "State/Emirate",
                                          //                   type: "StatePop_UpCall",
                                          //                   value: emirate?.text??"",
                                          //                   // onchange: (vale) {
                                          //                   //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                          //                   // },
                                          //                   enable: true,
                                          //                   onSelection: (StateList? va) {
                                          //                     isSetstate=true;
                                          //                     setState(() {
                                          //
                                          //                       print(va?.code.toString());
                                          //                       emirate?.text = va?.name.toString() ?? "";
                                          //                       // stateCode = va?.code.toString() ?? "";
                                          //                       setState(() {});
                                          //                     });
                                          //                   },
                                          //                 ),
                                          //               ),
                                          //               // NormalFieldText(text: 'State/Emirate', controller: emirate,isMandatory: true,validatirText: "Enter emirates",),
                                          //
                                          //
                                          //             ],
                                          //           ),
                                          //           SizedBox(height: context.blockSizeVertical*2,),
                                          //           Row(
                                          //             children: [
                                          //               TFields(text: 'City', controller:city,isMandatory: true,validatorText: "Enter city",),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               NormalFieldText(text: 'Business Name', controller: street,isMandatory: true,validatirText: "Enter Sreet Name",),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               NormalFieldText(text: 'Landmark', controller: landmark,),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               // NormalFieldText(controller: area,text: "Area",isMandatory: true,validatirText: "Enter Your Area",)
                                          //             ],
                                          //           ),
                                          //           SizedBox(height: context.blockSizeVertical*2,),
                                          //           Row(
                                          //             children: [
                                          //               // TFields(text: 'Zone', controller: zone,isMandatory: true,validatorText: "Enter Zone",),
                                          //               // SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               TFields(
                                          //                 text: 'Alternative Email Id', controller: email2,),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               NormalFieldText(controller: mobile2,text: "Alternative Phone number",formatter: true,integerOnly: true,),
                                          //               SizedBox(width: context.blockSizeHorizontal*1.5,),
                                          //               Expanded(
                                          //                 child: Container(),
                                          //               )
                                          //             ],
                                          //           ),
                                          //           SizedBox(height: context.blockSizeVertical*2,),
                                          //           // Row(
                                          //           //   children: [
                                          //           //
                                          //           //
                                          //           //   ],
                                          //           // ),
                                          //           SizedBox(height: context.blockSizeVertical*5,),
                                          //           Row(
                                          //             children: [
                                          //               SMediaField(text: 'Whatsapp', controller: whatsApp,isVisibleCheckBox: true,formatter: true,integerOnly: true,
                                          //                 onSelection: (bool? va){
                                          //                 isSetstate=true;
                                          //                 setState(() {
                                          //                   isMobile=!isMobile;
                                          //                   if(isMobile){
                                          //                     whatsApp.text=dialCode.text+ mobile1.text;
                                          //                   }
                                          //
                                          //                 });
                                          //
                                          //               },valueChanger: isMobile,),
                                          //               SizedBox(width: context.blockSizeHorizontal*.4,),
                                          //               SMediaField(text: 'Facebook', controller: fb, valueChanger: null,),
                                          //               SizedBox(width: context.blockSizeHorizontal*.4,),
                                          //               SMediaField(text: 'Instagram', controller: insta,),
                                          //               SizedBox(width: context.blockSizeHorizontal*.4,),
                                          //               SMediaField(text: 'Snapchat', controller: snap,),
                                          //
                                          //             ],
                                          //           ),
                                          //
                                          //
                                          //
                                          //         ],
                                          //       ))
                                          // ],
                                        ),
                                        SizedBox(height: context.blockSizeVertical*5,),
                                        Row(
                                          children: [
                                            Expanded(child:
                                            SMediaField(text: 'Whatsapp',isWidth: false, controller: whatsApp,isVisibleCheckBox: true,formatter: true,integerOnly: true,
                                                                onSelection: (bool? va){
                                                                isSetstate=true;
                                                                setState(() {
                                                                  isMobile=!isMobile;
                                                                  if(isMobile){
                                                                    whatsApp.text= mobile1.text;
                                                                  }

                                                                });

                                                              },valueChanger: isMobile,


                                                ),),
                                            SizedBox(width: context.blockSizeHorizontal*.4,),
                                            Expanded(child:SMediaField(text: 'Facebook', controller: fb, valueChanger: null,isWidth: false),
                                                              ),
                                            SizedBox(width: context.blockSizeHorizontal*.4,),
                                            Expanded(child:SMediaField(text: 'Instagram', controller: insta,isWidth: false,) ),
                                            SizedBox(width: context.blockSizeHorizontal*.4,),
                                            Expanded(child: SMediaField(text: 'Snapchat', controller: snap,isWidth: false,) )
                                          ],
                                        )

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
    ),
);
  }
}

class CalanderPopUp extends StatefulWidget {
  final String customeruserCode;
  final TextEditingController? textController;

  CalanderPopUp({required this.customeruserCode,this.textController});



  @override
  State<CalanderPopUp> createState() => _CalanderPopUpState();
}

class _CalanderPopUpState extends State<CalanderPopUp> {

  bool select=false;
  int selected = -1;
  TextEditingController startDate=TextEditingController();
  TextEditingController endDate=TextEditingController(text: DateFormat('yyyy-MM-dd').format( DateTime.now()));
  List<UserCustomerStatementListModel>customerStateMentList=[];
  var selectedDated=DateTime.now();

  List<String>warrantyTypeList=["Today","Yesterday","This Week","This Month","This Year","Custom Date"];
  @override
  void initState() {
    initializeDateFormatting();
    Intl.systemLocale = 'en_En'; // to change the calendar format based on localization
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
          builder: (context) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
                content:
                Container(
                  height: context.blockSizeVertical*50,
                    width:selected==5? context.blockSizeHorizontal*60: context.blockSizeHorizontal*1,
                  // margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.all(10),
                        width: context.blockSizeHorizontal*15,
                        decoration: BoxDecoration(
                          border:selected==5? Border(
                            right:BorderSide(color: Color(0xffE1E7ED))
                          ):null,
                        ),
                        child: Container(
                          // margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 30,),
                              Container(
                                margin: EdgeInsets.only(left: context.blockSizeHorizontal*1.8),
                                  child: Text("Report Duration",style: TextStyle(color: Color(0xff6F91CB),fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal * 1.22,))),
                              SizedBox(height: 20,),
                              Container(
                                height: context.blockSizeVertical*40,
                                child: ListView.builder(
                                  itemCount:warrantyTypeList.length ,
                                  itemBuilder: (context, index) =>    ItemCardDateCallCenter(isSelected: selected==index, onClick: () async {
                                    setState(() {
                                      selected=index;

                                    });


                                    if(selected==0){
                                      startDate.text=DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
                                      endDate.text=DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
                                      print(startDate.text);
                                      print(endDate.text);


                                    }
                                    else if(selected==1){
                                      startDate.text=DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days:1))).toString();
                                      endDate.text=DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days:1))).toString();
                                      print(startDate.text);
                                      print(endDate.text);

                                    }
                                    else if(selected==2){
                                      print( DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)))  ;
                                      print(  DateTime.now()
                                          .add(Duration(days: 7)))  ;

                                      startDate.text=DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1))).toString();
                                      endDate.text=DateFormat('yyyy-MM-dd').format( DateTime.now());
                                      print(startDate.text);
                                      print(endDate.text);

                                    }
                                    else if(selected==3){
                                      startDate.text=DateFormat('yyyy-MM-dd').format(DateTime(DateTime.now().year, DateTime.now().month, 1)).toString();
                                      print(startDate.text);
                                      print(endDate.text);

                                    }
                                    else if(selected==4){
                                      startDate.text=DateFormat('yyyy-MM-dd').format(DateTime(DateTime.now().year,1,1)).toString();
                                      print(startDate.text);
                                      print(endDate.text);

                                    }
                                    widget.textController?.text=warrantyTypeList[index]??"";
                                    Variable.dateTypeSelection=warrantyTypeList?[index]??"";
                                    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                    String? invId=sharedPreferences.getString('invId');
                                    UserCustomerStatementPostModel model=UserCustomerStatementPostModel(
                                      channelCode: invId,
                                      endDate: endDate?.text??null,
                                      startDate: startDate?.text??null,
                                      customerCode: widget?.customeruserCode??null

                                    );
                                    print(model);
                                    if(selected!=5){
                                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                   CallCenterMain(tabValue:pages.indexWhere((data)=>7==data.fixedIndex),isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                  ));
                                      context.read<CustomerStatementCubit>().getAllCustomerStatementList(model);
                                    }




                                  }, name: warrantyTypeList[index],


                                ), ),
                              ),






                            ],
                          ),
                        ),

                      ),
                      selected==5?
                       Expanded(
                        child: Container(
                          // width: context.blockSizeHorizontal*15,
                     // margin: EdgeInsets.all(10),
                     child:     Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // SizedBox(height: context.blockSizeVertical*2,),

                              //
                              // Expanded(
                              //   child: SomeCalendar(
                              //     mode: SomeMode.Range,
                              //     isWithoutDialog: false,
                              //     selectedDate: DateTime.now(),
                              //     labels: new Labels(
                              //       dialogDone: 'Selesai',
                              //       dialogCancel: 'Batal',
                              //       dialogRangeFirstDate: 'Tanggal Pertama',
                              //       dialogRangeLastDate: 'Tanggal Terakhir',
                              //     ),
                              //     // startDate: Jiffy().subtract(years: 3),
                              //     // lastDate: Jiffy().add(months: 9),
                              //     done: (date) {
                              //       setState(() {
                              //         selectedDate = date;
                              //         // showSnackbar(selectedDate.toString());
                              //       });
                              //     },
                              //   ),
                              // ),
                              Expanded(
                                child:
                                // SfDateRangePicker()
                                SomeCalendar(

                                  mode: SomeMode.Range,

                                  isWithoutDialog: false,
                                  selectedDate: selectedDated,

                                  primaryColor: Color(0xff6F91CB),
                                  textColor: Colors.black ,
                                  labels: new Labels(

                                    dialogRangeFirstDate: 'Start Date',
                                    dialogRangeLastDate: 'End Date',
                                  ),
                                  startDate: Jiffy().subtract(years: 3).dateTime,
                                  lastDate: Jiffy().add(months: 9).dateTime,
                                  done: (date) {
                                    showDailogPopUp(context, AlertDialog(
                                      content: InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>
                                                  CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                                              ));
                                        },
                                        child:
                                        Container(
                                            height: 150,
                                            child: Column(
                                              children: [
                                                Container(
                                                  // height: 80,
                                                  margin: EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Text("Are you sure to confirm the dates?"),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),

                                                Container(
                                                    height: 60,
                                                    // d
                                                    color:  Color(0xffF8F8F8),
                                                    child:Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children:[
                                                          Container(
                                                            margin: EdgeInsets.only(bottom: 5),
                                                            child: TextButtonLarges(
                                                              text: "Cancel",
                                                              labelcolor:Colors.grey ,

                                                              clr: Colors.white,
                                                              onPress: () {

                                                                  Navigator.pop(context);
                                                              },
                                                            ),
                                                          ),   Container(
                                                            margin: EdgeInsets.only(bottom: 5),
                                                            child:  TextButtonLarges(
                                                                text:"Confirm",
                                                                onPress: () {
                                                                  if(date.isNotEmpty==true){
                                        print("akshay is the real hero");

                                        startDate.text=DateFormat('yyyy-MM-dd').format(date[0]).toString();
                                        endDate.text=DateFormat('yyyy-MM-dd').format(date[date.length-1]).toString();

                                        // endDate.text=DateFormat('dd-MM-yyyy').format(DateTime.parse(date[date.length-1])).toString();
                                        print(startDate.text);
                                        print(endDate.text);
                                            UserCustomerStatementPostModel model=UserCustomerStatementPostModel(
                                                channelCode: "invId",
                                                endDate: endDate?.text??null,
                                                startDate: startDate?.text??null,
                                                customerCode: widget?.customeruserCode??null

                                            );


print("kooo");
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) =>
                                                    CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                                                ));

                                        context.read<CustomerStatementCubit>().getAllCustomerStatementList(model);
                                        // Navigator.pop(context);




                                      }
                                                                }
                                                              // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);

                                                            ),
                                                          ),

                                                          // ],


                                                        ]
                                                    )
                                                )
                                              ],
                                            )),
                                      ),
                                    ));
                                    try{
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                                          ));
                                    }catch(e){
                                      print("the error is here$e");
                                    }



//                                       if(date.isNotEmpty==true){
//                                         print("akshay is the real hero");
//
//                                         startDate.text=DateFormat('yyyy-MM-dd').format(date[0]).toString();
//                                         endDate.text=DateFormat('yyyy-MM-dd').format(date[date.length-1]).toString();
//
//                                         // endDate.text=DateFormat('dd-MM-yyyy').format(DateTime.parse(date[date.length-1])).toString();
//                                         print(startDate.text);
//                                         print(endDate.text);
//                                             UserCustomerStatementPostModel model=UserCustomerStatementPostModel(
//                                                 channelCode: "invId",
//                                                 endDate: endDate?.text??null,
//                                                 startDate: startDate?.text??null,
//                                                 customerCode: widget?.customeruserCode??null
//
//                                             );
//
//
// // print("kooo");
// //                                             Navigator.push(
// //                                                 context,
// //                                                 MaterialPageRoute(builder: (context) =>
// //                                                     CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
// //                                                 ));
//
//                                         // context.read<CustomerStatementCubit>().getAllCustomerStatementList(model);
//                                         // Navigator.pop(context);
//
//
//
//
//                                       }
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(builder: (context) =>
                                    //         CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                                    //     ));

                                  },
                                ),
                              ),
                              // CommonButtonGradiant(
                              //   margin: EdgeInsets.only(top: context.blockSizeVertical*.15),
                              //   label:"SUBMIT" ,
                              //   height: context.blockSizeVertical*4.5,
                              //   width: context.blockSizeHorizontal*8.5 ,
                              //   onTap: (){
                              //     UserCustomerStatementPostModel model=UserCustomerStatementPostModel(
                              //         channelCode: "invId",
                              //         endDate: endDate?.text??null,
                              //         startDate: startDate?.text??null,
                              //         customerCode: widget?.customeruserCode??null
                              //
                              //     );
                              //     print(model);
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(builder: (context) =>
                              //             CallCenterMain(tabValue: 4,isCustomerStatemnet:true,userCutsomerCode: widget?.customeruserCode,)
                              //         ));
                              //   },
                              //
                              // ),
                              // SizedBox(height: context.blockSizeVertical*2,),

                            ],
                          )

                        ),
                      ):Container(),
                    ],
                  )

                )
            );
          }
      );



  }
}