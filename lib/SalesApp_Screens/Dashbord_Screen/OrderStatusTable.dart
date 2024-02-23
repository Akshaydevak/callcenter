import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Read_Latest_Order_Cubit/read_latest_order_cubit.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Read_Latest_Order/Latest_Order.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../utils/variables.dart';
import 'Dashboard_Widgets.dart';

class StatusTable extends StatefulWidget {
  const StatusTable({Key? key}) : super(key: key);

  @override
  State<StatusTable> createState() => _StatusTableState();
}

class _StatusTableState extends State<StatusTable> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical*33,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xffFFFFFF),

      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 15),
            child: Text("Latest Order",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.9),),
          ),
          SizedBox(height: context.blockSizeVertical*2.5,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: context.blockSizeHorizontal*2,),
              Text("Order Id",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
              SizedBox(width: context.blockSizeHorizontal*4,),
              Text("Order Date",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
              SizedBox(width: context.blockSizeHorizontal*4,),
              Text("User Name",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
              SizedBox(width: context.blockSizeHorizontal*4,),
              Text("Amount In AED",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
              SizedBox(width: context.blockSizeHorizontal*4,),
              Text("Status",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
              SizedBox(width: context.blockSizeHorizontal*2,),
            ],
          ),
          SizedBox(height: context.blockSizeVertical*1,),
          ListCard()




        ],
      ),
    );
  }
}
//////////////////
class ListCard extends StatefulWidget {

  const ListCard({Key? key,}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  List<LatestOrder> readData=[];
  ScrollController _scrollController=ScrollController();
  late AutoScrollController controller;
  @override
  void initState() {
    // Variable.verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => ReadLatestOrderCubit()..getLatestOrder(),
  child: BlocListener<ReadLatestOrderCubit, ReadLatestOrderState>(
    listener: (context, state) {
      // print("uu$state");
      state.maybeWhen(
          orElse: () {},
          error: () {
            print("error..");
          },
          success: (data) {
            // for(var i=0;i<data.length;i++){

            // }
            setState(() {
              readData = data;
              // print("hhh$readData");

            });
          }
      );

  },
  child: Row(
      children: [
        Scrollbar(
            child: SizedBox(
          width: context.blockSizeHorizontal*34.6,
          child: ListView.separated(
            key: UniqueKey(),
            separatorBuilder: (context, index) => SizedBox(
              height: context.blockSizeVertical*0.5,

            ),
            controller: _scrollController,
            itemBuilder: (context, index) {
              return AutoScrollTag(

                key: ValueKey(index),
                controller:controller ,
                index: index,
                child: CardView(
                    orderId: readData[index].salesOrderCode.toString(),
                    orderDate: readData[index].dateConversion.toString(),
                    userName: readData[index].userName.toString(),
                    price: readData[index].sellingPriceTotal.toString(),
                    status: readData[index].orderStatus.toString(),
                ),
              );
            },
            itemCount: readData.length,
            //  data.data.length + 1,
            shrinkWrap: true,
          ),
        ))
      ],
    ),
),
);
  }
}
////////////////////////////////
class CardView extends StatefulWidget {
  final String orderId;
  final String orderDate;
  final String userName;
  final String price;
  final String status;
  const CardView({Key? key, required this.orderId, required this.orderDate, required this.userName, required this.price, required this.status}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(widget.orderId,style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),),
        Spacer(),
        Text(widget.orderDate,style:  GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),),
        Spacer(),
        Text(widget.userName,style:  GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),),
        Spacer(),
        Text(widget.price,style:  GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),),
        Spacer(),
        Text(widget.status,style:  GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*0.85),),
        // ButtonStatus(text: "Pending",),
      ],
    );
  }
}
