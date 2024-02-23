import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/CallCenterWidgets.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/all_cart_list/all_cart_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/list_cart_order_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_cart/delete_cart_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/delete_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/post_wish_list/post_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/purchase_history_reccomendation/purchase_recommendation_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/whishlist_all/whish_list_all_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/wish_list_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

class RecommodationPopup extends StatefulWidget {
  final TextEditingController? allCostemerId;
  final Function editChange;
  RecommodationPopup({ this.allCostemerId, required this.editChange});



  @override
  State<RecommodationPopup> createState() => _RecommodationPopupState();
}

class _RecommodationPopupState extends State<RecommodationPopup> {
  List<RecommendationCallCenterModel> recommendationlist=List.from([]);

  @override
  void initState() {
    context.read<RecommendationCubit>()
        .getRecommendationList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendationCubit, RecommendationState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              recommendationlist=List.from(data.data);

            });
      },
      builder: (context, state) {
        return Builder(
            builder: (context) {
              return
                AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: PopUpHeaderCallcenterTwo(
                      isCancel: false,
                      buttonVisible: false,
                      height: context.blockSizeVertical * 85,

                      label: "Recommendation",
                      onApply: () {},
                      onEdit: () {
                        print("cancel");
                      },
                      onTap: () {


                      },
                      dataField: Column(
                        children: [
                          Container(
                            height: context.blockSizeVertical * 70,
                            child: ListView.separated(
                              // shrinkWrap:true,
                              itemCount: recommendationlist.length,
                              itemBuilder: (context, index) =>

                                  CallCennterCommonListtile(
                                    title: recommendationlist[index].name??"",
                                    stock: recommendationlist[index].stockCount.toString()??"",
                                    leadingImage: recommendationlist[index].image1??"",
                                    subTitle:"AED ${recommendationlist[index].priceData.toString()}" ,
                                    onAdd: (){
                                      Navigator.pop(context);
                                      widget.editChange();
                                      widget.allCostemerId?.text=recommendationlist[index].id.toString();
                                      context.read<ReadVariantCubit>().getVariantRead(recommendationlist[index].id??0);
                                      context.read<HubListCubit>().getHubList(recommendationlist[index].code??"",);


                                    },
                                  ),
                              separatorBuilder: (BuildContext context,
                                  int index) {
                                return SizedBox(height: 1,);
                              },),
                          )
                        ],
                      )

                  ),
                );
            }
        );
      },
    );
  }
}




class PurchaseRecommodationPopup extends StatefulWidget {
  final TextEditingController? allCostemerId;
  final Function editChange;
  PurchaseRecommodationPopup({ this.allCostemerId, required this.editChange});



  @override
  State<PurchaseRecommodationPopup> createState() => _PurchaseRecommodationPopupState();
}

class _PurchaseRecommodationPopupState extends State<PurchaseRecommodationPopup> {
  List<RecommendationCallCenterModel> recommendationlist=List.from([]);

  @override
  void initState() {
    context.read<PurchaseRecommendationCubit>()
        .getPurchaseRecommendationList("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseRecommendationCubit, PurchaseRecommendationState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              recommendationlist=List.from(data.data);

            });
      },
      builder: (context, state) {
        return Builder(
            builder: (context) {
              return
                AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: PopUpHeaderCallcenterTwo(
                      isCancel: false,
                      buttonVisible: false,
                      height: context.blockSizeVertical * 85,

                      label: "Purchase Recommendation",
                      onApply: () {},
                      onEdit: () {
                        print("cancel");
                      },
                      onTap: () {


                      },
                      dataField: Column(
                        children: [
                          Container(
                            height: context.blockSizeVertical * 70,
                            child: ListView.separated(
                              // shrinkWrap:true,
                              itemCount: recommendationlist.length,
                              itemBuilder: (context, index) =>

                                  CallCennterCommonListtile(
                                    title: recommendationlist[index].name??"",
                                    stock: recommendationlist[index].stockCount.toString()??"",
                                    leadingImage: recommendationlist[index].image1??"",
                                    subTitle:"AED ${recommendationlist[index].priceData.toString()}" ,
                                    onAdd: (){
                                      Navigator.pop(context);
                                      widget.editChange();
                                      widget.allCostemerId?.text=recommendationlist[index].id.toString();
                                      context.read<ReadVariantCubit>().getVariantRead(recommendationlist[index].id??0);
                                      context.read<HubListCubit>().getHubList(recommendationlist[index].code??"",);


                                    },
                                  ),
                              separatorBuilder: (BuildContext context,
                                  int index) {
                                return SizedBox(height: 1,);
                              },),
                          )
                        ],
                      )

                  ),
                );
            }
        );
      },
    );
  }
}

