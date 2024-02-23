import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Read_Sales_Order_Inventory/read_sales_order_inventory_cubit.dart';
import 'package:salesapp/salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Sales_Return_Sidelist/return_sidelist_cubit.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../Models/List_Sales_Return/List_Sales_Return.dart';
import '../../../Widgets/ItemCard.dart';
import '../../../color_palette/color_palette.dart';
import '../../../utils/variables.dart';
import '../inventery_Cubit/Read_Return_Cubit/read_return_inventory_cubit.dart';
import '../inventery_Cubit/Read_Sales_Invoice_Inventory/read_sales_invoice_inventory_cubit.dart';
import '../inventery_Cubit/Read_return_Invoice_Cubit/read_return_invoice_inventory_cubit.dart';

class ReturnSidelistInventory extends StatefulWidget {

  const ReturnSidelistInventory({Key? key}) : super(key: key);

  @override
  State<ReturnSidelistInventory> createState() => _ReturnSidelistInventoryState();
}

class _ReturnSidelistInventoryState extends State<ReturnSidelistInventory> {
  TextEditingController itemSearch = TextEditingController();
  late AutoScrollController controller;
  int selected = 0;
  int? itemId=1;
  bool select=false;

  List<SalesReturnList> genralList=[];
  void onSelect(int val) {
    selected = val;

    setState(() {});
  }
  @override
  void initState() {
    context.read<ReturnSidelistCubit>().getReturnSideList();
    Variable.verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScrollController? scrollController = ScrollController();
    return BlocConsumer<ReturnSidelistCubit, ReturnSidelistState>(
           listener: (context, state) {
             print(state);
             state.maybeWhen(
               orElse: () {},
               success: (list) {

                 genralList = list.data;
                 print("jj$genralList");

                   if(genralList.isNotEmpty){

                     itemId=genralList[0].id;
                     Variable.verticalid=itemId;
                     context.read<ReadReturnInventoryCubit>().getInventoryReturnRead(itemId??0);
                     context.read<ReadReturnInvoiceInventoryCubit>().getReturnInvoiceReadInventory(itemId??0);
                   }
                 },
             );
  },
  builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 15),
      child: Column(
        children: [
          Scrollbar(
            child: Container(
              width: context.blockSizeHorizontal*15,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white,),
              child: Column(

                children: [
              Container(
                height: context.blockSizeVertical*8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // style: TextStyle(color: Colors.white),
                    decoration:  InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: const Image(image: AssetImage("asset_images/shape.png",)),
                        filled: true,fillColor: Color(0xffF4F7FA),
                        hintText: "Search...",
                        hintStyle: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),
                        labelStyle: TextStyle(color: Color(0xff6A7C89))),
                    controller: itemSearch,
                    onChanged: (sa) {
                      if(sa==""){
                        context
                            .read<ReturnSidelistCubit>()
                          ..getReturnSideList();
                      }else {
                        context
                            .read<ReturnSidelistCubit>()
                          ..getSearched(itemSearch.text);
                      }
                      setState(() {
                      });
                    },
                  ),
                ),
              ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.white,
                    ),
                    key: UniqueKey(),
                    width: context.blockSizeHorizontal * 15,
                    height: context.blockSizeVertical * 65.5,
                    child: ListView.separated(
                      key: UniqueKey(),
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(height: 0.02, color: Colors.grey.withOpacity(0.5)
                        ),
                      ),
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        return AutoScrollTag(
                          // highlightColor: Palette.LiteGrey,
                          controller: controller,
                          key: ValueKey(index),
                          index: index,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child:
                            ItemCard(
                              name: genralList[index].salesOrderCode.toString(),
                              id: genralList[index].id.toString(),
                              item: "item",
                              onClick: () {
                                setState(() {
                                  select=false;
                                  selected=index;
                                  Variable.verticalid=itemId = genralList[index].id;
                                  context.read<ReadReturnInventoryCubit>().getInventoryReturnRead(itemId!);
                                  context.read<ReadReturnInvoiceInventoryCubit>().getReturnInvoiceReadInventory(itemId!);
                                  print("idItem$itemId");
                                });
                              },
                              isSelected: index == selected,
                              key: UniqueKey(),
                            ),
                          ),
                        );
                      },
                      itemCount: genralList.length,
                      shrinkWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  },
);


  }
}
