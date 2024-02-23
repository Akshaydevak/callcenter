import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Cubit/read_sales_return_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Return_Invoice_Cubit/read_return_invoice_cubit.dart';
import 'package:salesapp/Cubit/Sales_Return_List_cubit/sales_return_list_cubit.dart';
import 'package:salesapp/Models/List_Sales_Return/List_Sales_Return.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../Widgets/ItemCard.dart';
import '../../color_palette/color_palette.dart';
import '../../utils/variables.dart';


class SalesReturnSidelist extends StatefulWidget {

  const SalesReturnSidelist({Key? key}) : super(key: key);

  @override
  State<SalesReturnSidelist> createState() => _SalesReturnSidelistState();
}

class _SalesReturnSidelistState extends State<SalesReturnSidelist> {
  TextEditingController itemsearch = TextEditingController();
  late AutoScrollController controller;
  int selected = 0;
  int? itemId=1;
  bool select=false;

  List<SalesReturnList> genaralList=[];
  void onSelect(int val) {
    selected = val;

    setState(() {});
  }
  @override
  void initState() {
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>SalesReturnListCubit()..getReturnItemList()),
      ],
      child: BlocConsumer<SalesReturnListCubit, SalesReturnListState>(
             listener: (context, state) {
               // print("sss$state");
               state.maybeWhen(
                 orElse: () {},
                 success: (list) {
                   setState(() {});
                   genaralList = list.data;
                   setState((){
                     if(genaralList.isNotEmpty){
                       itemId=genaralList[0].id;
                       Variable.verticalid=itemId;
                       context.read<ReadSalesReturnCubit>().getSalesReturnRead(itemId??0);
                       context.read<ReadReturnInvoiceCubit>().getReturnInvoiceRead(itemId??0);


                     }
                   });
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
                          prefixIcon: Image(image: AssetImage("asset_images/shape.png")
                          ),filled: true,fillColor: Color(0xffF4F7FA),
                          hintText: "Search...",
                          hintStyle: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),
                          labelStyle: TextStyle(color: Color(0xff6A7C89))),
                      controller: itemsearch,
                      onChanged: (sa) {
                        if(sa==""){
                          context
                              .read<SalesReturnListCubit>()
                            ..getReturnItemList();
                        }else {
                          context
                              .read<SalesReturnListCubit>()
                              .getSearched(itemsearch.text);
                        }

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
                      height: context.blockSizeVertical * 72.5,
                      child: ListView.separated(
                        key: UniqueKey(),
                        separatorBuilder: (context, index) => const Divider(
                          height: 0,
                          color: Colors.white,
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
                                name: genaralList[index].salesOrderCode.toString(),
                                id: genaralList[index].id.toString(),
                                item: "item",
                                onClick: () {
                                  setState(() {
                                    select=false;
                                    selected=index;
                                    // print("retId$itemId");
                                    Variable.returnVerticalId = itemId = genaralList[index].id;
                                    context.read<ReadSalesReturnCubit>().getSalesReturnRead(itemId!);
                                    context.read<ReadReturnInvoiceCubit>().getReturnInvoiceRead(itemId!);
                                  });
                                },
                                isSelected: index == selected,
                                key: UniqueKey(),
                              ),
                            ),
                          );
                        },
                        itemCount: genaralList.length,
                        //  data.data.length + 1,
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
),
    );


  }
}
