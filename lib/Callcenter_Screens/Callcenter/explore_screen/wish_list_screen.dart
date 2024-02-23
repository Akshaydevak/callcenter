import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen/widgets/build_widgets.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/reccomodation_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/delete_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/wish_list_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

import '../../../Models/Call_Center_Model/rightscreen/recommondation.dart';

class ExploreWishListScreen extends StatefulWidget {
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

  const ExploreWishListScreen({Key? key, required this.editChange, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory, required this.negotiationText, required this.totalCartValue, required this.addPatchInvoiceFunction,}) : super(key: key);

  @override
  State<ExploreWishListScreen> createState() => _ExploreWishListScreenState();
}

class _ExploreWishListScreenState extends State<ExploreWishListScreen> {
  List<WishListModel>listWhishList=[];
  TextEditingController searcController=TextEditingController();
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;
  bool   isPageSearch=true;


  @override
  void initState() {
    isPageSearch=false;
    Variable.iswishListAdd=false;
    context.read<WishListCubit>().getWishList();


  }
  @override
  Widget build(BuildContext context) {

        return
          Builder(
            builder: (context) {
              return MultiBlocListener(
  listeners: [
    BlocListener<WishListCubit, WishListState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read Customer");
            },
            success: (data) async {


              if(isPageSearch ||Variable.iswishListAdd){
                print("displaying data assign case");
                setState(() {
                  listWhishList=List.from(data.data);
                });
              }
              else {
             if(listWhishList.isEmpty){
               listWhishList=data.data;
             }else{
               if (data.data.isNotEmpty) {
                 for (var i = 0; i < data.data.length; i++) {


                   if(  listWhishList.any((element) => element.variantCode!=data.data[i].variantCode))
                     listWhishList.add(data.data[i]);
                 }
               }
             }



                nextPage = "";
                if (data.nextPage != null) {
                  nextPage = data?.nextPage ?? "";
                }
                else {
                  nextPage = "";
                }
                print(data.nextPage);

                setState(() {

                });
              }

              // addAllreadyExistWhislist();
            });
      },
    ),
    BlocListener<DeleteWishListCubit, DeleteWishListState>(
        listener: (context, state) {

          state.maybeWhen(
              orElse: () {

              }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {

            if (data.data1) {
              context.showSnackBarSuccess("product removed from wishlist");
              context.read<WishListCubit>().getWishList();


            } else {
              context.showSnackBarError(Variable.errorMessege);
              print(data.data1);
            }

          });

        }),
  ],
  child:
  Container(
      color: Colors.white,
      child:
      Column(
        children: [
          topIconText("Total ${listWhishList.length} products",context,ontap: (){
            isPageSearch=true;
            showDailogPopUp(
              context,
              WhisListPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
            );

          }),

          // Container(
          //   height: context.blockSizeVertical*5.5,
          //   margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*.5,  ),
          //
          //   child: Row(
          //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children:[
          //       // SizedBox(width: context.blockSizeHorizontal*.5,),
          //       Text("Total ${listWhishList.length} products",style: TextStyle(fontSize:context.blockSizeHorizontal*1,fontWeight: FontWeight.bold),),
          //       Spacer(),
          //       // IconButton(onPressed: (){
          //       //   showDailogPopUp(
          //       //     context,
          //       //     RecommodationPopup(),
          //       //   );
          //       // }, icon: Icon(Icons.menu)),
          //       InkWell(
          //         onTap: (){
          //           // showDailogPopUp(
          //           //   context,
          //           //   RecommodationPopup(allCostemerId: widget.allCostemerId,editChange: widget.editChange,),
          //           // );
          //         },
          //         child: Image(
          //             height: context.blockSizeHorizontal*1,
          //             image: AssetImage(
          //                 "asset_images/recommondationmenu.png"
          //             )),
          //       ),SizedBox(width: context.blockSizeHorizontal*.8,)
          //
          //
          //     ],
          //
          //   ),
          // ),
          SizedBox(height: context.blockSizeVertical*.01,),
          commonSearchRightScreen(context,onchange:(sa){
            isPageSearch=true;
            Variable.iswishListAdd=false;
            if(sa==""){
              context.read<WishListCubit>().getWishList();
            }
            else{
              context.read<WishListCubit>().getSearchWishList(sa);
            }

            setState(() {

            });
          },
              searcController: searcController
          ),
          SizedBox(height: context.blockSizeVertical*1,),
          BlocBuilder<WishListCubit, WishListState>(
  builder: (context, state) {
    return state .maybeWhen(orElse: (){
      return customCupertinoLoading();
    },
    loading: (){
    return customCupertinoLoading();
    },
      success: (data){
      return
        listWhishList.isEmpty?Expanded(child: Center(child: EmptyDataDisplay())):    NotificationListener<ScrollEndNotification>(
          onNotification: (scrolleEnd){
            final metrics=scrolleEnd.metrics;
            if(metrics.atEdge){
              setState(() {
                isTop=metrics.pixels==0;
              });

              if(isTop){print("isTop");}
              else{
                print("isBottom");
                print(nextPage);

                if(nextPage!=""){
                  isPageSearch=false;
                  Variable.iswishListAdd=false;
                  context.read<WishListCubit>().nextslotSectionPageList(nextPage);

                  setState(() {
                    isLoading=true;
                  });
                }



              }

            }return true;
          },
          child: Expanded(child: ListView.separated(
          itemCount:listWhishList.length,

          itemBuilder: (context, index) =>

              Container(
                margin: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*1, ),
                child:
                CallCennterCommonListtile(
                  isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
                  barcode: listWhishList[index].variantDataModel?.barcode??"",
                  onDelete: (){
                    isPageSearch=true;
                    context.read<DeleteWishListCubit>().deleteWhisList(listWhishList![index]?.variantId.toString()??"");

                  },
                  isDelet: true,
                  isFavIcon: true,
                  isWhishList: true,
                  isWislistTap: (va){

                    // context.read<DeleteWishListCubit>().deleteWhisList(listWhishList![index]?.variantId.toString()!??"");



                  },
                  title: listWhishList[index].variantDataModel?.variantame??"",
                  leadingImage: listWhishList[index].variantDataModel?.image??"",
                  subTitle:"AED ${ listWhishList[index].sellingPrice??0}" ,
                  onAdd: (){
                    setState(() {
                      widget.editChange();

                      //
                      widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                      context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                      context.read<HubListCubit>().getHubList(listWhishList[index].variantCode??"",);
                    });



                  },
                ),
              ),
          separatorBuilder: (BuildContext context, int index) { return SizedBox(height:context.blockSizeVertical*.4); },)),
        );
      }
    );

  },
),


        ],
      ))

);
            }
          );

  }
}