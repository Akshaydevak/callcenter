import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
import 'package:salesapp/Cubit/Create_Delivery_Address/create_delivery_address_cubit.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/delivery_Address_model/Delivery_Address.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../../utils/variables.dart';
import '../../../CallCenterWidgets.dart';



class FourthPopUp extends StatefulWidget {

  const FourthPopUp({Key? key,}) : super(key: key);

  @override
  State<FourthPopUp> createState() => _FourthPopUpState();
}

class _FourthPopUpState extends State<FourthPopUp> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController mobile=TextEditingController();
  TextEditingController addressType=TextEditingController();
  TextEditingController fName=TextEditingController();
  TextEditingController buildingName=TextEditingController();
  TextEditingController street=TextEditingController();
  TextEditingController city=TextEditingController();
  TextEditingController state=TextEditingController();
  TextEditingController userCode=TextEditingController();
  TextEditingController country=TextEditingController(text:"United Arab Emirates");
  TextEditingController emailController=TextEditingController();
  String countryCode="AE";
  String dialcode="+971";
  bool _submit() {
    final isValid = _formKey?.currentState?.validate();
    print("isValidisValidisValidisValidisValid");
    print(isValid);

    _formKey.currentState?.save();
    return isValid!;
  }



  @override
  Widget build(BuildContext context) {

    userCode.text=listCustomer!.customerUserCode.toString();
    return BlocListener<CreateDeliveryAddressCubit, CreateDeliveryAddressState>(
  listener: (context, state) {
    state.maybeWhen(orElse: () {
      // context.
      context.showSnackBarError("Loading");
    }, error: () {
      context.showSnackBarError(Variable.errorMessege);
    }, success: (data) {
      // context.showSnackBarSuccess("Address Created Successfully");

      if (data.data1) {
        Navigator.pop(context);

        context.showSnackBarSuccess(data.data2);
      } else {
        showDailogPopUp(
            context,
            FailiurePopup(
              content: Variable.errorMessege,
            ));


      }
    });
  },
  child: Builder(
        builder: (context) {
          return
            AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: PopUpHeaderCallcenterTwo(
                isCancel: false,
                height: context.blockSizeVertical*50,
                width: MediaQuery.of(context).size.width/1.5,
                label: "User Details",
                onApply: () {},
                onEdit: () {},
                dataField: Container(
                  height: context.blockSizeVertical*35,
                  width: MediaQuery.of(context).size.width/1.5,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Row(
                        children: [
                          Expanded(child: Container(
                            child: Column(
                              children: [
                                NormalFieldText(text: 'Full Name', controller: fName,isMandatory: true,validatirText: "Please enter Full name",isWidth: false,),
                                SizedBox(height: context.blockSizeVertical*2,),
                                NormalFieldText(controller: country,text: "Country",isWidth: false,),
                                SizedBox(height: context.blockSizeVertical*2,),
                                NormalFieldText(text: 'Street/Area', controller: street,isMandatory: true,validatirText: "Please enter Street name",isWidth: false,),

                              ],
                            ),
                          )),
                          SizedBox(width: context.blockSizeHorizontal*2.5,),
                          Expanded(child: Container(
                            child: Column(
                              children: [
                mobilePhoneext(isWidth: false,controller: mobile,text: "Contact",isMandatory: true,onChange: (){

                },
                    changeAlcode: (  va){
                      setState(() {
                        print("va?.code${va?.code}");
                        countryCode = va?.code.toString() ?? "";


                        dialcode="+${va.dialCode}";
                        country.text=va.name;


                      });
                    },
                    formatter: true,textFormFieldWidth:context.blockSizeHorizontal * 20.5,initalCode: "AE",),
                                SizedBox(height: context.blockSizeVertical*2,),
                                SelectableDropDownpopUp(

                                  // row: true,
                                  code: countryCode,
                                  controller1:state,
                                  label: "State/Emirate",
                                  type: "StatePop_UpCall",
                                  value: state?.text??"",
                                  // onchange: (vale) {
                                  //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                  // },
                                  enable: true,
                                  onSelection: (StateList? va) {
                                    setState(() {
                                      print(va?.code.toString());
                                      state?.text = va?.name.toString() ?? "";
                                      // stateCode = va?.code.toString() ?? "";
                                      setState(() {});
                                    });
                                  },
                                ),
                                SizedBox(height: context.blockSizeVertical*2,),
                                NormalFieldText(text: 'Building Name', controller: buildingName,isMandatory: true,validatirText: "Please Enter building name",isWidth: false,),






                              ],
                            ),
                          )),
                          SizedBox(width: context.blockSizeHorizontal*2.5,),
                          Expanded(child: Container(


                            child: Column(
                              children: [
                                // NormalFieldText(controller: emailController,text: "Email",isWidth: false,),
                                // SizedBox(height: context.blockSizeVertical*2,),
                                NormalFieldText(text: 'City', controller: city,isMandatory: true,validatirText: "Please select city",isWidth: false,),
                                SizedBox(height: context.blockSizeVertical*4,),
                         NewRadioButtonText(
                                              lable: "",
                                              valueAssign:(va){

                                                addressType.text=va;

                                              },

                                            ),
                                SizedBox(height: context.blockSizeVertical*12.5,),


                              ],
                            ),
                          )
                          ),

                          // Expanded(
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         SizedBox(height: context.blockSizeVertical*1,),
                          //         Row(
                          //           children: [
                          //             TFields(text: 'Full Name', controller: fName,isMandatory: true,validatorText: "Please enter Full name"),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             Expanded(
                          //               child: mobilePhoneext(isWidth: false,controller: mobile,text: "Contact",isMandatory: true,onChange: (){
                          //
                          //               },
                          //                 changeAlcode: (  va){
                          //                   setState(() {
                          //                     print("va?.code${va?.code}");
                          //                     countryCode = va?.code.toString() ?? "";
                          //
                          //
                          //                     dialcode="+${va.dialCode}";
                          //                     country.text=va.name;
                          //
                          //
                          //                   });
                          //                 },
                          //                 formatter: true,textFormFieldWidth:context.blockSizeHorizontal * 20.5,initalCode: "AE",),
                          //             ),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             NormalFieldText(controller: emailController,text: "Email",),
                          //
                          //
                          //             // NormalFieldText(controller: addressType,text: "Address Type",)
                          //           ],
                          //         ),
                          //         SizedBox(height: context.blockSizeVertical*1,),
                          //         Row(
                          //           children: [
                          //             NormalFieldText(controller: country,text: "Country",),
                          //
                          //             // TFields(controller: country,text: "Country",isMandatory: true,validatorText: "Please select Country",),
                          //             // Container(
                          //             //   width: context.blockSizeHorizontal * 17.5,
                          //             //   child: SelectableDropDownpopUp(
                          //             //
                          //             //     controller1:country,
                          //             //     label: "Country",
                          //             //     type: "ProducedCountryPopUpCall",
                          //             //     // id: base_uom ?? 0,
                          //             //     value: country?.text??"",
                          //             //
                          //             //     enable: true,
                          //             //     onSelection: (OrgList? va) {
                          //             //       setState(() {
                          //             //         state.clear();
                          //             //         country?.text = va?.name.toString() ?? "";
                          //             //         countryCode = va?.code.toString() ?? "";
                          //             //         print(" va?.code${ va?.code}");
                          //             //
                          //             //         setState(() {});
                          //             //
                          //             //         // onChange = true;
                          //             //         // orderType.text = va!;
                          //             //       });
                          //             //     },
                          //             //   ),
                          //             // ),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             Expanded(
                          //               child: SelectableDropDownpopUp(
                          //                 // row: true,
                          //                 code: countryCode,
                          //                 controller1:state,
                          //                 label: "State/Emirate",
                          //                 type: "StatePop_UpCall",
                          //                 value: state?.text??"",
                          //                 // onchange: (vale) {
                          //                 //   // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                          //                 // },
                          //                 enable: true,
                          //                 onSelection: (StateList? va) {
                          //                   setState(() {
                          //                     print(va?.code.toString());
                          //                     state?.text = va?.name.toString() ?? "";
                          //                     // stateCode = va?.code.toString() ?? "";
                          //                     setState(() {});
                          //                   });
                          //                 },
                          //               ),
                          //             ),
                          //             // NormalFieldText(text: 'State/Emirate', controller: state,isMandatory: true,),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             NormalFieldText(text: 'City', controller: city,isMandatory: true,validatirText: "Please select city",),
                          //
                          //             // NormalFieldText(controller: userCode,text: "User Code",)
                          //           ],
                          //         ),
                          //         SizedBox(height: context.blockSizeVertical*1,),
                          //         Row(
                          //           children: [
                          //             TFields(text: 'Street/Area', controller: street,isMandatory: true,validatorText: "Please enter Street name"),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             NormalFieldText(text: 'Building Name', controller: buildingName,isMandatory: true,validatirText: "Please Enter building name"),
                          //             SizedBox(width: context.blockSizeHorizontal*2.5,),
                          //             Expanded(
                          //               child: NewRadioButtonText(
                          //                 lable: "",
                          //                 valueAssign:(va){
                          //
                          //                   addressType.text=va;
                          //
                          //                 },
                          //
                          //               ),
                          //             ),
                          //
                          //
                          //           ],
                          //         ),
                          //
                          //       ],
                          //     ))
                        ],
                      ),
                    ),
                  ),
                ),

                onTap: (){

                  var isValdationCheck=    _submit();
                  if(isValdationCheck) {
                    DeliveryAddressData deliveryAddressData = DeliveryAddressData(
                        contact:dialcode+ mobile.text,
                        addressType: addressType.text,
                        buildingName: buildingName.text,
                        city: city.text,
                        country: country.text,
                        fullName: fName.text,
                        state: state.text,
                        streetName: street.text,
                        userCode: userCode.text
                    );
                    print("delAddress$deliveryAddressData");
                    setState(() {
                      context.read<CreateDeliveryAddressCubit>()
                          .createdeliveryAddress(deliveryAddressData);
                    });
                  }
                },
              ),
            );

        }
    ),
);
  }
}