class CartListPopup extends StatefulWidget {




  @override
  State<CartListPopup> createState() => _CartListPopupState();
}

class _CartListPopupState extends State<CartListPopup> {
  List<CartListModel> cartList =List.from([]);
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;
  bool   isPageSearch=false;
  List<String?>allreadyExistWhislist=[];
  List<WishListModel>listWhishList=[];
  TextEditingController searcController=TextEditingController();
  addAllreadyExistWhislist(){
    // List<WishListModel> listWhishList
    allreadyExistWhislist.clear();
    if(listWhishList.isNotEmpty){
      for(var item in listWhishList){
        allreadyExistWhislist.add(item.variantCode);
      }
    }
    setState(() {

    });


  }

  @override
  void initState() {
    context.read<AllCartListCubit>().getAllCArtOrderList();
    context.read<WishListCubit>().getWishList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => DeleteCartCubit(),
),
    BlocProvider(
      create: (context) => PostWishListCubit(),
    ),
  ],
  child: MultiBlocListener(
        listeners: [
          BlocListener<DeleteCartCubit, DeleteCartState>(
            listener: (context, state) {
              state.maybeWhen(orElse: () {
                // context.
                context.showSnackBarError("Loading");
              }, error: () {
                // context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                if (data.data1) {
                  context.showSnackBarSuccess(
                      "deleted success fully");
                  print("created cart orderdsaaaaa");
                  isPageSearch=true;
                  context.read<ListCartOrderCubit>().getCArtOrderList();
                  context.read<AllCartListCubit>().getAllCArtOrderList();
                  // Variable.invoiceIdPay=data.data2;
                  // context.showSnackBarSuccess("Successfully invoiced");
                  // context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId);
                } else {
                  context.showSnackBarError(Variable.errorMessege);
                }
              });
            },
          ),
          BlocListener<WishListCubit, WishListState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read Customer");
                  },
                  success: (data) async {
                    listWhishList=List.from(data.data);
                    addAllreadyExistWhislist();
                  });
            },
          ),
          BlocListener<PostWishListCubit, PostWishListState>(
              listener: (context, state) {

                state.maybeWhen(
                    orElse: () {

                    }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {

                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    Variable.iswishListAdd=true;
                    context.read<WishListCubit>().getWishList();


                  } else {
                    context.showSnackBarError(Variable.errorMessege);
                    print(data.data1);
                  }

                });

              }),
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
                  Variable.iswishListAdd=true;

                });

              }),

        ],
        child: BlocConsumer<AllCartListCubit, AllCartListState>(
          listener: (context, state) {
            print("state++++++++++++++++++++++++++++++++");
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (data) {





                  if(isPageSearch){

                    setState(() {
                      cartList=List.from(data.data);
                    });
                  }
                  else {
                    if (data.data.isNotEmpty) {
                      for (var i = 0; i < data.data.length; i++) {
                        cartList.add(data.data[i]);
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

                });
          },
          builder: (context, state) {
            return Builder(
                builder: (context) {
                  return
                    AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: PopUpHeaderCallcenterTwo(
                          isCancel: false,
                          buttonVisible: false,
                          height: context.blockSizeVertical * 85,

                          label: "Cart",
                          onApply: () {},
                          onEdit: () {
                            print("cancel");
                          },
                          onTap: () {


                          },
                          dataField: SingleChildScrollView(

                            child: Column(
                              children: [
                                commonSearchRightScreen(

                                    context,
                                    margin: EdgeInsets.zero,
                                    onchange:(sa){
                                  isPageSearch=true;
                                  if(sa==""){
                                    context
                                        .read<AllCartListCubit>()
                                      ..getAllCArtOrderList();
                                  }
                                  else{
                                    context
                                        .read<AllCartListCubit>()
                                        .getSearchAllCartList(searcController.text??"");
                                  }

                                  setState(() {

                                  });
                                },
                                    searcController: searcController
                                ),
                                SizedBox(height: 3,),
                                BlocBuilder<AllCartListCubit, AllCartListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return Center(child: customCupertinoLoading(),);
    },
      loading: (){
        return Center(child: customCupertinoLoading(),);
      },
      success: (data){
      return    SingleChildScrollView(
        child: Container(
height: context.blockSizeVertical * 65,

          child: Column(
            children: [
    cartList.isNotEmpty?      Expanded(
        child: Container(
                  // height: context.blockSizeVertical * 70,
                  // height: 30,
                  child: NotificationListener<ScrollEndNotification>(
                    onNotification: (scrolleEnd){
                      final metrics=scrolleEnd.metrics;
                      if(metrics.atEdge){
                        setState(() {
                            isTop=metrics.pixels==0;
                        });

                        if(isTop){print("isTop");}
                        else{
                            print("isBottom");
                            if(nextPage!=""){
                              isPageSearch=false;
                              context.read<ListCartOrderCubit>().nextslotSectionPageList(nextPage);

                              setState(() {
                                isLoading=true;
                              });
                            }



                        }

                      }return true;
                    },
                    child: ListView.separated(
                      // shrinkWrap:true,
                      itemCount: cartList.length,
                      itemBuilder: (context, index) =>

                            CallCennterCommonListtile(

                              quantity:cartList[index]?.quantity.toString()??"" ,

                              // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,

                              isButton: true,
                              isDelet: true,
                              isFavIcon: true,
                              isWhishList: allreadyExistWhislist.contains(cartList![index].variantCode),
                              isWislistTap: (va){
                                print(va);
                                if(va){
                                  context.read<PostWishListCubit>().postWhisList(cartList![index]?.variantId.toString()??"", cartList![index]?.variantCode??"");

                                }
                                else{
                                  context.read<DeleteWishListCubit>().deleteWhisList(cartList![index]?.variantId.toString()!??"");

                                }

                              },

                              isAdd: false,
                              onDelete: (){


                                AddressCart address=AddressCart(
                                      country:listCustomer?.customerMeta?.country??"",
                                      state:  listCustomer?.customerMeta?.state??"",
                                      area: listCustomer?.customerMeta?.area??"",
                                      location: listCustomer?.customerMeta?.area??"",
                                      buildingNumber: listCustomer?.buildingName??"",
                                );

                                List<CartLinesModel> cartLines=[];

                                cartLines.add(CartLinesModel(
                                      image:cartList[index].image,
                                      vat: cartList[index].vat,
                                      variantCode:cartList[index].variantCode,
                                      inventoryId:cartList[index].inventoryId,
                                      variantId: cartList[index].variantId,
                                      quantity:cartList[index].quantity,
                                      offerDetails: cartList[index].offerDetails,
                                      variantName: cartList[index].variantName,
                                      barcode:cartList[index].barcode,
                                      price: cartList[index].price,
                                      isActive: false,
                                      deliverySlotId: cartList[index].deliverySlotID,
                                )) ;



                                print("cartlines model$cartLines");
                                context.read<DeleteCartCubit>().postDeleteCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,cartLinesModel: cartLines??[],address:address ));

                              },


                              title: cartList[index].variantName??"",

                              leadingImage: cartList[index].image??"",
                              subTitle: "AED ${  cartList[index].price}",
                              onAdd: () {
                                setState(() {
                                      //
                                      // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                                      // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                                });
                              },
                            ),
                      separatorBuilder: (BuildContext context,
                            int index) {
                        return SizedBox(height: 1,);
                      },),
                  ),
                ),
    ):Container(
            margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
            height: context.blockSizeVertical*60,
            color: Colors.white,
            child: EmptyDataDisplay()),
            ],
          ),
        ),
      );
      }
    );

  },
),
                              ],
                            ),
                          )

                      ),
                    );
                }
            );
          },
        ),
      ),
);
  }
}

