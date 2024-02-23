import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/List_Delivery_Address_Cubit/delivery_address_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delivery_address/default_delivery_address_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import '../../../../Models/delivery_Address_model/Delivery_Address.dart';
import '../../../../Widgets/ItemCard.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../CallCenterWidgets.dart';
import '../../../Callcenter/widgets.dart';



class EighthPopUp extends StatefulWidget {
  final VoidCallback rightSideScreenRefresh;

  const EighthPopUp({Key? key,required this.rightSideScreenRefresh}) : super(key: key);

  @override
  State<EighthPopUp> createState() => _EighthPopUpState();
}

class _EighthPopUpState extends State<EighthPopUp> {
  TextEditingController noOfItems=TextEditingController();
  TextEditingController totalDisc=TextEditingController();
  TextEditingController Vatable=TextEditingController();
  TextEditingController actualCost=TextEditingController();
  TextEditingController grandTotal=TextEditingController();
  String radioButtonItem = 'A Class';

  int id = 1;
  int selected = 0;


  List<DeliveryAddressData>addresslist=[];
  @override
  void initState() {
    context.read<DeliveryAddressCubit>().getDeliveryAddressList();
    // userSelectAddion();
    super.initState();
  }

  userSelectAddion(){
    DeliveryAddressData object=DeliveryAddressData();
    object=DeliveryAddressData(
      fullName: listCustomer?.businessData?.businessMeta?.fullname??"",
      streetName:  listCustomer?.businessData?.businessMeta?.street??"",
      country:  listCustomer?.businessData?.businessMeta?.country??"",
      city:  listCustomer?.businessData?.businessMeta?.city??"",
    );
    addresslist.add(object);
  }

addressChangeFunc(){

  setState(() {

    BusinessMeta buisnessMetaObject=BusinessMeta();
    BusinessData buisnessDataObject=BusinessData();
    DeliveryAddressModel addreesModel=DeliveryAddressModel(
      fullname:addresslist[Variable.grpValue].fullName ,
      street: addresslist[Variable.grpValue].streetName,
      city:  addresslist[Variable.grpValue].city,
      state: addresslist[Variable.grpValue].state,
      country: addresslist[Variable.grpValue].countryName,
      area:addresslist[Variable.grpValue].streetName,
      latitude: addresslist[Variable.grpValue].latitude,
      longitude:addresslist[Variable.grpValue].longitude ,
      buildingName: addresslist[Variable.grpValue].buildingName,



    );

    buisnessMetaObject=buisnessMetaObject.copyWith(

      street: addresslist[Variable.grpValue].streetName,
      city: addresslist[Variable.grpValue].city,

      country: addresslist[Variable.grpValue].countryName??listCustomer?.customerMeta?.country??"",
      area:addresslist[Variable.grpValue].streetName,
      altEmail:listCustomer?.customerMeta?.altEmail??"",
      altMobile:addresslist[Variable.grpValue].contact?? listCustomer?.customerMeta?.altMobile??"",

      facebook: listCustomer?.customerMeta?.facebook??"",
      fullname: listCustomer?.customerMeta?.fullname??"",
      instagram:listCustomer?.customerMeta?.instagram??"",
      landmark: listCustomer?.customerMeta?.landmark??"",
      snapchat: listCustomer?.customerMeta?.snapchat??"",

      whatsapp: listCustomer?.customerMeta?.whatsapp??"",
      zone: listCustomer?.customerMeta?.zone??"",
    );
    buisnessDataObject=buisnessDataObject.copyWith(
        businessMeta: buisnessMetaObject
    );
    listCustomer=listCustomer?.copyWith(
      customerMeta:buisnessMetaObject ,
      deliveryAddressModel:addreesModel,

      id: listCustomer?.id,
      isActive:listCustomer?.isActive,
      mobile:addresslist[Variable.grpValue].contact??listCustomer?.mobile,
      email:listCustomer?.email,
      customerName:listCustomer?.customerName,
      taxId:listCustomer?.taxId,


      businessUnit: listCustomer?.businessUnit,
      customerId: listCustomer?.customerId,
      dateJoined: listCustomer?.dateJoined,
      country: listCustomer?.country,
      isBusinessUser: listCustomer?.isBusinessUser,
      isDelete: listCustomer?.isDelete,
      legalUnit: listCustomer?.legalUnit,
      customerUserCode: listCustomer?.customerUserCode??"",


    );
  });
  widget.rightSideScreenRefresh();
}




  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => DefaultDeliveryAddressCubit(),
  child: MultiBlocListener(
  listeners: [
    BlocListener<DeliveryAddressCubit, DeliveryAddressState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error..read Customer");
        },
        success: (data) async {
          print("deliveryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
          if (data.isNotEmpty) {
            for (var i = 0; i < data.length; i++) {
              addresslist.add(data[i]);
              print("data[i]${data[i]}");
            }
          }
          setState(() {

          });

        });
  },
),
    BlocListener<DefaultDeliveryAddressCubit, DefaultDeliveryAddressState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read Customer");
            },
            success: (data) async {
              print("deliveryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy${data.data2}");
              if (data.data1) {
              await  addressChangeFunc();
              Navigator.pop(context);

                context.showSnackBarSuccess(data.data2);

              }else{

              }
              setState(() {

              });

            });
      },
    ),
  ],
  child: Builder(
        builder: (context) {
          return
            AlertDialog(
              content: PopUpHeaderCallcenterTwo(
                width: context.blockSizeHorizontal*35,
                buttonVisible: true,
                isCancel: false,


                label: "Delivery Address",
                onTap: () {

                  context.read<DefaultDeliveryAddressCubit>().postDefaultDeliverAdrress(isDefault: true,addressId:Variable.shippingId,userCode: listCustomer?.customerUserCode );

                  // context.read<DefaultDeliveryAddressCubit>().;
                  // addressChangeFunc();






                },
                onApply: (){

                },
                onEdit: () {},
                dataField: SizedBox(
                  height: context.blockSizeVertical*50,

                  child: SingleChildScrollView(
                    child:
                    Container(
                      child:Container(

                        height: context.blockSizeVertical*50,
                        width: context.blockSizeHorizontal*33,
                        child: Column(
                          children: [

                            Container(
                              height: context.blockSizeVertical*50,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) =>
                                      Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Radio(
                                                  value: index,
                                                  groupValue:Variable.grpValue ,
                                                  // addresslist.indexWhere((element) => element.defaultValue==true),
                                                  onChanged: (int? value) {
                                                    setState(()  {
                                                      Variable.grpValue=value!;
                                                      Variable.shippingId=addresslist[index].id;
                                                      print("SHIPPING${Variable.shippingId}");

                                                    });

                                                  },),
                                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Text(addresslist[index].fullName??""),
                                                      Text(" , "),
                                                      Text(addresslist[index].buildingName??""),
                                                    ],
                                                  ),
                                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Text(addresslist[index].streetName??""),
                                                      Text(" , "),
                                                      Text(addresslist[index].city??""),
                                                      Text(" , "),
                                                      Text(addresslist[index].state??""),
                                                      Text(" , "),
                                                      Text(addresslist[index].country??""),
                                                    ],
                                                  )
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                  separatorBuilder: (context, index){
                                    return SizedBox(height: 5,);
                                  } ,
                                  itemCount: addresslist.length
                              ),
                            ),
                          ],

                        ),
                      ) ,

                    ),
                  ),
                ),
              ),
            );

        }
    ),
),
);
  }
}