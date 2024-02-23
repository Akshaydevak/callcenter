import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/explore_screen/widgets/build_widgets.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/reccomodation_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/list_cart_order_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/create_cart/create_cart_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_cart/delete_cart_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/delete_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/post_wish_list/post_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/wish_list_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

class ExploreCartScreen extends StatefulWidget {
  final Function editChange;
  final Function addPatchInvoiceFunction;
  final TextEditingController? allCostemerId;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController negotiationText;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;
  final Function priceDataChange;
  final bool? isChangeHistory;
  final double totalCartValue;

  const ExploreCartScreen(
      {Key? key, required this.editChange, this.allCostemerId, required this.text, required this.stock, this.barcode, this.customerUsercode, this.productName, required this.priceDataChange, this.isChangeHistory, required this.negotiationText, required this.totalCartValue, required this.addPatchInvoiceFunction,})
      : super(key: key);

  @override
  State<ExploreCartScreen> createState() => _ExploreCartScreenState();
}

class _ExploreCartScreenState extends State<ExploreCartScreen> {

  List<CartListModel> cartList = [];
  TextEditingController searcController = TextEditingController();
  List<String?>allreadyExistWhislist=[];

  @override
  void initState() {
    context.read<ListCartOrderCubit>().getCArtOrderList();
    context.read<WishListCubit>().getWishList();
  }
  addAllreadyExistWhislist( List<WishListModel> listWhishList){

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
  Widget build(BuildContext context) {
    return
      Builder(
          builder: (context) {
            return MultiBlocProvider(
  providers: [
    BlocProvider(
              create: (context) => DeleteCartCubit(),
),
    BlocProvider(
      create: (context) => PostWishListCubit(),
    ),
    BlocProvider(
      create: (context) => DeleteWishListCubit(),
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
                                "Product deleted from cart");
                            print("created cart orderdsaaaaa");
                            context.read<ListCartOrderCubit>()
                                .getCArtOrderList();
                            // Variable.invoiceIdPay=data.data2;
                            // context.showSnackBarSuccess("Successfully invoiced");
                            // context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId);
                          } else {
                            context.showSnackBarError(Variable.errorMessege);
                          }
                        });
                      },
                    ),
                    BlocListener<ListCartOrderCubit, ListCartOrderState>(
                      listener: (context, state) {
                        state.maybeWhen(orElse: () {
                          // context.
                          // context.showSnackBarError("Loading");
                        }, error: () {
                          // context.showSnackBarError(Variable.errorMessege);
                        }, success: (data) {
                          setState(() {
                            cartList=data.data;
                          });

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


                    BlocListener<WishListCubit, WishListState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            orElse: () {},
                            error: () {
                              print("error..read Customer");
                            },
                            success: (data) async {
                              addAllreadyExistWhislist(data.data);
                            });
                      },
                    ),

                  ],
                  child: Container(
                    child:
                    Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            topIconText("Total ${cartList.length} products",context,ontap: (){
                              showDailogPopUp(
                                context,
                                CartListPopup(),
                              );
                            }),
                            SizedBox(height: context.blockSizeVertical*.01,),
                            commonSearchRightScreen(context,onchange:(sa){
                              if(sa==""){
                                context
                                    .read<ListCartOrderCubit>()
                                  ..getCArtOrderList();
                              }
                              else{
                                context
                                    .read<ListCartOrderCubit>()
                                    .getSearchCartList(searcController.text??"");
                              }

                              setState(() {

                              });
                            },
                                searcController: searcController
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*1,  ),
                            //   height: context.blockSizeVertical*5,
                            //   // width: context.blockSizeHorizontal*50,
                            //   // color: Colors.red,
                            //   child:TextFormField(
                            //     controller: searcController,
                            //
                            //     onChanged: (sa){
                            //       // print("Varian$sa");isPageSearch=true;
                            //       if(sa==""){
                            //         context
                            //             .read<ListCartOrderCubit>()
                            //           ..getCArtOrderList();
                            //       }
                            //       else{
                            //         context
                            //             .read<ListCartOrderCubit>()
                            //             .getSearchCartList(searcController.text??"");
                            //       }
                            //
                            //       setState(() {
                            //
                            //       });
                            //     },
                            //     decoration: InputDecoration(
                            //       suffixIcon: Container(
                            //         width: 5,
                            //         height: 6,
                            //         margin: EdgeInsets.symmetric(vertical: 7,
                            //             horizontal: context.blockSizeHorizontal * .6),
                            //         decoration: BoxDecoration(
                            //             image: DecorationImage(
                            //               fit: BoxFit.fitWidth,
                            //               image: AssetImage("asset_images/searchIcon.png",),
                            //             )
                            //         ),
                            //       ),
                            //       // suffixIcon: Icon(Icons.search),
                            //       isDense: true,
                            //       label: null,
                            //       hintText: "Enter variant for search",
                            //       hintStyle: TextStyle(color:Color(0xff808191),fontSize: context.blockSizeVertical *2, ),
                            //       alignLabelWithHint: true,
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide:
                            //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            //       ),
                            //
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide:
                            //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            //       ),
                            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                            //
                            //           borderSide:
                            //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                            //     ),
                            //   ),),
                            SizedBox(height: context.blockSizeVertical*1,),

                            BlocBuilder<ListCartOrderCubit, ListCartOrderState>(
  builder: (context, state) {
    return   state.maybeWhen(orElse: () {
      // context.
      return Center(child: customCupertinoLoading(color: Colors.blue),);
    }, error: () {
    return Center(child: customCupertinoLoading(color: Colors.blue),);
    },
    loading: (){
    return Center(child: customCupertinoLoading(color: Colors.blue),);
    },
      success: (data){

       return  cartList.isEmpty?   Expanded(child: Center(child: EmptyDataDisplay())):
       Expanded(child: ListView.separated(
          itemCount:cartList.length,
          // invoicePage?invoiceline.length:createOrPatch?patchList.map((e) => e.isActive==true?1:0).reduce((value, element) => value+element):newList.length,

          itemBuilder: (context, index) {

            return
              Container(
                margin: EdgeInsets.symmetric(horizontal:context.blockSizeHorizontal*1, ),
                child:
                CallCennterCommonListtile(

                  quantity:cartList[index]?.quantity.toString()??"" ,

                  // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,

                  isButton: true,
                  isDelet: true,
                  isFavIcon: true,

                  isWhishList: allreadyExistWhislist.contains(cartList![index].variantCode),
                  onAdd: (){
                    setState(() {
                      widget.editChange();

                      //
                      widget.allCostemerId?.text=cartList[index].variantId.toString();
                      context.read<ReadVariantCubit>().getVariantRead(cartList[index].variantId??0);
                      context.read<HubListCubit>().getHubList(cartList[index].variantCode??"",);
                    });



                  },
                  isWislistTap: (va){
                    print(va);
                    if(va){
                      context.read<PostWishListCubit>().postWhisList(cartList![index]?.variantId.toString()??"", cartList![index]?.variantCode??"");

                    }
                    else{
                      context.read<DeleteWishListCubit>().deleteWhisList(cartList![index]?.variantId.toString()!??"");

                    }

                  },

                  isAdd: true,
                  onDelete: (){
                    showDailogPopUp(
                        context,
                        //     AdminCreationUser()
                        LogoutPopup(
                          message: "Are you sure you want to delete the product",
                          // table:table,
                          // clear:clear(),

                          onPressed:()  {


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
                              needApproval: false,
                              deliverySlotId: cartList[index].deliverySlotID,
                            )) ;



                            print("cartlines model$cartLines");
                            context.read<DeleteCartCubit>().postDeleteCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,cartLinesModel: cartLines??[],address:address ));
                            // Navigator.pop(context);
                          },
                          onLeftPress: (){

                            Navigator.pop(context);
                          },



                        ));





                  },


                  title: cartList[index].variantName??"",

                  leadingImage: cartList[index].image??"",
                  subTitle: "AED ${  cartList[index].price}",

                ),
              );
            // else if (createOrPatch==true)
            //   return
            //     patchList[index].isActive==true?CallCennterCommonListtile(
            //     // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
            //
            //     isButton: false,
            //
            //
            //     title: patchList[index].variantName??"",
            //     leadingImage: patchList[index].image??patchList[index].image1??"",
            //     subTitle: "AED ${ patchList[index].sellingPrice}",
            //     onAdd: () {
            //       setState(() {
            //         //
            //         // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
            //         // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
            //       });
            //     },
            //   ):Container();
            // else if(createOrPatch!=true && invoicePage!=true)
            //   return CallCennterCommonListtile(
            //     // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
            //     isButton: false,
            //
            //
            //     title: newList[index].variantName??"",
            //     leadingImage: newList[index].image1??"",
            //     subTitle: "AED ${newList[index].sellingPrice }",
            //     onAdd: () {
            //       setState(() {
            //         //
            //         // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
            //         // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
            //       });
            //     },
            //   );



          },

          separatorBuilder: (BuildContext context, int index) { return SizedBox(height:context.blockSizeVertical*.4); },));
      }
    );

  },
),
                            // Spacer(),
                            // Container(
                            //   color: Color(0xffF2F2F2),
                            //   padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*1),
                            //   child: Row(
                            //     children: [
                            //     invoicePage?Text("Items:${invoiceline.length}"):createOrPatch?Text("Items:${patchList.map((e) => e.isActive==true?1:0).reduce((value, element) => value+element)}"):Text("Item:${newList.length}"),
                            //       Spacer(),
                            //       Row(
                            //         children: [
                            //           Text("Grand Total :"),
                            //           Text("00",style: TextStyle(fontWeight: FontWeight.bold),)
                            //
                            //         ],
                            //       )
                            //     ],
                            //   ),
                            // )


                          ],
                        ))


                  )
                // BlocConsumer<ListCartOrderCubit, ListCartOrderState>(
                //   listener: (context, state) {
                //
                //     state.maybeWhen(
                //         orElse: () {},
                //         error: () {
                //           print("error..");
                //         },
                //         success: (data) {
                //           print("yes called after deletion");
                //           cartList=data.data;
                //
                //
                //           // print("hhh$GpData");
                //
                //         }
                //     );
                //   },
                //   builder: (context, state) {
                //
                //
                //     return
                //       Container(
                //           color: Colors.white,
                //           child: Column(
                //             children: [
                //               topIconText("Total ${cartList.length} products",context,ontap: (){}),
                //               SizedBox(height: context.blockSizeVertical*.01,),
                //               Container(
                //                 margin: EdgeInsets.only(left:context.blockSizeHorizontal*1,right:context.blockSizeHorizontal*1,  ),
                //                 height: context.blockSizeVertical*5,
                //                 // width: context.blockSizeHorizontal*50,
                //                 // color: Colors.red,
                //                 child:TextFormField(
                //                   controller: searcController,
                //
                //                   onChanged: (sa){
                //                     // print("Varian$sa");isPageSearch=true;
                //                     if(sa==""){
                //                       context
                //                           .read<ListCartOrderCubit>()
                //                         ..getCArtOrderList();
                //                     }
                //                     else{
                //                       context
                //                           .read<ListCartOrderCubit>()
                //                           .getSearchCartList(searcController.text??"");
                //                     }
                //
                //                     setState(() {
                //
                //                     });
                //                   },
                //                   decoration: InputDecoration(
                //                     suffixIcon: Container(
                //                       width: 5,
                //                       height: 6,
                //                       margin: EdgeInsets.symmetric(vertical: 7,
                //                           horizontal: context.blockSizeHorizontal * .6),
                //                       decoration: BoxDecoration(
                //                           image: DecorationImage(
                //                             fit: BoxFit.fitWidth,
                //                             image: AssetImage("asset_images/searchIcon.png",),
                //                           )
                //                       ),
                //                     ),
                //                     // suffixIcon: Icon(Icons.search),
                //                     isDense: true,
                //                     label: null,
                //                     hintText: "Enter variant for search",
                //                     hintStyle: TextStyle(color:Color(0xff808191),fontSize: context.blockSizeVertical *2, ),
                //                     alignLabelWithHint: true,
                //                     enabledBorder: OutlineInputBorder(
                //                       borderRadius: BorderRadius.circular(5),
                //                       borderSide:
                //                       BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //                     ),
                //
                //                     focusedBorder: OutlineInputBorder(
                //                       borderRadius: BorderRadius.circular(5),
                //                       borderSide:
                //                       BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //                     ),
                //                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                //
                //                         borderSide:
                //                         BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                //                   ),
                //                 ),),
                //               SizedBox(height: 1.5,),
                //
                //               Expanded(child: ListView.separated(
                //                 itemCount:cartList.length,
                //                 // invoicePage?invoiceline.length:createOrPatch?patchList.map((e) => e.isActive==true?1:0).reduce((value, element) => value+element):newList.length,
                //
                //                 itemBuilder: (context, index) {
                //
                //                   return
                //                     CallCennterCommonListtile(
                //                       quantity:cartList[index]?.quantity.toString()??"" ,
                //
                //                       // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
                //
                //                       isButton: true,
                //                       isDelet: true,
                //
                //                       isAdd: false,
                //                       onDelete: (){
                //
                //
                //                         AddressCart address=AddressCart(
                //                           country:listCustomer?.customerMeta?.country??"",
                //                           state:  listCustomer?.customerMeta?.state??"",
                //                           area: listCustomer?.customerMeta?.area??"",
                //                           location: listCustomer?.customerMeta?.area??"",
                //                           buildingNumber: listCustomer?.buildingName??"",
                //                         );
                //
                //                         List<CartLinesModel> cartLines=[];
                //
                //                         cartLines.add(CartLinesModel(
                //                           image:cartList[index].image,
                //                           vat: cartList[index].vat,
                //                           variantCode:cartList[index].variantCode,
                //                           inventoryId:cartList[index].inventoryId,
                //                           variantId: cartList[index].variantId,
                //                           quantity:cartList[index].quantity,
                //                           offerDetails: cartList[index].offerDetails,
                //                           variantName: cartList[index].variantName,
                //                           barcode:cartList[index].barcode,
                //                           price: cartList[index].price,
                //                           isActive: false,
                //                           deliverySlotId: cartList[index].deliverySlotID,
                //                         )) ;
                //
                //
                //
                //                         print("cartlines model$cartLines");
                //                         context.read<DeleteCartCubit>().postDeleteCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,cartLinesModel: cartLines??[],address:address ));
                //
                //                       },
                //
                //
                //                       title: cartList[index].variantName??"",
                //
                //                       leadingImage: cartList[index].image??"",
                //                       subTitle: "AED ${  cartList[index].price}",
                //                       onAdd: () {
                //                         setState(() {
                //                           //
                //                           // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                //                           // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                //                         });
                //                       },
                //                     );
                //                   // else if (createOrPatch==true)
                //                   //   return
                //                   //     patchList[index].isActive==true?CallCennterCommonListtile(
                //                   //     // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
                //                   //
                //                   //     isButton: false,
                //                   //
                //                   //
                //                   //     title: patchList[index].variantName??"",
                //                   //     leadingImage: patchList[index].image??patchList[index].image1??"",
                //                   //     subTitle: "AED ${ patchList[index].sellingPrice}",
                //                   //     onAdd: () {
                //                   //       setState(() {
                //                   //         //
                //                   //         // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                //                   //         // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                //                   //       });
                //                   //     },
                //                   //   ):Container();
                //                   // else if(createOrPatch!=true && invoicePage!=true)
                //                   //   return CallCennterCommonListtile(
                //                   //     // isStock:listWhishList[index].availableQuantity==0||listWhishList[index].availableQuantity==null?listWhishList[index].virtualStock==0||listWhishList[index].virtualStock==null?true:false: false,
                //                   //     isButton: false,
                //                   //
                //                   //
                //                   //     title: newList[index].variantName??"",
                //                   //     leadingImage: newList[index].image1??"",
                //                   //     subTitle: "AED ${newList[index].sellingPrice }",
                //                   //     onAdd: () {
                //                   //       setState(() {
                //                   //         //
                //                   //         // widget.allCostemerId?.text=listWhishList[index].variantId.toString();
                //                   //         // context.read<ReadVariantCubit>().getVariantRead(listWhishList[index].variantId??0);
                //                   //       });
                //                   //     },
                //                   //   );
                //
                //
                //
                //                 },
                //
                //                 separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 1.5,); },)),
                //               // Spacer(),
                //               // Container(
                //               //   color: Color(0xffF2F2F2),
                //               //   padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1,vertical: context.blockSizeVertical*1),
                //               //   child: Row(
                //               //     children: [
                //               //     invoicePage?Text("Items:${invoiceline.length}"):createOrPatch?Text("Items:${patchList.map((e) => e.isActive==true?1:0).reduce((value, element) => value+element)}"):Text("Item:${newList.length}"),
                //               //       Spacer(),
                //               //       Row(
                //               //         children: [
                //               //           Text("Grand Total :"),
                //               //           Text("00",style: TextStyle(fontWeight: FontWeight.bold),)
                //               //
                //               //         ],
                //               //       )
                //               //     ],
                //               //   ),
                //               // )
                //
                //
                //             ],
                //           ));
                //   },
                // ),
              ),
);
          }
      );
  }
}