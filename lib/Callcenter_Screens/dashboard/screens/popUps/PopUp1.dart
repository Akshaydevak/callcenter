import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/CallcenterAppbar.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Info_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cutsomer_group/customer_group_cubit.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/salesapp_Screens/MainScreenPage.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/shared_preference/shared_preference.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import '../../../../Widgets/commonutils.dart';
import '../../../../Widgets/dropdownbutton.dart';
import '../../../../utils/variables.dart';
import '../../../CallCenterWidgets.dart';
import '../../../CallCenter_MainScreen.dart';
import '../../../Callcenter/Profile_Screen.dart';
import 'PopUp2.dart';



class WarrentyDetailsPage extends StatefulWidget {

  const WarrentyDetailsPage({Key? key,}) : super(key: key);

  @override
  State<WarrentyDetailsPage> createState() => _WarrentyDetailsPageState();
}
// CustomerList? listCustomer;
bool userData=false;
bool isVisible=false;
bool isHideTwo=true;
class _WarrentyDetailsPageState extends State<WarrentyDetailsPage> {
 List< CustomerList>? readData=[];
  TextEditingController mobile=TextEditingController();
  TextEditingController custId=TextEditingController();
  TextEditingController fName=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Whatsapp=TextEditingController();
  TextEditingController dialCode=TextEditingController(text:"+971");
 TextEditingController alCode=TextEditingController(text:"AE");
 bool isHover=false;
 bool isSearchType=false;
 int selected=-1;

  late AutoScrollController mobileNo;
  late AutoScrollController controller;
  late AutoScrollController invContoller;
  late AutoScrollController nameContoller;
  late AutoScrollController invNameController;



  clearLoginedData()async{

    custId.text="";
    Email.text="";
    Whatsapp.text="";
    fName.text="";
    setState(()  {
      UserPreferencesCallCenter().deleteUser();
      listCustomer=null;

    });
    print("AKSHAY${listCustomer?.customerUserCode}");
    // listCustomer=CustomerList(
    //     customerUserCode:readData?[index]?.customerUserCode,
    //     id: readData?[index]?.id,
    //     isActive:readData?[index]?.isActive,
    //     mobile:readData?[index]?.mobile,
    //     email:readData?[index]?.email,
    //     businessData:readData?[index]?.businessData,
    //     businessUnit: readData?[index]?.businessUnit,
    //     customerId:readData?[index]?.customerId,
    //     dateJoined: readData?[index]?.dateJoined,
    //     isBusinessUser:readData?[index]?.isBusinessUser,
    //     isDelete:readData?[index]?.isDelete,
    //     legalUnit:readData?[index]?.legalUnit
    //
    // );
  }

  @override
  void initState() {
    Variable.mobileNo="";
    Variable.organisationCode = "";
    Variable.name="";
    Variable.inventory_ID="";
    Variable.invName="";
    isVisible=false;
    isHideTwo=false;
    mobileNo = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

  }

