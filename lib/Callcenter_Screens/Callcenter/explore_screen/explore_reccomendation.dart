import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/Profile_Screen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen/widgets/build_widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/gp_card.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp5.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp6.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/offer_products.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/reccomodation_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/purchase_history_reccomendation/purchase_recommendation_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Cubit/negotationList/negotation_list_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_post_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ExploreReccomendationScreen extends StatefulWidget {
  final Function editChange;
  final Function addPatchInvoiceFunction;
  final TextEditingController? allCostemerId;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController       negotiationText;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;
  final Function priceDataChange;
  final bool? isChangeHistory;
  final double totalCartValue;
  const ExploreReccomendationScreen({Key? key, required this.editChange, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory, required this.negotiationText, required this.totalCartValue, required this.addPatchInvoiceFunction}) : super(key: key);

  @override
  State<ExploreReccomendationScreen> createState() => _ExploreReccomendationScreenState();
}

class _ExploreReccomendationScreenState extends State<ExploreReccomendationScreen> {
  List<RecommendationCallCenterModel> recommendationlist=List.from([]);
  List<RecommendationCallCenterModel> purchaseRecommendationlist=List.from([]);
  GpCardData? GpData;
  NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
  String negotationText="";
  @override
  void initState() {

    context.read<RecommendationCubit>().getRecommendationList();
    context.read<PurchaseRecommendationCubit>().getPurchaseRecommendationList("");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<PurchaseRecommendationCubit, PurchaseRecommendationState>(
  listener: (context, state) {
    state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (data) {
                  recommendationlist=List.from(data.data);

                });
  },
  child: BlocConsumer<RecommendationCubit, RecommendationState>(
      listener: (context, state) {

        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {

              setState(() {
                purchaseRecommendationlist=List.from(data.data);
              });

            });
      },
      builder: (context, state) {
        return
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(child: Column(
                    children: [
                      topIconText("Popular Recommendation",context,ontap: (){
                        showDailogPopUp(
                          context,
                          RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
                        );

                      }),


                      Expanded(child:recommendationlist.isEmpty? Center(child: EmptyDataDisplay()): ListView.separated(
                        itemCount: recommendationlist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>

                            Container(
                              margin: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*1, ),
                              child: CallCennterCommonListtile(
                                title: recommendationlist[index].name??"",
                                stock: recommendationlist[index]?.stockCount.toString()??"",
                                leadingImage: recommendationlist[index].image1??"",
                                subTitle:"AED ${recommendationlist[index].priceData.toString()}" ,
                                onAdd: (){
                                  setState(() {
                                    widget.editChange();

                                    widget.allCostemerId?.text=recommendationlist[index].id.toString();
                                    context.read<HubListCubit>().getHubList(recommendationlist[index].code??"",);
                                    context.read<ReadVariantCubit>().getVariantRead(recommendationlist[index].id??0);
                                  });



                                },
                              ),
                            ),
                        separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 1.5,); },)),
                    ],
                  )),
                  Expanded(
                    child:PurchaseRecoomendationScreen(purchaselist: purchaseRecommendationlist,allCostemerId: widget.allCostemerId,editChange: widget.editChange,)
                  )



                ],
              ));
      },
    ),
);
  }
}

class PurchaseRecoomendationScreen extends StatelessWidget {
  final List <RecommendationCallCenterModel> purchaselist;
  final TextEditingController? allCostemerId;
  final Function editChange;
  const PurchaseRecoomendationScreen({super.key, required this.purchaselist,  this.allCostemerId, required this.editChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
      topIconText("Purchase Recommendation",context,ontap: (){
        showDailogPopUp(
      context,
          PurchaseRecommodationPopup(allCostemerId: allCostemerId,editChange:editChange,),
        );

      }),


      Expanded(child:purchaselist.isEmpty? Center(child: EmptyDataDisplay()): ListView.separated(
        itemCount: purchaselist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>

        Container(
          margin: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*1, ),
          child: CallCennterCommonListtile(
            title: purchaselist[index].name??"",
            stock: purchaselist[index]?.stockCount.toString()??"",
            leadingImage: purchaselist[index].image1??"",
            subTitle:"AED ${purchaselist[index].priceData.toString()}" ,
            onAdd: (){

             editChange();

              allCostemerId?.text=purchaselist[index].id.toString();
                context.read<HubListCubit>().getHubList(purchaselist[index].code??"",);
                context.read<ReadVariantCubit>().getVariantRead(purchaselist[index].id??0);




            },
          ),
        ),
        separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 1.5,); },))]));
  }
}


