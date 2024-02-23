import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_ProcessList_Cubit/payment_process_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../../Widgets/commonutils.dart';
import '../../CallCenter_MainScreen.dart';
import '../../dashboard/screens/popUps/PopUp10.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}


class _PaymentScreenState extends State<PaymentScreen> {
  int grpValue = 0;
  int grpValue2 = -1;
  String status="";
  String timeBy="";
  List<PaymentProcessList> processList=[];
  var paginated;
  TextEditingController search=TextEditingController();
  List<String> payment=["All Payments","Pending","Success"];
  List<String> paymentTime=["All Day","Today’s Payment","This week’s Payment","This month’s Payment"];

  int totalCount=0;
  int totalNumbers=0;
  bool   isCallPaginated=false;
  List<int>   displayPaginatedList=[];
  paginatedCheck(){

    displayPaginatedList.clear();
    totalCount=0;
    if( paginated.nextPageUrl != null){

      totalNumbers=int.tryParse(paginated.count??0)!;
      print("totalNumbers$totalNumbers");

      totalCount=(int.tryParse(paginated.count??1)!/(processList.length)).ceil();
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
  @override
  void initState() {
    context.read<PaymentProcessListCubit>().getPaymentProcessList();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentProcessListCubit, PaymentProcessListState>(
    listener: (context, state) {
      print("pay$state");
      state.maybeWhen(
        orElse: () {},
        success: (list) {
          setState(() {});
          paginated=list;
          processList = list.data;
          setState((){
      if(  isCallPaginated==false)  paginatedCheck();

          });
        },
      );
    },
    child: Container(
      padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2),

        // color: Color(0xffE1E7ED),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(


                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: context.blockSizeVertical*2,),
                        Text("Payment Details",style: TextStyle(fontSize: context.blockSizeHorizontal*1.2,fontWeight: FontWeight.bold),),
                        SizedBox(height: context.blockSizeVertical*2,),
                        Container(
                          color: Colors.white,
                          width: context.blockSizeHorizontal*72,
                          child: TextFormField(
                            controller: search,
                            onChanged: (sa){


                              isCallPaginated=false;
                                context.read<PaymentProcessListCubit>().getSearched(search.text);

                              setState(() {
                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              hintText: "Search  Transaction Id,User Code,Channel Code,Payment Status,Payment Reference",
                              hintStyle: TextStyle(fontSize: context.blockSizeVertical*1.5),
                              isDense: true,
                              label: null,
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
                        SizedBox(height: context.blockSizeVertical*1,),
                        BlocBuilder<PaymentProcessListCubit, PaymentProcessListState>(
    builder: (context, state) {
      return state.maybeWhen(orElse: (){return
              Container(
                // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                  height: context.blockSizeVertical*62,
                  width: context.blockSizeHorizontal * 72,
                  color: Colors.white,
                  child: listcustomCupertinoLoading(context));},
      initial: (){ return Container(
              // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                height: context.blockSizeVertical*62,
                width: context.blockSizeHorizontal * 72,
                color: Colors.white,
                child: listcustomCupertinoLoading(context));},success: (data){
              return
                Container(
                // color: Colors.green,
                alignment: Alignment.topLeft,
                // height: context.blockSizeVertical*40,

                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.white,
                      width: context.blockSizeHorizontal * 72,
                      child: customTableTwo(
                        border: const TableBorder(
                          // verticalInside: BorderSide(
                          //     width: 0.5,
                          //     color: Colors.black45,
                          //     style:
                          //     BorderStyle.solid),
                          horizontalInside:
                          BorderSide(width: 0.2, color: Colors.black45,
                              style:
                              BorderStyle.solid),
                          // top: BorderSide(width: 0.5, color: Colors.black45,
                          //     style:
                          //     BorderStyle.solid),
                          // right: BorderSide(width: 0.5, color: Colors.black45,
                          //     style:
                          //     BorderStyle.solid),
                          // left: BorderSide(width: 0.5, color: Colors.black45,
                          //     style:
                          //     BorderStyle.solid),
                          // bottom: BorderSide(width: 0.5, color: Colors.black45,
                          //     style:
                          //     BorderStyle.solid),
                        ),
                        tableWidth: .5,
                        widths: {
                          0: const FlexColumnWidth(1),
                          1: const FlexColumnWidth(2),
                          2: const FlexColumnWidth(2),
                          3: const FlexColumnWidth(2),
                          4: const FlexColumnWidth(2),
                          5: const FlexColumnWidth(2),
                          6: const FlexColumnWidth(2),
                        },
                        childrens: [
                          TableRow(
                              children: [
                                // tableHeadtextTwo(
                                //   'Sl.No',
                                //   height: 42,
                                //   size: 13,
                                // ),
                                tableHeadtextTwo(
                                  'Transaction ID',
                                  height: 42,
                                  size: 13,
                                ),
                                tableHeadtextTwo(
                                  'Transaction Date',
                                  height: 42,
                                  size: 13,
                                ),
                                tableHeadtextTwo(
                                  'Name and Contact',
                                  height: 42,
                                  size: 13,
                                ),
                                tableHeadtextTwo(
                                  'Amount',
                                  height: 42,
                                  size: 13,
                                ),
                                tableHeadtextTwo(
                                  'Payment Status',
                                  height: 42,
                                  size: 13,
                                ),


                              ]),


                        ],
                      ),
                    ),
                    SizedBox(height: context.blockSizeVertical*.2,),
                    processList.isEmpty?
                    Container(
                      // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                        height: context.blockSizeVertical*60,
                        width: context.blockSizeHorizontal * 72,

                        color: Colors.white,
                        child: EmptyDataDisplay()):     Container(
                      color: Colors.white,
                      width: context.blockSizeHorizontal * 72,
                      height: totalCount==0?context.blockSizeVertical*70:context.blockSizeVertical*58,
                      child: SingleChildScrollView(
                        child: customTableTwo(
                          border: const TableBorder(
                            // verticalInside: BorderSide(
                            //     width: 0.5,
                            //     color: Colors.black45,
                            //     style:
                            //     BorderStyle.solid),
                            horizontalInside:
                            BorderSide(width: 0.2, color: Colors.black45,
                                style:
                                BorderStyle.solid),
                            // top: BorderSide(width: 0.5, color: Colors.black45,
                            //     style:
                            //     BorderStyle.solid),
                            // right: BorderSide(width: 0.5, color: Colors.black45,
                            //     style:
                            //     BorderStyle.solid),
                            // left: BorderSide(width: 0.5, color: Colors.black45,
                            //     style:
                            //     BorderStyle.solid),
                            // bottom: BorderSide(width: 0.5, color: Colors.black45,
                            //     style:
                            //     BorderStyle.solid),
                          ),
                          tableWidth: .5,
                          widths: {
                            0: const FlexColumnWidth(1),
                            1: const FlexColumnWidth(2),
                            2: const FlexColumnWidth(2),
                            3: const FlexColumnWidth(2),
                            4: const FlexColumnWidth(2),
                            5: const FlexColumnWidth(2),
                            6: const FlexColumnWidth(2),
                          },
                          childrens: [


                            for(var i=0;i<processList.length;i++)

                              TableRow(
                                  children: [
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    //     child: textPaddingTwo((i+1).toString(),(){
                                    //       print("proceessID${processList[i].id}");
                                    //     },align: Alignment.topLeft,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(processList[i].transactionCode??"",
                                                (){
                                              // showDailogPopUp(
                                              //   context,
                                              //   TenthPopUp(
                                              //     amountTotal: processList[i].totalAmount.toString()??"",
                                              //     orderId: processList[i].postResponse?.orderId??"",
                                              //     processId: processList[i].id??0,
                                              //     customerCode: processList[i].postResponse?.customerCode??"",
                                              //     status: processList[i].postResponse?.status??"",
                                              //     transactionCode: processList[i].postResponse?.transactionCode??"",
                                              //     editPayment: true,
                                              //   ),
                                              // );
                                              setState(() {

                                              });
                                            },align: Alignment.center)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(processList[i].created??"",(){},align: Alignment.center)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(
                                          "${processList[i].postResponse?.customerCode??""}\n ${processList[i].postResponse?.contact??""}",(){},align: Alignment.center,label1: processList[i].customerCode, )),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(processList[i].totalAmount.toString()??"",(){},align: Alignment.center)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo((processList[i].paymentStatus?.replaceAll("_", " "))?.toTitleCase()??"",(){
                                          // showDailogPopUp(
                                          //   context,
                                          //   TenthPopUp(
                                          //     amountTotal: processList[i].totalAmount.toString()??"",
                                          //     orderId: processList[i].postResponse?.orderId??"",
                                          //     processId: processList[i].id??0,
                                          //     customerCode: processList[i].postResponse?.customerCode??"",
                                          //     status: processList[i].postResponse?.status??"",
                                          //     transactionCode: processList[i].postResponse?.transactionCode??"",
                                          //     editPayment: true,
                                          //   ),
                                          // );
                                        },align: Alignment.center)),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //       children: [
                                    //         CircleAvatar(backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9, child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),)),
                                    //         // CircleAvatar(backgroundColor: Color(0xff687892),minRadius: context.blockSizeHorizontal*0.9, child: Image(image: AssetImage("asset_images/telegram.png"))),
                                    //
                                    //       ],
                                    //     )),




                                  ]
                              ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),

                    // if(         data!=null )  tablePagination(
                    //       () =>
                    //       context.read<PaymentProcessListCubit>().refresh(),
                    //   back: data.previousUrl == null
                    //       ? null
                    //       : () {
                    //     context
                    //         .read<PaymentProcessListCubit>()
                    //         .previuosslotSectionPageList();
                    //   },
                    //   next: data.nextPageUrl == null
                    //       ? null
                    //       : () {
                    //     // print(data.nextPageUrl);
                    //     context
                    //         .read<PaymentProcessListCubit>()
                    //         .nextslotSectionPageList();
                    //   },
                    // )

                  ],
                ),

              );
                });

    },
),
                      ],
                    ),
                  ),
                  SizedBox(width: context.blockSizeHorizontal*2,),
                  Container(

                    margin: EdgeInsets.only(top:  context.blockSizeVertical*6.5),
                    height: context.blockSizeVertical*65,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(color: const Color(0xff6F91CB),
                          width: context.blockSizeHorizontal*18,
                          padding: EdgeInsets.all(15),
                          child: const Text("SORT BY",style: TextStyle(
                              color: Colors.white,
                          fontWeight: FontWeight.bold),),),
                        Column(
                          children: [
                            Container(
                                width: context.blockSizeHorizontal*18,
                                color: Colors.white,
                                padding: EdgeInsets.only(left:  context.blockSizeHorizontal*1.4,top:  context.blockSizeVertical*1.5),
                                child: Text("Payment Status",style: TextStyle(color: Color(0xff6F91CB),fontWeight: FontWeight.bold,fontSize: context.blockSizeVertical*2),)),
                            SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.all(context.blockSizeVertical*2),
                                width: context.blockSizeHorizontal*18,
                                child: Container(
                                  height: context.blockSizeVertical*17,

                                  decoration: BoxDecoration(
                                    border: Border.all( width:1,
                                        color: Colors.grey.withOpacity(.3)),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: ListView.builder(
                                      // shrinkWrap: true,
                                      // physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                      RadioTextListTile(
                                        ontap:(int? value) {
                                          setState(()  {
                                            grpValue = value!;
                                            grpValue2=-1;
                                            status=payment[index];
                                            isCallPaginated=false;
                                            if(status=="All Payments"){
                                              context
                                                  .read<PaymentProcessListCubit>()
                                                ..getPaymentProcessList();
                                            }
                                            else if(status=="Pending"){
                                              context
                                                  .read<PaymentProcessListCubit>()
                                                ..getSearched("payment_pending");
                                            }
                                            else if(status=="Success"){
                                              context
                                                  .read<PaymentProcessListCubit>()
                                                ..getSearched("payment_completed");
                                            }
                                            else{
                                              context
                                                  .read<PaymentProcessListCubit>()
                                                ..getSearched("");
                                            }


                                          });

                                        },grpValue: grpValue, index: index,text: payment[index],

                                      ),




                                          // Container(
                                          //
                                          //   height: context.blockSizeVertical*5,
                                          //   decoration: BoxDecoration(
                                          //
                                          //     border: Border(
                                          //       bottom: BorderSide( //
                                          //         width:1,
                                          //         color: Colors.grey.withOpacity(.3)
                                          //       ),
                                          //     )
                                          //
                                          //     ),
                                          //
                                          //   child: Row(
                                          //     mainAxisAlignment: MainAxisAlignment.start,
                                          //     children: [
                                          //       Radio(
                                          //         value: index,
                                          //         groupValue: grpValue,
                                          //         onChanged: (int? value) {
                                          //           setState(()  {
                                          //             grpValue = value!;
                                          //             grpValue2=-1;
                                          //             status=payment[index];
                                          //             if(status=="All Payments"){
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getPaymentProcessList();
                                          //             }
                                          //             else if(status=="Pending"){
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getSearched("payment_pending");
                                          //             }
                                          //             else if(status=="Success"){
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getSearched("payment_completed");
                                          //             }
                                          //             else{
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getSearched("");
                                          //             }
                                          //
                                          //
                                          //           });
                                          //
                                          //         },),
                                          //       Text(payment[index],style: TextStyle(fontSize: context.blockSizeHorizontal*1.1),)
                                          //
                                          //
                                          //     ],
                                          //   ),
                                          // ),

                                      itemCount: payment.length
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: context.blockSizeVertical*1.5,),
                            Container(
                                width: context.blockSizeHorizontal*18,
                                color: Colors.white,
                                padding: EdgeInsets.only(left:  context.blockSizeHorizontal*1.4,top:  context.blockSizeVertical*1.5),
                                child: Text("Payments Time",style: TextStyle(color: Color(0xff6F91CB),fontWeight: FontWeight.bold,fontSize: context.blockSizeVertical*2),)),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                              padding: EdgeInsets.all(15),
                              width: context.blockSizeHorizontal*18,
                              child: SingleChildScrollView(
                                child: Container(
                                  height: context.blockSizeVertical*23,
                                  decoration: BoxDecoration(
                                      border: Border.all( width:1,
                                          color: Colors.grey.withOpacity(.3)),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) =>


                                      RadioTextListTile(grpValue: grpValue2, index: index,text:paymentTime[index],ontap: (int? value) {
                                        setState(()  {
                                          grpValue2 = value!;
                                          grpValue=-1;
                                          isCallPaginated=false;
                                          timeBy=paymentTime[index];
                                          if(timeBy=="All Day"){
                                            context
                                                .read<PaymentProcessListCubit>()
                                              ..getPaymentProcessList();
                                          }
                                          else if(timeBy=="Today’s Payment"){
                                            var strtDate=DateFormat('yyyy-MM-dd').format(DateTime.now());
                                            print(strtDate);
                                            context
                                                .read<PaymentProcessListCubit>()
                                              ..getFilterdByTime(strtDate,strtDate);

                                          }
                                          else if(timeBy=="This week’s Payment"){
                                            DateTime today = DateTime.now();
                                            DateTime _firstDayOfTheweek = today.subtract(new Duration(days: today.weekday));
                                            var strtDate=DateFormat("yyyy-MM-dd").format( _firstDayOfTheweek);
                                            var date=_firstDayOfTheweek.day+6;
                                            var endDAte =DateFormat("yyyy-MM-dd").format( _firstDayOfTheweek.add(Duration(days: 6)));

                                            context.read<PaymentProcessListCubit>()..getFilterdByTime(strtDate,endDAte);



                                          }
                                          else{
                                            DateTime now = DateTime.now();
                                            var endDate=DateFormat('yyyy-MM-dd').format(now);
                                           var startDate =DateFormat('yyyy-MM-dd').format( DateTime.utc(now.year, now.month, 1));
                                            context.read<PaymentProcessListCubit>()..getFilterdByTime(startDate,endDate);




                                          }
                                        });

                                      }, ),
                                          // Container(
                                          //   height: context.blockSizeVertical*5,
                                          //   decoration: BoxDecoration(
                                          //
                                          //       border: Border(
                                          //         bottom: BorderSide( //
                                          //             width:1,
                                          //             color: Colors.grey.withOpacity(.3)
                                          //         ),
                                          //       )
                                          //
                                          //   ),
                                          //
                                          //   child: Row(
                                          //     mainAxisAlignment: MainAxisAlignment.start,
                                          //     children: [
                                          //       Radio(
                                          //         value: index,
                                          //         groupValue: grpValue2,
                                          //         onChanged: (int? value) {
                                          //           setState(()  {
                                          //             grpValue2 = value!;
                                          //             grpValue=-1;
                                          //             timeBy=paymentTime[index];
                                          //             if(timeBy=="All Day"){
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getPaymentProcessList();
                                          //             }
                                          //             else if(timeBy=="Today’s Payment"){
                                          //               var strtDate=DateFormat('yyyy-MM-dd').format(DateTime.now());
                                          //               print(strtDate);
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getFilterdByTime(strtDate,strtDate);
                                          //
                                          //             }
                                          //             else if(timeBy=="This week’s Payment"){
                                          //               DateTime today = DateTime.now();
                                          //               DateTime _firstDayOfTheweek =
                                          //               today.subtract(new Duration(days: today.weekday));
                                          //              var strtDate=DateFormat("yyyy-MM-dd").format( _firstDayOfTheweek);
                                          //              print("startDate$strtDate");
                                          //               var date=_firstDayOfTheweek.day+6;
                                          //               var endDAte =DateFormat("yyyy-MM-dd").format( _firstDayOfTheweek.add(Duration(days: 6)));
                                          //               print("startDate$endDAte");
                                          //               context
                                          //                   .read<PaymentProcessListCubit>()
                                          //                 ..getFilterdByTime(strtDate,endDAte);
                                          //
                                          //
                                          //
                                          //             }
                                          //           });
                                          //
                                          //         },),
                                          //       Text(paymentTime[index],style: TextStyle(fontSize: context.blockSizeHorizontal*1.08),)
                                          //
                                          //
                                          //     ],
                                          //   ),
                                          // ),

                                      itemCount: paymentTime.length
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              if(totalCount>1)
                Container(
                  // height: 100,
                  width: context.blockSizeHorizontal * 75,
                  child: tableCountPagination(
                      totalCountText: "Payments",
                      totalCount: totalNumbers,
                      displayList: displayPaginatedList,
                      count: totalCount,
                      reset:     () =>
                          context.read<PaymentProcessListCubit>().refresh(),
                      back: paginated.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<PaymentProcessListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next:(int val){
                        isCallPaginated=true;
                        context
                            .read<PaymentProcessListCubit>()
                            .nextslotSectionPageList(val);

                      }
                  ),
                ),
            ],

          ),
        ),
      ),
);
  }
}
