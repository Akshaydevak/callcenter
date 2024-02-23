import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/bloc/delvivery_slotrefresh/delivery_slot_refresh_bloc.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Widgets/dropdownbutton.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import '../../Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import '../../Widgets/commonutils.dart';
import '../dashboard/screens/popUps/PopUp9.dart';


class SecondHead extends StatefulWidget {
  final bool ishold;
  final String orderTypeValue;
  final TextEditingController allCustomerId;
  final Function editChange;
  final Function rrefreshFunction;
  final FocusNode seconHeadFocusNode;


  const SecondHead(
      {Key? key, required this.ishold, required this.orderTypeValue, required this.allCustomerId, required this.editChange, required this.rrefreshFunction, required this.seconHeadFocusNode,})
      : super(key: key);

  @override
  State<SecondHead> createState() => SecondHeadState();
}
//it set to be global because vclearing in thirdhead
TextEditingController productNameDisplaySecondSectionController = TextEditingController();
TextEditingController deliveryslot = TextEditingController();
DeliverySlotResultModel deliverySlotObject = DeliverySlotResultModel();

class SecondHeadState extends State<SecondHead> {
  List<VariantList>VarList = [];

  TextEditingController serchController = TextEditingController();

onTapSecondHead(){
  if( widget.ishold==true){context.showSnackBarError(
      "Please Press Unhold");}
  else if(listCustomer?.customerUserCode == null &&
      createOrPatch != true){
    showDailogPopUp(
      context,
      WarrentyDetailsPage(),
    );
  }
  else{
    Variable.iswishListAdd=true;
    showDailogPopUp(
        context,
        NinePopUp(allCustomerId: widget.allCustomerId,
          edithChange: widget.editChange,));
  }
  // widget.ishold ? context.showSnackBarError(
  //     "Please Press Unhold") :
  // listCustomer?.customerUserCode == null &&
  //     createOrPatch != true ? showDailogPopUp(
  //   context,
  //   WarrentyDetailsPage(),
  // ) :
  // Variable.iswishListAdd=true;
  // showDailogPopUp(
  //   context,
  //   NinePopUp(allCustomerId: widget.allCustomerId,
  //     edithChange: widget.editChange,),
  // );
}
  @override
  Widget build(BuildContext context) {

    return MultiBlocListener(
      listeners: [

        BlocListener<ReadVariantCubit, ReadVariantState>(
          listener: (context, state) {
            print("READ STATE$state");
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error..read orders");
                },
                success: (data) {
                  setState(() {
                    productNameDisplaySecondSectionController.text =
                        data.name ?? "";
                  });
                }
            );
          },
        ),
      ],
      child: Container(
        color: Colors.white,
        width: context.blockSizeHorizontal * 73,
        height: context.blockSizeVertical * 8,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: context.blockSizeHorizontal * 1,),
            TextDropDown(orderTypeValue: widget.orderTypeValue ?? ""),
            Expanded(
              child: Container(
                height: context.blockSizeVertical * 5.5,
                // width: context.blockSizeHorizontal * 63,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2)),
                child: TextFormField(
                  controller: productNameDisplaySecondSectionController,
                  focusNode: widget.seconHeadFocusNode,
                  onEditingComplete: (){
                    onTapSecondHead();
                  },
                  style: TextStyle(fontSize: context.blockSizeHorizontal * 1),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    suffixIcon:
                    // Icon(Icons.search_outlined),
                    Container(
                      width: 1,
                      height: context.blockSizeVertical*3,
                      margin: EdgeInsets.symmetric(vertical: 7,
                          horizontal: context.blockSizeHorizontal * .6),
                      child: Image.asset("asset_images/searchIcon.png",height: context.blockSizeVertical*3,),
                      
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       fit: BoxFit.fitWidth,
                      //      
                      //       image: AssetImage("asset_images/searchIcon.png",),
                      //     )
                      // ),
                    ),
                    hintText: "Enter item code or name...",
                    hintStyle: TextStyle(color: Color(0xff808191),
                      fontSize: context.blockSizeVertical * 2,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide:
                      BorderSide(
                          color: Color(0xff3E4F5B).withOpacity(.2)),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide:
                      BorderSide(color: Color(0xff3E4F5B).withOpacity(.2)),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff3E4F5B).withOpacity(.2))),
                  ),
                  onTap: () {
                    onTapSecondHead();
                  },
                ),
              ),
            ),
            BlocBuilder<DeliverySlotRefreshBloc, DeliverySlotRefreshState>(
              builder: (context, state) {
                return ChannelDropdown(
                  isLabel: true,

                  controller1: deliveryslot,
                  label: "",
                  type: "delivery_slot",
                  value: deliveryslot.text,
                  onSelection: (DeliverySlotResultModel? va) async {
                    state.deliverySlotVal=va?.name??"";
                    print("deliverySlotImage${va?.deliveryCharge ?? 0}");
BlocProvider.of<DeliverySlotRefreshBloc>(context).add(DeliverySlotRefreshEvent());

                      deliveryslot.text = va?.name ?? "";
                      deliverySlotObject = deliverySlotObject.copyWith(
                        deliveryCharge: va?.deliveryCharge ?? 0,
                        id: va?.id,
                      );
                      print("deliverySlotObject.deliveryCharge${deliverySlotObject.deliveryCharge}");

                  },
                  restricted: true,
                );
              },
            ),
            SizedBox(width: context.blockSizeHorizontal * 1,),
            // Container(
            //   height: context.blockSizeVertical*8,
            //   width: context.blockSizeHorizontal*14,
            //   child: RadioButtonClass()
            //
            // ),
            // // VerticalDivider(thickness: 1,width: 1,color: Colors.black),
            // Container(
            //   child: Icon(Icons.arrow_forward_ios,),
            // )

          ],
        ),
      ),
    );
  }
}