  String? shifa;
  saveModel(CustomerList) async{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('cart', json.encode(CustomerList()));
      shifa=prefs.getString("cart");

  }
  selectedFun(int index){
    setState(() {
      isSearchType=false;

    });
    selected=index;
    userData=true;
    isHideTwo=true;
    Variable.grpValue=0;
    Variable.shippingId=null;


    mobile.text=readData?[index]?.mobile??"";
    Variable.mobileNo = readData?[index]?.mobile ?? "";
    custId.text=readData?[index]?.customerUserCode??"";
    Email.text=readData?[index]?.email??"";
    Whatsapp.text=readData?[index]?.mobile??"";
    fName.text=readData?[index]?.customerName??"";
    Variable.shippingId=readData?[index]?.id;
    context.read<CustomerGroupCubit>().searchPromotionCustomerGroup(custId.text);
    listCustomer=CustomerList(
        customerUserCode:readData?[index]?.customerUserCode,
        id: readData?[index]?.id,
        isActive:readData?[index]?.isActive,
        state: readData?[index].state,
        mobile:readData?[index]?.mobile,
        phoneNuberCode: readData?[index].phoneNuberCode,
        email:readData?[index]?.email,
        customerName: readData?[index].customerName,
        taxId: readData?[index].taxId,
        businessData:readData?[index]?.businessData,
        customerMeta: readData?[index]?.customerMeta,
        businessUnit: readData?[index]?.businessUnit,
        customerId:readData?[index]?.customerId,
        dateJoined: readData?[index]?.dateJoined,
        isBusinessUser:readData?[index]?.isBusinessUser,
        isDelete:readData?[index]?.isDelete,
        legalUnit:readData?[index]?.legalUnit

    );
    UserPreferencesCallCenter().saveUser(listCustomer!);
    // UserPreferencesCallCenter().saveBuisnessData(listCustomer!.businessData!,listCustomer!.customerMeta!);
    // saved()async {
    //   SharedPreferences sharedPreferences = await SharedPreferences
    //       .getInstance();
    //
    //   String? authenticatedUserJsonString = sharedPreferences
    //       .getString('customer');
    //   if (authenticatedUserJsonString !=
    //       null) {
    //     listCustomer = CustomerList.fromJson(jsonDecode(authenticatedUserJsonString),
    //         );
    //   }
    // }
    saveModel(listCustomer);

  }

  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => CustomerListCubit(),
),

  ],
  child: Builder(
        builder: (context) {
          return
            BlocListener<CustomerGroupCubit, CustomerGroupState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error..");
        },

        success: (data) {
          if(data.isNotEmpty)
          UserPreferences().saveCustomerGroupDatas(data[0]);



        }
    );
  },
  child: BlocConsumer<CustomerListCubit, CustomerListState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..");
                  },

                  success: (data) {
                    setState(() {

                      print("search datassss$data");
                      readData?.clear();
                      readData = data;
                      if(readData?.isEmpty==true){
                        isVisible=false;
                        isHideTwo=false;
                        clearLoginedData();

                      }
                      else{
                        isVisible=true;
                        isHideTwo=false;

                      }

                      // mobile.text=readData?.mobile.toString()??"";

                    });
                  }
              );

  },
  builder: (context, state) {

    return AlertDialog(
      // contentPadding: EdgeInsets.zero,
      // contentPadding: EdgeInsets.only(left: 20,right: 20,top: 20),
              content: PopUpHeaderCallcenter(

                isCancel: false,
                 width: MediaQuery.of(context).size.width/2.9,
                height: context.blockSizeVertical*65,

                label: "User Details",
                onTap: (){
                  logined=true;
              if(custId.text.isNotEmpty) {

                createOrPatch=false;
                invoicePage=false;
                variantList.clear();
                newList.clear();patchList.clear();
                variantList.clear();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),invoiceOrder: false,editOrder: false,)
                    ));
                setState(() {

                });
              }
              else{
                context.showSnackBarError("User Details!");
              }

                },
                onApply: () {},
                onEdit: () {},
                dataField: Stack(
                  children: [
                    SizedBox(
                      // height: MediaQuery.of(context).size.height * .6,

                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        // height: context.blockSizeVertical*49,


                        child:                  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        SizedBox(height: context.blockSizeVertical*3.5,),
                          isSearchType==false?      mobilePhoneext(
                            isWidth: false,
                            text: 'Mobile number',textFormFieldWidth: context.blockSizeHorizontal*40,alCode: alCode,
                            controller: mobile,dialCode: dialCode,initalCode:"AE",formatter: true,onChange: (
                                String va){
                              setState(() {
                                isVisible=true;

                                if(va.isNotEmpty){
                                  context.read<CustomerListCubit>().getCustomerList(va);
                                }
                                else{
                                  context.read<CustomerListCubit>().getCustomerList(",");
                                  setState(() {

                                  });
                                }



                              });


                          },):
                          Row(
                            children: [
                              LargeTextFieldPopUp(fillColor: Colors.white,
                                width: context.blockSizeHorizontal * 40.5,
                                controller: mobile,text: "Customer Name",read: false,hintText: "Customer Name",onChange: (va){
                                setState(() {
                                  context.read<CustomerListCubit>().getCustomerList(va);
                                });


                              },),
                            ],
                          ),

                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                              child:Text(isSearchType==false?"Use User Name":"Use Mobile Number",style: TextStyle(color: Colors.orange),),
                              onPressed: () {
                              setState(() {
                                isSearchType=!isSearchType;
                                mobile.clear();
                              });
                            },),
                          ],
                        ),

                        // DropDownMobileCallCenter(
                        //   value: Variable.mobileNo,
                        //   controller1: mobile,padding: EdgeInsets.zero,
                        //   label: "Enter Phone Number",
                        //   type: "CustomerList",
                        //   onSelection: (CustomerList? va) {
                        //     setState(() {
                        //       userData=true;
                        //       Variable.mobileNo = va?.mobile ?? "";
                        //       custId.text=va?.customerUserCode??"";
                        //       Email.text=va?.email??"";
                        //       Whatsapp.text=va?.mobile??"";
                        //       fName.text=va?.businessData?.businessMeta?.fullname??"";
                        //       listCustomer=CustomerList(
                        //         customerUserCode: va?.customerUserCode,
                        //           id: va?.id,
                        //           isActive: va?.isActive,
                        //           mobile: va?.mobile,
                        //           email: va?.email,
                        //           businessData: va?.businessData,
                        //           businessUnit: va?.businessUnit,
                        //           customerId: va?.customerId,
                        //           dateJoined: va?.dateJoined,
                        //           isBusinessUser: va?.isBusinessUser,
                        //           isDelete: va?.isDelete,
                        //           legalUnit: va?.legalUnit
                        //
                        //       );
                        //       // saved()async {
                        //       //   SharedPreferences sharedPreferences = await SharedPreferences
                        //       //       .getInstance();
                        //       //
                        //       //   String? authenticatedUserJsonString = sharedPreferences
                        //       //       .getString('customer');
                        //       //   if (authenticatedUserJsonString !=
                        //       //       null) {
                        //       //     listCustomer = CustomerList.fromJson(jsonDecode(authenticatedUserJsonString),
                        //       //         );
                        //       //   }
                        //       // }
                        //       saveModel(listCustomer);
                        //   });
                        //     setState(() {
                        //       context.read<CustomerListCubit>().getCustomerList(mobile.text??"");
                        //     });},
                        //   restricted: true,
                        // ),
                        SizedBox(height: context.blockSizeVertical*.9,),
                          if(isVisible==false &&isHideTwo!=true && mobile.text.isNotEmpty )Text("The Account Does Not exist",style: TextStyle(color: Colors.red),),
                          if(isVisible==false && isHideTwo!=true)    CommonButtonGradiant(label: "You may use the same phone number",
                            fontSize: context.blockSizeHorizontal*.8,
                            height: context.blockSizeVertical * 5,
                            width: context.blockSizeHorizontal * 16.5,
                        onTap: (){
                          setState((){});
                          showDailogPopUp(
                            context,
                            SecondPopUp(dialCode: dialCode.text,alcode: alCode.text,mobileNumber:mobile ,),
                          );
                        },),
                          SizedBox(height: context.blockSizeVertical*3,),
                          Row(
                            children: [
                              LargeTextFieldPopUp(controller: custId,text: "Customer ID",read: true,hintText: "Customer Id",),
                              SizedBox(width: context.blockSizeHorizontal*1.5,),
                              LargeTextFieldPopUp(controller: fName,text: "Full Name",read: true,hintText: "Full Name",)
                            ],
                          ),
                          SizedBox(height: context.blockSizeVertical*3,),
                          Row(
                            children: [
                            LargeTextFieldPopUp(text: "Email",controller: Email,read: true,hintText: "Email",),
                              SizedBox(width: context.blockSizeHorizontal*1.5,),
                      LargeTextFieldPopUp(text: "Whatsapp",controller: Whatsapp,read: true,hintText: "Whatsapp",)
                            ],
                          ),


                      ],
                        ),
                      ),
                    ),
                    // if(readData?.isNotEmpty==true)
                      if(isVisible==true && isHideTwo!=true)       Visibility(
                      visible: isVisible,
                      child: Positioned(
                        top: context.blockSizeVertical*12,
                          child:
                        Container(
                          height: 213,
                          width: context.blockSizeHorizontal*34.5,

                          // margin: EdgeInsets.all(5),

                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border.all(color: Colors.grey.withOpacity(.2)),
                            color: Colors.white,
                          ),

                          child: BlocBuilder<CustomerListCubit, CustomerListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return customCupertinoLoading();
    },
        initial: (){
          return customCupertinoLoading();
        },
        error: (){
          return customCupertinoLoading();
        },
    loading:(){
      return customCupertinoLoading();
    },success: (data){
      return   ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: readData?.length,
        itemBuilder: (context, index){
          return    searchList(readData?[index].mobile.toString()??"",
              selected: selected,
              index: index,
              label1:readData?[index].customerName??"" ,
              height: 37,
              align: Alignment.topLeft,
                  (){
                    selectedFun(index);


                // setState(() {
                //   // context.read<CustomerListCubit>().getCustomerList(listCustomer?.customerUserCode??"");
                // });
              });
        },);
        } );



  },
),
                        ),


                      ),
                    )
                  ],
                ),
              ),
            );
  },
),
);

        }
    ),
);
  }
}