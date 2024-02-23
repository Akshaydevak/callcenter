import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/All_Orders_Cubit/all_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Holded_Orders_Cubit/holded_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Success_Orders_Cubit/success_orders_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';

import '../../Cubit/Call_Center_Cubit/Customer_cubit/customer_cubit.dart';
import '../../Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import '../../custom_table/costumtable2.dart';
import '../CallCenter_MainScreen.dart';
import '../Callcenter/pdf_screen_callcenter/list_invoice_pdf.dart';
import '../Callcenter/widgets.dart';

class TableAllOrder extends StatefulWidget {
   bool  isPageSearch;
   TableAllOrder({ required Key key,required this.isPageSearch}) : super(key: key);



  @override
  State<TableAllOrder> createState() => TableAllOrderState();
}
bool createOrPatch=false;
class TableAllOrderState extends State<TableAllOrder> {

  List<AllOrdersTables>allOrders=[];
  TextEditingController search =TextEditingController();
  String nextPage="";
  bool isLoading=false;
  int selectedIndex=-1;
  bool   isTop=false;
  bool   isPageSearch=false;
  int totalCount=0;
  int totalNumbers=0;
  bool   isCallPaginated=false;
  var paginated;
  List<int>   displayPaginatedList=[];
  final GlobalKey<tableCountPaginationState> _paginationState = GlobalKey<tableCountPaginationState>();
  pagintedCountReset(){

    setState(() {
      _paginationState.currentState?.selectedIndex=0;
    });
  }
  paginatedCheck(){
    displayPaginatedList.clear();
    totalCount=0;
    if( paginated.nextPageUrl != null){
      totalNumbers=int.tryParse(paginated.count??0)!;

      totalCount=(int.tryParse(paginated.count??1)!/(allOrders.length)).ceil();
      isCallPaginated=true;
      if(totalCount<6){
        for(var i=1;i<=totalCount;i++){
          displayPaginatedList.add(i);
        }
      }
      else{
        for(var i=1;i<=6;i++){
          displayPaginatedList.add(i);
        }
      }



    }
    setState(() {
    });

  }

