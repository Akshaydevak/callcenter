import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Invoice_Cubit/read_sales_invoice_cubit.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../Cubit/Genaral_Sidelist_cubit/genaral_sidelist_cubit.dart';
import '../../Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import '../../Widgets/ItemCard.dart';
import '../../color_palette/color_palette.dart';
import '../../utils/variables.dart';


class SalesSidelist extends StatefulWidget {

  const SalesSidelist({Key? key}) : super(key: key);

  @override
  State<SalesSidelist> createState() => _SalesSideListState();
}

class _SalesSideListState extends State<SalesSidelist> {
  TextEditingController itemSearch = TextEditingController();
  late AutoScrollController controller;
  int selected = 0;
  int? itemId=1;
  bool select=false;

  List<SalesGeneralList> genralList=[];
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
        BlocProvider(create: (context)=>GenaralSidelistCubit()..getItemList()),
      ],
      child: BlocConsumer<GenaralSidelistCubit, GenaralSidelistState>(
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
                       context.read<ReadSalesGenaralCubit>().getGeneralSalesRead(itemId??0);
                       context.read<ReadSalesInvoiceCubit>().getSalesInvoiceRead(itemId??0);
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

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white,),
                child: Column(

                  children: [
                Container(
                  height: context.blockSizeVertical*8,
                  decoration: BoxDecoration(
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
                              .read<GenaralSidelistCubit>()
                            ..getItemList();
                        }else {
                          context
                              .read<GenaralSidelistCubit>()
                            ..getSearch(itemSearch.text);
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
                      height: context.blockSizeVertical * 72.5,
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
                                    context.read<ReadSalesGenaralCubit>().getGeneralSalesRead(itemId!);
                                    context.read<ReadSalesInvoiceCubit>().getSalesInvoiceRead(itemId!);
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
),
    );


  }
}
