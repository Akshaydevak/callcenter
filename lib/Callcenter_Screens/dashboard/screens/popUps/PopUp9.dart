import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Variant_List_By_Channel_Cubit/variant_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/delete_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/deletwish_list_varient_popup_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/post_wish_list/post_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/second_popup_wishlist/second_popup_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/wish_list_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/frequently_recommendation/frequently_recommendation_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/custom_table/colors.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../CallCenterWidgets.dart';



class NinePopUp extends StatefulWidget {
final TextEditingController allCustomerId;
final Function edithChange;
  const NinePopUp({Key? key,required this.allCustomerId, required this.edithChange}) : super(key: key);

  @override
  State<NinePopUp> createState() => _NinePopUpState();
}

class _NinePopUpState extends State<NinePopUp> {
  List<VariantList>variantListt=[];
  TextEditingController search =TextEditingController();
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;
  bool   isPageSearch=false;
  FocusNode popup9FocusNode=FocusNode();
  FocusNode textFieldFocusNode=FocusNode();
  List<String?>allreadyExistWhislist=[];
  List<WishListModel>listWhishList=[];
  int selecytedRow=-1;
  @override
  void initState() {
  context.read<SecondPopupWishListCubit>().getWishList();
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    FocusScope.of(context).requestFocus(textFieldFocusNode);
  });
    super.initState();

  }
  addAllreadyExistWhislist(){
    allreadyExistWhislist.clear();
    if(listWhishList.isNotEmpty){
      for(var item in listWhishList){
        allreadyExistWhislist.add(item.variantCode);
      }
    }
    setState(() {

    });
    
    
  }
  void changeSelectedRow(int direction) {
    setState(() {
      // Adjust the selected row based on the arrow key direction
      selecytedRow = (selecytedRow + direction).clamp(-1, variantListt.length - 1);
     if(selecytedRow==-1){
       FocusScope.of(context).requestFocus(textFieldFocusNode);

       setState(() {
         selecytedRow=-1;
       });
     }




      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }

  rowKeyPressEvent(RawKeyEvent event){


    if (event is RawKeyDownEvent) {


          if (event.logicalKey == LogicalKeyboardKey.arrowDown && selecytedRow<variantListt.length) {
            FocusScope.of(context).requestFocus(popup9FocusNode);
           changeSelectedRow(1);


            // Handle arrow down key press
            // _changeSelectedRow(1);
          }
          else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
            FocusScope.of(context).requestFocus(popup9FocusNode);
             changeSelectedRow(-1);
          }
          else if(event.logicalKey==LogicalKeyboardKey.enter && selecytedRow!=-1 ){
            FocusScope.of(context).requestFocus(popup9FocusNode);
            rowSelectedFunc(selecytedRow);
          }






      }

    }

void rowSelectedFunc(int i){
  widget.edithChange();
  widget.allCustomerId.text=variantListt[i]?.id.toString()??"0";
  context.read<FrequentlyRecommendationCubit>().getFrequentlyRecommendationList(variantListt[i].id.toString()??"0",);
  context.read<ReadVariantCubit>().getVariantRead(variantListt[i].id??0,);
  context.read<HubListCubit>().getHubList(variantListt[i].code??"",);
  Navigator.pop(context);
}

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => VariantListCubit()..getVariantList(),
),
    BlocProvider(
  create: (context) => PostWishListCubit(),
),
  ],
  child: MultiBlocListener(
  listeners: [
    BlocListener<VariantListCubit, VariantListState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error..read Customer");
        },
        success: (data) async {
          if(isPageSearch==true){

            setState(() {
              variantListt=data.data;
            });
          }
          else {
            if (data.data.isNotEmpty) {
              for (var i = 0; i < data.data.length; i++) {
                variantListt.add(data.data[i]);
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
          }  });
  },
),
    BlocListener<SecondPopupWishListCubit, SecondPopupWishListState>(
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
              context.read<SecondPopupWishListCubit>().getWishList();


            } else {
              context.showSnackBarError(Variable.errorMessege);
              print(data.data1);
            }

          });

        }),
    BlocListener<DeletwishListVarientPopupCubit, DeletwishListVarientPopupState>(
        listener: (context, state) {

          state.maybeWhen(
              orElse: () {

              }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {

            if (data.data1) {

              context.showSnackBarSuccess("product removed from wishlist");
              context.read<WishListCubit>().getWishList();
              context.read<SecondPopupWishListCubit>().getWishList();


            } else {
              context.showSnackBarError(Variable.errorMessege);
              print(data.data1);
            }
            Variable.iswishListAdd=true;

          });

        }),
  ],
  child: Builder(
          builder: (context) {
            return
              AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: PopUpHeaderCallcenterTwo(
                buttonVisible: false,
                width: context.blockSizeHorizontal*50,
                height: context.blockSizeVertical*70,
                label: "Select Variant",
                onApply: () {},
                onEdit: () {},
                dataField:

                  SizedBox(
                    // height: context.blockSizeVertical*70,

                    child: RawKeyboardListener(
                      autofocus: true,
                      focusNode:popup9FocusNode,
                      onKey: (RawKeyEvent event) {
                        print("ssssssssssssssworkinf");
                        rowKeyPressEvent(event);


                      },
                      child: Container(

                        // height: 600,
                        // width: MediaQuery.of(context).size.width-20,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: context.blockSizeVertical*5,
                                  // width: context.blockSizeHorizontal*50,
                                  // color: Colors.red,
                                  child:TextFormField(
                                    controller: search,
                                    focusNode: textFieldFocusNode,
                                    onEditingComplete: (){
                                      FocusScope.of(context).requestFocus(popup9FocusNode);
                                    },

                                    onChanged: (sa){
                                      print("Varian$sa");isPageSearch=true;
                                      if(sa==""){
                                        context
                                            .read<VariantListCubit>()
                                          ..getVariantList();
                                      }
                                      else{
                                        context
                                            .read<VariantListCubit>()
                                          ..getSearchVariants(search.text);
                                      }

                                      setState(() {

                                      });
                                    },
                                    decoration: InputDecoration(suffixIcon: Icon(Icons.search),
                                      isDense: true,
                                      label: null,
                                      hintText: "Enter variant for search",
                                   hintStyle: TextStyle(color:Color(0xff808191),fontSize: context.blockSizeVertical *2, ),
                                      alignLabelWithHint: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2),
                                        borderSide:
                                        BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                                      ),

                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2),
                                        borderSide:
                                        BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: context.blockSizeVertical*.8,),
                            Container(
                              alignment: Alignment.topLeft,
                              // height: context.blockSizeVertical*65,
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: context.blockSizeHorizontal*50,

                                    child: customTableTwo(
                                      border: const TableBorder(
                                        verticalInside: BorderSide(
                                            width: 0.5,
                                            color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        horizontalInside:
                                        BorderSide(width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        top: BorderSide(width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        right: BorderSide(width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        left: BorderSide(width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        bottom: BorderSide(width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),),
                                      tableWidth: .5,
                                      widths: {

                                        0: const FlexColumnWidth(.6),
                                        1: const FlexColumnWidth(.6),
                                        2: const FlexColumnWidth(2),




                                      },
                                      childrens: [
                                        TableRow(

                                            children: [
                                              tableHeadtextTwo(

                                                'Variant Code',
                                                align: Alignment.topLeft,
                                                padding: const EdgeInsets.symmetric(horizontal: 7),
                                                height: 40,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(

                                                'Stock Count',
                                                align: Alignment.topLeft,
                                                padding: const EdgeInsets.symmetric(horizontal: 7),
                                                height: 40,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Variants',
                                                align: Alignment.topLeft,
                                                padding: const EdgeInsets.symmetric(horizontal: 7),
                                                height: 40,
                                                size: 13,
                                              ),
                                            ]),
                                        // if(cusList!=null)




                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  BlocBuilder<VariantListCubit, VariantListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse:(){
      return Center(child: customCupertinoLoading());
    },loading: (){
      return Center(child: customCupertinoLoading());
    },success: (data){
      return variantListt.isEmpty?EmptyDataDisplay():  Container(
        height: context.blockSizeVertical*40,
        child: NotificationListener<ScrollEndNotification>(
          onNotification: (scrolleEnd){
            final metrics=scrolleEnd.metrics;
            if(metrics.atEdge){
              setState(() {
                  isTop=metrics.pixels==0;
              });

              if(isTop){print("isTop");}
              else{
                  if(nextPage!=""){
                      isPageSearch=false;
                      context.read<VariantListCubit>().nextslotSectionPageList(nextPage);

                      setState(() {
                        isLoading=true;
                      });
                  }



              }

            }return true;
          },
          child: SingleChildScrollView(
            child: Container(

              // width: context.blockSizeHorizontal*50,
              child: customTableTwo(
                  border: const TableBorder(
                      verticalInside: BorderSide(
                          width: 0.5,
                          color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      horizontalInside:
                      BorderSide(width: 0.5, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      top: BorderSide(width: 0.5, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      right: BorderSide(width: 0.5, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      left: BorderSide(width: 0.5, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      bottom: BorderSide(width: 0.5, color: Colors.black45,
                          style:
                          BorderStyle.solid),),
                  tableWidth: .5,
                  widths: {

                      0: const FlexColumnWidth(.6),
                      1: const FlexColumnWidth(.6),
                      2: const FlexColumnWidth(2),



                  },
                  childrens: [

                      // if(cusList!=null)
                      for(var i=0;i<variantListt.length;i++)


                        TableRow(
                            children: [
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: textPaddingTwo(variantListt[i].code??"",

                                      align: Alignment.topLeft,
                                      bagroundColor: selecytedRow==i?Pellet.tableRowHoverColor:Colors.white,
                                      height: 37,
                                          (){
                                            rowSelectedFunc(i);
                                      })),
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: textPaddingTwo(variantListt[i].stockQty?.toString()??"0",
                                      bagroundColor: selecytedRow==i?Pellet.tableRowHoverColor:Colors.white,
                                      align: Alignment.topLeft,
                                      height: 37,
                                          (){
                                            rowSelectedFunc(i);

                                      })),
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                  child:
                                  WislisttextPadding(variantListt[i].name.toString().toTitleCase()??"",
                                      // height: 37,
                                      isWislist: allreadyExistWhislist.contains(variantListt![i].code),
                                      bagroundColor: selecytedRow==i?Pellet.tableRowHoverColor:Colors.white,
                                      isWislistTap: (va){
                                        print(va);
                                        if(va){
                                          context.read<PostWishListCubit>().postWhisList(variantListt![i]?.id.toString()??"", variantListt![i].code??"");

                                        }
                                        else{
                                          context.read<DeletwishListVarientPopupCubit>().deleteWhisList(variantListt![i]?.id.toString()??"");

                                        }

                                      },
                                      align: Alignment.topLeft,
                                          (){
                                            rowSelectedFunc(i);
                                      })),

                              // TableCell(
                              //   verticalAlignment:
                              //   TableCellVerticalAlignment
                              //       .middle,
                              //
                              //   child: CustomCheckBox(
                              //     key: UniqueKey(),
                              //     value:allreadyExistWhislist.contains(variantListt![i].code),
                              //     onChange: () {
                              //       print("");
                              //
                              //     },
                              //   ),
                              //   // Text(keys[i].key??"")
                              // ),




                            ]
                        ),



                  ],
              ),
            ),
          ),
        ),
      );
    });

  },
),
                                // SizedBox(height: context.blockSizeVertical*.2,),
                                //   isTop!?  nextPage==""?Container(alignment:Alignment.center,child: Text("No More Data"),) :isLoading? Container(
                                //     alignment:Alignment.center,
                                //     child: CircularProgressIndicator()):Container():Container(),


                                ],
                              ),

                            )

                          ],
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