  void ontapFuncRow(int i)async{
    createOrPatch=true;invoicePage=false;
    Variable.callOrderId=int.tryParse(allOrders[i].id.toString())??0;
    selectedIndex=i;
    for (int index = 0; index < allOrders.length; index++) {
      allOrders[index] = allOrders[index].copyWith(isLoading: i==index);
    }
    setState(() {

    });
    await Future.delayed(Duration(microseconds: 500));

    context.read<ReadOrdersCubit>().getOrdersRead(allOrders[i].id??0);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>
            CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),editOrder: true,)
        ));
  }


  @override
  void initState() {
    context.read<AllOrdersCubit>().getAllOrdersList();
    allOrders=[];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return 
      BlocListener<AllOrdersCubit, AllOrdersState>(
  listener: (context, state) {
    print(state);
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error..read Customer");
        },
        success: (data) async {
          print("the testing of akshayxdgfchghkdxgfcgvhjb");
         
          setState(() {
            paginated=data;
            allOrders=data.data;
            if(  isCallPaginated==false)  paginatedCheck();
            isCallPaginated=true;
          });
          // if(widget.isPageSearch==true){
          //   print("the search case");
          //
          //     allOrders=[];
          //
          //     allOrders=data.data;
          //
          // }else{
          //   print("the default case");
          //   allOrders=[];
          //
          //   if(data.data.isNotEmpty){
          //     for(var i =0;i<data.data.length;i++){
          //       allOrders.add(data.data[i]);
          //     }
          //   }
          //
          //
          //   nextPage="";
          //   if(data.nextPage!=null){
          //     nextPage=data?.nextPage??"";
          //
          //   }
          //   else{
          //     nextPage="";
          //   }
          //   // print("last${allOrders}");
          //
          // }


        });
  },
  child:
  BlocBuilder<AllOrdersCubit, AllOrdersState>(
  builder: (context, state) {
    return     state.maybeWhen(
        orElse: () {
           return listcustomCupertinoLoading(context);
        },
        error: () {
         return listcustomCupertinoLoading(context);
        },
        success: (data)  {
          return  Container(

            margin: EdgeInsets.only(left: context.blockSizeHorizontal*2),
            // height: context.blockSizeVertical*90,
            color: Color(0xffE1E7ED),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   color: Colors.white,
                //   width: context.blockSizeHorizontal*60,
                //   child: TextFormField(
                //     controller: search,
                //     onChanged: (sa){
                //       context
                //           .read<AllOrdersCubit>()
                //         ..getSearchAllOrders(search.text);
                //       setState(() {
                //
                //       });
                //     },
                //     decoration: InputDecoration(
                //       suffixIcon: Icon(Icons.search),
                //       hintText: "Search Order by order id / Phone number ...",
                //       isDense: true,
                //       label: null,
                //       alignLabelWithHint: true,
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(2),
                //         borderSide:
                //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //       ),
                //
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(2),
                //         borderSide:
                //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //       ),
                //       border: OutlineInputBorder(
                //           borderSide:
                //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                //     ),
                //   ),
                // ),
                SizedBox(height: context.blockSizeVertical*1,),
                Container(

                  width: context.blockSizeHorizontal * 90,
                  height: context.blockSizeVertical* 6,
                  child: customTableTwo(
                    border: const TableBorder(
                      verticalInside: BorderSide(
                          width: 0.5,
                          color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      horizontalInside:
                      BorderSide(width: 0.2, color: Colors.black45,
                          style: BorderStyle.solid),
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
                          BorderStyle.solid),
                    ),
                    tableWidth: .5,
                    widths: {


                      0: const FlexColumnWidth(2),
                      1: const FlexColumnWidth(1.5),
                      2: const FlexColumnWidth(2.5),
                      3: const FlexColumnWidth(3),
                      4: const FlexColumnWidth(1.5),
                      5: const FlexColumnWidth(1.5),
                      6: const FlexColumnWidth(1.5),
                      7: const FlexColumnWidth(4),
                      8: const FlexColumnWidth(2),
                    },
                    childrens: [
                      TableRow(
                          children: [

                            tableHeadtextTwo(
                              'Order ID',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Order Date',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'User Name',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Delivery Address',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Amount',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Order Status',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Payment Status',
                              height: context.blockSizeVertical*8,
                              size: 13,
                            ),
                            tableHeadtextTwo(
                              'Remark',
                              height: context.blockSizeVertical*8,
                                size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Action',
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                          ]),


                    ],
                  ),
                ),
                allOrders.isEmpty?
                Container(
                    height: context.blockSizeVertical*60,
                    margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                    color: Colors.white,
                    child: EmptyDataDisplay()):
                Container(color: Color(0xffE1E7ED),
                  height: context.blockSizeVertical*60,

                  width: context.blockSizeHorizontal * 90,
                  child: NotificationListener<ScrollEndNotification>(
                    onNotification: (scrolleEnd){
                      final metrics=scrolleEnd.metrics;
                      if(metrics.atEdge){
                        setState(() {
                          isTop=metrics.pixels==0;
                        });

                        if(isTop){print("isTop");}
                        else{
                          widget.isPageSearch=false;
                          if(nextPage!=""){
                            // context.read<AllOrdersCubit>().nextslotSectionPageList(nextPage);

                            setState(() {
                              isLoading=true;
                            });
                          }



                        }

                      }return true;
                    },
                    child: SingleChildScrollView(
                      child: Container(
                        color: Colors.white,
                        child: customTableTwo(
                          border: const TableBorder(
                            verticalInside: BorderSide(
                                width: 0.5,
                                color: Colors.black45,
                                style:
                                BorderStyle.solid),
                            horizontalInside:
                            BorderSide(width: 0.2, color: Colors.black45,
                                style: BorderStyle.solid),
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
                                BorderStyle.solid),
                          ),
                          tableWidth: .5,
                          widths: {

                            0: const FlexColumnWidth(2),
                            1: const FlexColumnWidth(1.5),
                            2: const FlexColumnWidth(2.5),
                            3: const FlexColumnWidth(3),
                            4: const FlexColumnWidth(1.5),
                            5: const FlexColumnWidth(1.5),
                            6: const FlexColumnWidth(1.5),
                            7: const FlexColumnWidth(4),
                            8: const FlexColumnWidth(2),
                          },
                          childrens: [
                            for(var i=0;i<allOrders.length;i++)
                              TableRow(
                                  children: [

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i].orderCode.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(DateFormat('dd-MM-yyyy').format(
                                        DateTime.parse(
                                            allOrders[i].orderdDate ??
                                                "")),(){
                                      ontapFuncRow(i);
                                    },align: Alignment.topLeft)),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(allOrders[i].orderdDate.toString().split("T")[0],(){},align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i].customerName?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i].deliveryAdrress?.replaceAll("null,","")=="null"?"":allOrders[i].deliveryAdrress?.replaceAll("null,","").replaceAll("null", "")??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i].total.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i]?.orderStatus.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(allOrders[i].paymentStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: NoteAndRemarksPopupText(

                                          allOrders[i].remarks.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,remark:allOrders[i].remarks,note:
                                        allOrders[i].notes,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                ontapFuncRow(i);
                                              },
                                              child:allOrders[i].isLoading==true?customCircularLoading(): CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9,child: Icon(Icons.edit,size:context.blockSizeHorizontal*1.4,color: Color(0xff7486A2),),),
                                            ),
                                            // GestureDetector(
                                            //   onTap: (){
                                            //     Navigator.push(
                                            //       context,
                                            //       MaterialPageRoute(builder: (context) =>
                                            //           CallCenterInvoiceListPrintScreen(
                                            //             taxableAmount: allOrders[i].total,
                                            //             note: allOrders[i].notes??"",
                                            //             select: false,
                                            //             vendorCode:"",
                                            //             orderCode:allOrders[i].orderCode??"",
                                            //             orderDate: allOrders[i].orderdDate?.split("T")[0]??"",
                                            //             table:allOrders[i].lines??[],
                                            //             vat: allOrders[i].vat,
                                            //             totalPrice:allOrders[i].total,
                                            //             discount:allOrders[i].discount ,
                                            //             remarks:allOrders[i].remarks??"",
                                            //           )
                                            //       ),
                                            //     );
                                            //   },
                                            //     child: CircleAvatar(backgroundColor: const Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),size:context.blockSizeHorizontal*1.4))),
                                            // CircleAvatar(backgroundColor: Color(0xff687892),minRadius: context.blockSizeHorizontal*0.9, child: Image(image: AssetImage("asset_images/telegram.png"))),

                                          ],
                                        )),




                                  ]
                              ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:4,),


                if(totalCount>1)   tableCountPagination(
                  key: _paginationState,
                  totalCountText: "Orders",
                  totalCount: totalNumbers,

                  displayList: displayPaginatedList,
                  count: totalCount,
                  reset:     () =>
                      context.read<AllOrdersCubit>().refresh(),
                  back: paginated.previousUrl == null
                      ? null
                      : () {
                    context
                        .read<AllOrdersCubit>()
                        .previuosslotSectionPageList();
                  },
                  next:(int val) {
                    // print(data.nextPageUrl);
                    context
                        .read<AllOrdersCubit>()
                        .nextslotSectionPageList(val);
                  },
                )
              ],
            ),
          );



        });

  },
)
);

  }
}
//////
class TableHolded extends StatefulWidget {
  bool  isPageSearch;
  TableHolded({ required Key key,required this.isPageSearch}) : super(key: key);