class WhisListPopup extends StatefulWidget {
  final TextEditingController? allCostemerId;
  final Function editChange;
  WhisListPopup({ this.allCostemerId, required this.editChange});




  @override
  State<WhisListPopup> createState() => _WhisListPopupState();
}

class _WhisListPopupState extends State<WhisListPopup> {
  List<WishListModel>listWhishList =List.from([]);
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;
  bool   isPageSearch=false;
  TextEditingController searcController=TextEditingController();

  @override
  void initState() {
    context.read<WhishListAllCubit>().getAllWishList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DeleteWishListCubit, DeleteWishListState>(
            listener: (context, state) {

              state.maybeWhen(
                  orElse: () {

                  }, error: () {
                context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {

                if (data.data1) {
                  context.showSnackBarSuccess(data.data2);
                  context.read<WishListCubit>().getWishList();
                  context.read<WhishListAllCubit>().getAllWishList();


                } else {
                  context.showSnackBarError(Variable.errorMessege);
                  print(data.data1);
                }

              });

            }),

      ],
      child:




      BlocConsumer<WhishListAllCubit, WhishListAllState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {





                if(isPageSearch){

                  setState(() {
                    listWhishList=List.from(data.data);
                  });
                }
                else {
                  if (data.data.isNotEmpty) {
                    for (var i = 0; i < data.data.length; i++) {
                      listWhishList.add(data.data[i]);
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

              });
        },
        builder: (context, state) {
          return Builder(
              builder: (context) {
                return
                  AlertDialog(
                    contentPadding: EdgeInsets.zero,
                    content: PopUpHeaderCallcenterTwo(
                        isCancel: false,
                        buttonVisible: false,
                        height: context.blockSizeVertical * 85,

                        label: "Wish List",
                        onApply: () {},
                        onEdit: () {
                          print("cancel");
                        },
                        onTap: () {


                        },
                        dataField: Column(
                          children: [
                            commonSearchRightScreen(context,
                                margin: EdgeInsets.zero,
                                onchange:(sa){
                              isPageSearch=true;
                              if(sa==""){
                                context.read<WhishListAllCubit>().getAllWishList();
                              }
                              else{
                                context.read<WhishListAllCubit>().getSearchAllWishList(sa);
                              }

                              setState(() {

                              });
                            },
                                searcController: searcController
                            ),
                            SizedBox(height: context.blockSizeVertical*1,),
                            BlocBuilder<WhishListAllCubit, WhishListAllState>(
  builder: (context, state) {
    return  state .maybeWhen(orElse: (){
      return Center(child: customCupertinoLoading(),);
    },
      loading: (){
      return Center(child: customCupertinoLoading(),);
      },
      success: (data){
     return   Column(
          children: [
            Container(
              height: context.blockSizeVertical * 60,
              // height: 30,
              child: Center(
                child: NotificationListener<ScrollEndNotification>(
                  onNotification: (scrolleEnd){
                    final metrics=scrolleEnd.metrics;
                    if(metrics.atEdge){
                      setState(() {
                        isTop=metrics.pixels==0;
                      });

                      if(isTop){print("isTop");}
                      else{
                        print("isBottom");
                        if(nextPage!=""){
                              isPageSearch=false;
                              context.read<WhishListAllCubit>().nextslotSectionPageList(nextPage);

                              setState(() {
                                isLoading=true;
                              });
                        }



                      }

                    }return true;
                  },
                  child: listWhishList.isNotEmpty?
                  ListView.separated(
                    // shrinkWrap:true,
                    itemCount: listWhishList.length,
                    itemBuilder: (context, index) =>

                        CallCennterCommonListtile(
                              isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
                              barcode: listWhishList[index].variantDataModel?.barcode??"",
                              onDelete: (){
                                isPageSearch=true;
                                context.read<DeleteWishListCubit>().deleteWhisList(listWhishList![index]?.variantId.toString()??"");

                              },
                              isDelet: true,
                              title: listWhishList[index].variantDataModel?.variantame??"",
                              leadingImage: listWhishList[index].variantDataModel?.image??"",
                              subTitle:"AED ${ listWhishList[index].sellingPrice}" ,
                              onAdd: (){
                                setState(() {
                                  widget.editChange();

                                  //
                                  widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                                  context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                                  context.read<HubListCubit>().getHubList(listWhishList[index].variantCode??"",);
                                  Navigator.pop(context);
                                });



                              },
                        ),
                    separatorBuilder: (BuildContext context,
                        int index) {
                      return SizedBox(height: 1,);
                    },):  Container(
                      margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                      height: context.blockSizeVertical*60,
                      color: Colors.white,
                      child: EmptyDataDisplay()),
                ),
              ),
            )
          ],
        );
      }

    );

  },
),
                          ],
                        )

                    ),
                  );
              }
          );
        },
      ),
    );
  }
}