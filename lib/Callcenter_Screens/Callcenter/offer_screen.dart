import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Profile_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/gp_card.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp5.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp6.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Cubit/offer/offer_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CallcnterOfferScreen extends StatefulWidget {
  final Function editChange;
  final TextEditingController? allCostemerId;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;
  final Function priceDataChange;
  final bool? isChangeHistory;
  const CallcnterOfferScreen({Key? key, required this.editChange, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory}) : super(key: key);

  @override
  State<CallcnterOfferScreen> createState() => _CallcnterOfferScreenState();
}

class _CallcnterOfferScreenState extends State<CallcnterOfferScreen> {

  int selected=1;
  GpCardData? GpData;
  List<offerCallCenterModel> offerList=[];
  @override
  void initState() {
    context.read<GpCardReadCubit>().getGpCallcenter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => OfferCubit()..getOfferList("1"),
  child: BlocConsumer<OfferCubit, OfferState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              offerList=List.from(data.data);


            });
      },
      builder: (context, state) {
        return Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: context.blockSizeVertical*13,
                  color: Colors.white,
                  child:Center(
                    child: Container(
                      height: context.blockSizeVertical*5,
                      width:context.blockSizeHorizontal*15,

                      decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey.withOpacity(.8)),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: InkWell(
                            onTap: (){
                              setState(() {
                                selected=1;
                                context.read<OfferCubit>().getOfferList("1");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors:selected==1?  [Color(0xff687892),
                                      Color(0xff8498B8)]: [Color(0xffffff),
                                      Color(0xffffff)],
                                )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Center(child: Text("Exclusive offers",style: TextStyle(color: selected==1?Colors.white:Colors.black),))),
                                ],
                              ),
                            ),
                          )),
                          Expanded(child: InkWell(
                            onTap: (){
                              setState(() {
                                selected=2;
                                context.read<OfferCubit>().getOfferList("2");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors:selected==2?  [Color(0xff687892),
                                      Color(0xff8498B8)]: [Color(0xffffff),
                                      Color(0xffffff)],
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Center(child: Text("Others",style: TextStyle(color: selected==2?Colors.white:Colors.black),))),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),

                    ),
                  )


                ),

                BlocBuilder<OfferCubit, OfferState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){return
      Expanded(child: listcustomCupertinoLoading(context));},
    loading: (){
      return
        Expanded(child: listcustomCupertinoLoading(context));
    },success: (data){
      return      Expanded(child: offerList.isEmpty?EmptyDataDisplay():ListView.separated(
        itemCount: offerList.length,
        itemBuilder: (context, index) =>

            CallCennterCommonListtile(
              title:offerList[index].name??"",
              stock: offerList[index].stockCount?.toString()??"",
              leadingImage:offerList[index].image1??"",
              subTitle:"AED ${offerList[index].sellingPrice}" ,
              onAdd: (){
                widget.editChange();
                widget.allCostemerId?.text=offerList[index].id.toString();
                context.read<ReadVariantCubit>().getVariantRead(offerList[index].id??0);
                context.read<HubListCubit>().getHubList(offerList[index].code??"",);


              },
            ),
        separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 1,); },));
        }
    );


  },
),
                // SizedBox(height: context.blockSizeVertical*.3,),
                // ButtonCard(isChangeHistory: widget.isChangeHistory,
                //   ontap: () async {
                //     if(widget.isChangeHistory!){
                //       SharedPreferences prefs = await SharedPreferences.getInstance();
                //       String? channelCode = prefs.getString('channel_code');
                //       // String? channelCode = "CHNL1000"
                //       String? customerCode = prefs.getString('customerUserCode');
                //       if(  createOrPatch!=true && invoicePage!=true){
                //         widget.customerUsercode?.text=customerCode??"";
                //       }
                //       else{}
                //       showDailogPopUp(
                //         context,
                //         FifthPopUp(
                //           allCostemerId: widget.allCostemerId,
                //           customerUsercode: widget.customerUsercode,
                //
                //           productName: widget.productName,
                //           barcode: widget.barcode,
                //         ),
                //       );
                //     }
                //
                //   },
                //   ontapp: () async {
                //     if(widget.isChangeHistory!){
                //       SharedPreferences prefs = await SharedPreferences.getInstance();
                //       String? channelCode = prefs.getString('channel_code');
                //       // String? channelCode = "CHNL1000"
                //       String? customerCode = prefs.getString('customerUserCode');
                //       showDailogPopUp(
                //         context,
                //         SixthPopUp(
                //           allCustomerId: widget.allCostemerId,
                //           customerUsercode: widget.customerUsercode,
                //           productName: widget.productName,
                //           barcode: widget.barcode,
                //
                //         ),
                //       );
                //     }
                //
                //   },
                //
                // ),
                // SizedBox(height: context.blockSizeVertical*.5,),
                //
                // SizedBox(height: context.blockSizeVertical*.5,),
                //
                // Container(
                //   color: Colors.white,
                //
                //   child: SizedBox(height: context.blockSizeVertical*4.3,
                //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children:  [
                //         Text("Average Basket Value :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                //         Text(Variable.averageBasketValue?.toString()??"0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: context.blockSizeHorizontal*1),),
                //       ],),
                //   ),
                // ),
                // SizedBox(height: context.blockSizeVertical*.4,),
                //
                // GPCardLong(
                //   currentGP: GpData?.currentGp??0.0,
                //   dailyGP: GpData?.dailyGp??0.0,
                // )


              ],
            ));
      },
    ),
);
  }
}