  @override
  State<TableHolded> createState() => TableHoldedState();
}

class TableHoldedState extends State<TableHolded> {
  List<AllOrdersTables>holdedOrders=[];
  TextEditingController search =TextEditingController();
  String nextPage="";

  bool isLoading=false;
  bool   isTop=false;
  var paginated;
  int totalCount=0;
  int totalNumbers=0;
  bool   isCallPaginated=false;
  List<int>   displayPaginatedList=[];
  final GlobalKey<tableCountPaginationState> _paginationState = GlobalKey<tableCountPaginationState>();
  pagintedCountReset(){

    setState(() {
      _paginationState.currentState?.selectedIndex=0;
    });
  }
  paginatedCheck(){
    displayPaginatedList.clear();
    totalCount=0;
    if( paginated.nextPageUrl != null){
      totalNumbers=int.tryParse(paginated.count??0)!;

      totalCount=(int.tryParse(paginated.count??1)!/(holdedOrders.length)).ceil();
      isCallPaginated=true;
      if(totalCount<6){
        for(var i=1;i<=totalCount;i++){
          displayPaginatedList.add(i);
        }
      }
      else{
        for(var i=1;i<=6;i++){
          displayPaginatedList.add(i);
        }
      }



    }
    setState(() {
    });

  }
  void ontapFuncRow(int i)async{
    createOrPatch=true;invoicePage=false;

    Variable.callOrderId=int.tryParse(holdedOrders[i].id.toString())??0;

    for (int index = 0; index < holdedOrders.length; index++) {
      holdedOrders[index] = holdedOrders[index].copyWith(isLoading: i==index);
    }
    setState(() {

    });await Future.delayed(Duration(microseconds: 500));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>
            CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),editOrder: true,)
        ));
  }

  @override
  Widget build(BuildContext context) {
    return
      BlocListener<HoldedOrdersCubit, HoldedOrdersState>(
           listener: (context, state) {
             state.maybeWhen(
                 orElse: () {},
                 error: () {
                   print("error..read Customer");
                 },
                 success: (data) async {
                   paginated=data;
                   holdedOrders=data.data;

                   if(  isCallPaginated==false)  paginatedCheck();
                   setState(() {
                     
                   });
                   // if(isPageSearch){


                   // holdedOrders=[];
                   // if(data.data.isNotEmpty){
                   //   for(var i =0;i<data.data.length;i++){
                   //     holdedOrders.add(data.data[i]);
                   //   }
                   // }
                   //
                   //
                   // nextPage="";
                   // if(data.nextPage!=null){
                   //   nextPage=data?.nextPage??"";
                   //
                   // }
                   // else{
                   //   nextPage="";
                   // }
                   // print(data.nextPage);
                   //
                   // setState(() {
                   //
                   // });

                 });

    },
    child: Builder(
      builder: (context) {
        return BlocBuilder<HoldedOrdersCubit, HoldedOrdersState>(
  builder: (context, state) {
    return    state.maybeWhen(
        orElse: () {
          return listcustomCupertinoLoading(context);
        },
        error: () {
          return listcustomCupertinoLoading(context);
        },
        success: (data)  {
      return    Container(
            height: context.blockSizeVertical*90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   height: context.blockSizeVertical*6,
                //   width: context.blockSizeHorizontal*60,
                //   child: TextFormField(
                //     controller: search,
                //     onChanged: (sa){
                //       context
                //           .read<HoldedOrdersCubit>()
                //         ..getSearchHoldedOrders(search.text);
                //       setState(() {
                //
                //       });
                //     },
                //     decoration: InputDecoration(
                //       suffixIcon: Icon(Icons.search),
                //       hintText: "Search Order by order id / Phone number ...",
                //       isDense: true,
                //       label: null,
                //       alignLabelWithHint: true,
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(2),
                //         borderSide:
                //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //       ),
                //
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(2),
                //         borderSide:
                //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                //       ),
                //       border: OutlineInputBorder(
                //           borderSide:
                //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                //     ),
                //   ),
                // ),

                SizedBox(height: context.blockSizeVertical*1,),
                Container(
                  margin: EdgeInsets.only(left: context.blockSizeHorizontal*2),

                  color: Colors.white,
                  width: context.blockSizeHorizontal * 90,
                  child: customTableTwo(
                    border: const TableBorder(
                      verticalInside: BorderSide(
                          width: 0.5,
                          color: Colors.black45,
                          style:
                          BorderStyle.solid),
                      horizontalInside:
                      BorderSide(width: 0.2, color: Colors.black45,
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
                          BorderStyle.solid),
                    ),
                    tableWidth: .5,
                    widths: {
                      0: const FlexColumnWidth(2),
                      1: const FlexColumnWidth(1.5),
                      2: const FlexColumnWidth(2.5),
                      3: const FlexColumnWidth(3),
                      4: const FlexColumnWidth(1.5),
                      5: const FlexColumnWidth(1.5),
                      6: const FlexColumnWidth(1.5),
                      7: const FlexColumnWidth(4),
                      8: const FlexColumnWidth(2),



                    },
                    childrens: [
                      TableRow(

                          children: [

                            tableHeadtextTwo(
                              'Order ID',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Order Date',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'User Name',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Delivery Address',
                              // padding:
                              // const EdgeInsets.all(15),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Amount',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Order Status',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Payment Status',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Remark',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),
                            tableHeadtextTwo(
                              'Action',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ),




                          ]),


                    ],
                  ),
                ),
                holdedOrders.isEmpty?
                Container(
                    height: context.blockSizeVertical*60,
                    color: Colors.white,
                    margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4,left: context.blockSizeHorizontal*1.8 ),
                    child: EmptyDataDisplay()):

                Container(
                  margin: EdgeInsets.only(left: context.blockSizeHorizontal*2),
                  height: context.blockSizeVertical*66,

                  color:  Color(0xffE1E7ED),
                  width: context.blockSizeHorizontal * 90,
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
                            // context.read<HoldedOrdersCubit>().nextslotSectionPageList(nextPage);

                            setState(() {
                              isLoading=true;
                            });
                          }



                        }

                      }return true;
                    },
                    child: SingleChildScrollView(
                      child: Container(color:Colors.white,


                        child: customTableTwo(
                          border: const TableBorder(
                            verticalInside: BorderSide(
                                width: 0.5,
                                color: Colors.black45,
                                style:
                                BorderStyle.solid),
                            horizontalInside:
                            BorderSide(width: 0.2, color: Colors.black45,
                                style: BorderStyle.solid),
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
                                BorderStyle.solid),
                          ),
                          tableWidth: .5,
                          widths: {


                            0: const FlexColumnWidth(2),
                            1: const FlexColumnWidth(1.5),
                            2: const FlexColumnWidth(2.5),
                            3: const FlexColumnWidth(3),
                            4: const FlexColumnWidth(1.5),
                            5: const FlexColumnWidth(1.5),
                            6: const FlexColumnWidth(1.5),
                            7: const FlexColumnWidth(4),
                            8: const FlexColumnWidth(2),



                          },
                          childrens: [

                            for(var i=0;i<holdedOrders!.length;i++)


                              TableRow(
                                  children: [

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i].orderCode.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(DateFormat('dd-MM-yyyy').format(
                                        DateTime.parse(
                                            holdedOrders[i].orderdDate ??
                                                "")),(){},align: Alignment.topLeft)),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(holdedOrders[i].orderdDate.toString().split("T")[0],(){},align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i].customerName?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i].deliveryAdrress?.replaceAll("null,","")=="null"?"":holdedOrders [i].deliveryAdrress?.replaceAll("null,","").replaceAll("null", "")??"",(){})),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i].total.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i]?.orderStatus.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(holdedOrders[i].paymentStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:
                                        NoteAndRemarksPopupText(

                                          holdedOrders[i].remarks.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,remark:holdedOrders[i].remarks,note:
                                        holdedOrders[i].notes,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(onTap: (){

                                              ontapFuncRow(i);
                                            },
                                                child:holdedOrders[i].isLoading==true?customCircularLoading(): CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.edit,color: Color(0xff7486A2),))),
                                            // GestureDetector(
                                            //     onTap: (){
                                            //       Navigator.push(
                                            //         context,
                                            //         MaterialPageRoute(builder: (context) =>
                                            //             CallCenterInvoiceListPrintScreen(
                                            //               taxableAmount: holdedOrders[i].total,
                                            //               note: holdedOrders[i].notes??"",
                                            //               select: false,
                                            //               vendorCode:"",
                                            //               orderCode:holdedOrders[i].orderCode??"",
                                            //               orderDate: holdedOrders[i].orderdDate?.split("T")[0]??"",
                                            //               table:holdedOrders[i].lines??[],
                                            //               vat: holdedOrders[i].vat,
                                            //               totalPrice:holdedOrders[i].total,
                                            //               discount:holdedOrders[i].discount ,
                                            //               remarks:holdedOrders[i].remarks??"",
                                            //             )
                                            //         ),
                                            //       );
                                            //     },
                                            //     child: CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),))),
                                            // CircleAvatar(backgroundColor: Color(0xff687892),minRadius: context.blockSizeHorizontal*0.9, child: Image(image: AssetImage("asset_images/telegram.png"))),

                                          ],
                                        )),




                                  ]
                              ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:4,),


                if(totalCount>1)
                  tableCountPagination(
                    key: _paginationState,
                      totalCountText: "Orders",
                      totalCount: totalNumbers,
                      displayList: displayPaginatedList,
                      count: totalCount,
                      reset:     () =>
                          context.read<HoldedOrdersCubit>().refresh(),
                      back:(){
                      },
                      next:(int val){
                        context
                            .read<HoldedOrdersCubit>()
                            .nextslotSectionPageList(val);

                      }
                  )
              ],
            ),
          );

        });

  },
);
      }
    ),
);
  }
}
//////
class TableSucess extends StatefulWidget {
  bool  isPageSearch;
  TableSucess({ required Key key,required this.isPageSearch}) : super(key: key);


  @override
  State<TableSucess> createState() => TableSucessState();
}

class TableSucessState extends State<TableSucess> {
  List<AllOrdersTables>successOrder=[];
  TextEditingController search =TextEditingController();
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;
  var paginated;
  int totalCount=0;
  int totalNumbers=0;
  bool   isCallPaginated=false;
  List<int>   displayPaginatedList=[];
  final GlobalKey<tableCountPaginationState> _paginationState = GlobalKey<tableCountPaginationState>();
  pagintedCountReset(){

    setState(() {
      _paginationState.currentState?.selectedIndex=0;
    });
  }
  paginatedCheck(){
    displayPaginatedList.clear();
    totalCount=0;
    if( paginated.nextPageUrl != null){
      totalNumbers=int.tryParse(paginated.count??0)!;

      totalCount=(int.tryParse(paginated.count??1)!/(successOrder.length)).ceil();
      isCallPaginated=true;
      if(totalCount<6){
        for(var i=1;i<=totalCount;i++){
          displayPaginatedList.add(i);
        }
      }
      else{
        for(var i=1;i<=6;i++){
          displayPaginatedList.add(i);
        }
      }



    }
    setState(() {
    });

  }

  void ontapFuncRow(int i)async{
    createOrPatch=true;invoicePage=false;
    Variable.callOrderId=int.tryParse(successOrder[i].id.toString())??0;
    for (int index = 0; index < successOrder.length; index++) {
      successOrder[index] = successOrder[index].copyWith(isLoading: i==index);
    }
    setState(() {

    });
    await Future.delayed(Duration(microseconds: 500));
    context.read<ReadOrdersCubit>().getOrdersRead(successOrder[i].id??0);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>
            CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),editOrder: true,)
        ));
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<SuccessOrdersCubit, SuccessOrdersState>(
    listener: (context, state) {
      state.maybeWhen(
          orElse: () {},
          error: () {
            print("error..read Customer");
          },
          success: (data) async {
            paginated=data;
            successOrder=data.data;

            if(  isCallPaginated==false)  paginatedCheck();
            setState(() {
              
            });
            // if(isPageSearch){



      // if(data.data.isNotEmpty){
            //   for(var i =0;i<data.data.length;i++){
            //     successOrder.add(data.data[i]);
            //   }
            // }
            //
            //
            // nextPage="";
            // if(data.nextPage!=null){
            //   nextPage=data?.nextPage??"";
            //
            // }
            // else{
            //   nextPage="";
            // }
            // print(data.nextPage);
            //
            // setState(() {
            //
            // });

          });

    },
    child: Builder(
      builder: (context) {
        return BlocBuilder<SuccessOrdersCubit, SuccessOrdersState>(
  builder: (context, state) {
    return       state.maybeWhen(
        orElse: () {
          return listcustomCupertinoLoading(context);
        },
        error: () {
           return listcustomCupertinoLoading(context);
        },
        success: (data)  {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: context.blockSizeVertical*6,
              //   width: context.blockSizeHorizontal*60,
              //   child: TextFormField(
              //     controller: search,
              //     onChanged: (sa){
              //       context
              //           .read<SuccessOrdersCubit>()
              //         ..getSearchSuccessOrders(search.text);
              //       setState(() {
              //
              //       });
              //     },
              //     decoration: InputDecoration(
              //       suffixIcon: Icon(Icons.search),
              //       hintText: "Search Order by order id / Phone number ...",
              //       isDense: true,
              //       label: null,
              //       alignLabelWithHint: true,
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(2),
              //         borderSide:
              //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              //       ),
              //
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(2),
              //         borderSide:
              //         BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
              //       ),
              //       border: OutlineInputBorder(
              //           borderSide:
              //           BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
              //     ),
              //   ),
              // ),
              SizedBox(height: context.blockSizeVertical*1,),
              Container(
                margin: EdgeInsets.only(left: context.blockSizeHorizontal*2),

                color: Colors.white,
                width: context.blockSizeHorizontal * 90,
                child: customTableTwo(
                  border: const TableBorder(
                    verticalInside: BorderSide(
                        width: 0.5,
                        color: Colors.black45,
                        style:
                        BorderStyle.solid),
                    horizontalInside:
                    BorderSide(width: 0.2, color: Colors.black45,
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
                        BorderStyle.solid),
                  ),
                  tableWidth: .5,
                  widths: {
                    0: const FlexColumnWidth(2),
                    1: const FlexColumnWidth(1.5),
                    2: const FlexColumnWidth(2.5),
                    3: const FlexColumnWidth(3),
                    4: const FlexColumnWidth(1.5),
                    5: const FlexColumnWidth(1.5),
                    6: const FlexColumnWidth(1.5),
                    7: const FlexColumnWidth(4),
                    8: const FlexColumnWidth(2),
                  },
                  childrens: [
                    TableRow(

                        children: [

                          tableHeadtextTwo(
                            'Order ID',
                            // padding:
                            // const EdgeInsets.all(15),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Order Date',
                            // padding:
                            // const EdgeInsets.all(15),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'User Name',
                            // padding:
                            // const EdgeInsets.all(15),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Delivery Address',
                            // padding:
                            // const EdgeInsets.all(15),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Amount',
                            // padding:
                            // const EdgeInsets.all(13),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Order Status',
                            // padding:
                            // const EdgeInsets.all(13),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Payment Status',
                            // padding:
                            // const EdgeInsets.all(13),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Remark',
                            // padding:
                            // const EdgeInsets.all(13),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),
                          tableHeadtextTwo(
                            'Action',
                            // padding:
                            // const EdgeInsets.all(13),
                            height: context.blockSizeVertical*8,
                            size: context.blockSizeHorizontal*.9,
                          ),




                        ]),


                  ],
                ),
              ),
              successOrder.isEmpty?
              Container(
                  height: context.blockSizeVertical*60,

                  color: Colors.white,
                  margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4,left:context.blockSizeHorizontal*2),
                  child: EmptyDataDisplay()):
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: context.blockSizeHorizontal*2),
                  // height: context.blockSizeVertical*63,


                  color:Color(0xffE1E7ED),
                  width: context.blockSizeHorizontal * 90,
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
                            // context.read<SuccessOrdersCubit>().nextslotSectionPageList(nextPage);

                            setState(() {
                              isLoading=true;
                            });
                          }



                        }

                      }return true;
                    },
                    child: SingleChildScrollView(
                      child: Container(
                        color: Colors.white,
                        child: customTableTwo(
                          border: const TableBorder(
                            verticalInside: BorderSide(
                                width: 0.5,
                                color: Colors.black45,
                                style:
                                BorderStyle.solid),
                            horizontalInside:
                            BorderSide(width: 0.2, color: Colors.black45,
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
                                BorderStyle.solid),
                          ),
                          tableWidth: .5,
                          widths: {


                            0: const FlexColumnWidth(2),
                            1: const FlexColumnWidth(1.5),
                            2: const FlexColumnWidth(2.5),
                            3: const FlexColumnWidth(3),
                            4: const FlexColumnWidth(1.5),
                            5: const FlexColumnWidth(1.5),
                            6: const FlexColumnWidth(1.5),
                            7: const FlexColumnWidth(4),
                            8: const FlexColumnWidth(2),



                          },
                          childrens: [

                            for(var i=0;i<successOrder!.length;i++)

                              TableRow(
                                  children: [

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].orderCode.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(DateFormat('dd-MM-yyyy').format(
                                        DateTime.parse(
                                            successOrder[i].orderdDate ??
                                                "")),(){},align: Alignment.topLeft)),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(successOrder[i].orderdDate.toString().split("T")[0],(){})),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].customerName?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].deliveryAdrress?.replaceAll("null,","")=="null"?"":successOrder [i].deliveryAdrress?.replaceAll("null,","").replaceAll("null", "")??"",(){
                                          ontapFuncRow(i);
                                        })),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].total.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].orderStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(successOrder[i].paymentStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:
                                        NoteAndRemarksPopupText(

                                          successOrder[i].remarks.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,remark:successOrder[i].remarks,note:
                                        successOrder[i].notes,)),

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                ontapFuncRow(i);
                                              },
                                              child:
                                              successOrder[i].isLoading==true?customCircularLoading(): CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9,child: Icon(Icons.edit,size:context.blockSizeHorizontal*1.4,color: Color(0xff7486A2),),),
                                            ),
                                            // GestureDetector(
                                            //   onTap: (){
                                            //     Navigator.push(
                                            //       context,
                                            //       MaterialPageRoute(builder: (context) =>
                                            //           CallCenterInvoiceListPrintScreen(
                                            //             taxableAmount: allOrders[i].total,
                                            //             note: allOrders[i].notes??"",
                                            //             select: false,
                                            //             vendorCode:"",
                                            //             orderCode:allOrders[i].orderCode??"",
                                            //             orderDate: allOrders[i].orderdDate?.split("T")[0]??"",
                                            //             table:allOrders[i].lines??[],
                                            //             vat: allOrders[i].vat,
                                            //             totalPrice:allOrders[i].total,
                                            //             discount:allOrders[i].discount ,
                                            //             remarks:allOrders[i].remarks??"",
                                            //           )
                                            //       ),
                                            //     );
                                            //   },
                                            //     child: CircleAvatar(backgroundColor: const Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),size:context.blockSizeHorizontal*1.4))),
                                            // CircleAvatar(backgroundColor: Color(0xff687892),minRadius: context.blockSizeHorizontal*0.9, child: Image(image: AssetImage("asset_images/telegram.png"))),

                                          ],
                                        )),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //       children: [
                                    //
                                    //         GestureDetector(
                                    //             onTap: (){
                                    //               Navigator.push(
                                    //                 context,
                                    //                 MaterialPageRoute(builder: (context) =>
                                    //                     CallCenterInvoiceListPrintScreen(
                                    //                       taxableAmount: successOrder[i].total,
                                    //                       note: successOrder[i].notes??"",
                                    //                       select: false,
                                    //                       vendorCode:"",
                                    //                       orderCode:successOrder[i].orderCode??"",
                                    //                       orderDate: successOrder[i].orderdDate?.split("T")[0]??"",
                                    //                       table:successOrder[i].lines??[],
                                    //                       vat: successOrder[i].vat,
                                    //                       totalPrice:successOrder[i].total,
                                    //                       discount:successOrder[i].discount ,
                                    //                       remarks:successOrder[i].remarks??"",
                                    //                     )
                                    //                 ),
                                    //               );
                                    //             },
                                    //             child: CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),))),
                                    //       ],
                                    //     )),
                                  ]
                              ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              if(totalCount>1)
                tableCountPagination(
                  key: _paginationState,
                    totalCountText: "Orders",
                    totalCount: totalNumbers,
                    displayList: displayPaginatedList,
                    count: totalCount,
                    reset:     () =>
                        context.read<SuccessOrdersCubit>().refresh(),
                    back:(){
                    },
                    next:(int val){
                      context
                          .read<SuccessOrdersCubit>()
                          .nextslotSectionPageList(val);

                    }
                )
            ],
          );


        });

  },
);
      }
    ),
);
  }
}

