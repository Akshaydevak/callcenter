import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/invoice_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Invoice_Cubit/invoice_order_cubit.dart';
import 'package:salesapp/Cubit/pdf/pdf_view_cubit.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/custom_table/colors.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import '../../custom_table/costumtable2.dart';
import '../../utils/variables.dart';
import '../CallCenter_MainScreen.dart';
import '../Callcenter/pdf_screen_callcenter/invoice_pdf.dart';
import '../Callcenter/pdf_screen_callcenter/list_invoice_pdf.dart';
import '../Callcenter/widgets.dart';


class OrderInvoiceScreen extends StatefulWidget {
  const
  OrderInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<OrderInvoiceScreen> createState() => _OrderInvoiceScreenState();
}
bool invoicePage=false;
class _OrderInvoiceScreenState extends State<OrderInvoiceScreen> {
  final GlobalKey<tableCountPaginationState> _paginationState = GlobalKey<tableCountPaginationState>();
    List<AllOrdersTables>invoiceList=[];
    List<LinesAllOrder>? lines=[];
  TextEditingController search =TextEditingController();
  var paginated;
    bool   isPageSearch=false;
    int   iconLoadingIndex=-1;
    int selectedIndex=-1;
  bool selected=false;

  bool select1=true;
  bool select2=false;
  bool select3=false;
    String nextPage="";
    bool isLoading=false;
    bool   isTop=false;
    int totalCount=0;
    int totalNumbers=0;
 bool   isCallPaginated=false;
 List<int>   displayPaginatedList=[];
    paginatedCheck(){
      displayPaginatedList.clear();
      totalCount=0;
      if( paginated.nextPageUrl != null){
        totalNumbers=int.tryParse(paginated.count??0)!;

        totalCount=(int.tryParse(paginated.count??1)!/(invoiceList.length)).ceil();
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
    searchEvenchangeFunc(String sa){
      isPageSearch=true;
      isCallPaginated=false;

      _paginationState.currentState?.selectedIndex=0;

      if(sa==""){
        context.read<InvoiceOrderCubit>().getInvoiceOrderList();
      }
      else{
        context.read<InvoiceOrderCubit>().getSearchAllOrders(search.text);
      }
      setState(() {

      });
    }


    pdfLoading(PdfUrlModel model) async {
      invoiceList[iconLoadingIndex]=invoiceList[iconLoadingIndex].copyWith(loading: false);
      iconLoadingIndex=-1;




      await launch(model?.pdfUrl??"");

 }


  void ontapFuncRow(int i)async{
    invoicePage=true;
    createOrPatch=false;
    selectedIndex=i;



    Variable.callOrderId=int.tryParse(invoiceList[i].id.toString())??0;


setState(() {
  for (int index = 0; index < invoiceList.length; index++) {
    invoiceList[index] = invoiceList[index].copyWith(isLoading: i==index);
  }
});
await Future.delayed(Duration(milliseconds: 500));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>
            CallCenterMain(tabValue:pages.indexWhere((data)=>4==data.fixedIndex),editOrder: true,)
        ));
  }


    @override
  void initState() {
  context.read<InvoiceOrderCubit>().getInvoiceOrderList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
    listeners: [
      BlocListener<InvoiceOrderCubit, InvoiceOrderState>(
              listener: (context, state) {
                print(state);
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error..read Customer");
                    },
                    loading: (){
                      setState(() {
                        isLoading=true;
                      });
                    },
                    success: (data) async {
                      setState(() {
                        paginated=data;
                        invoiceList=data.data;
                        isLoading=false;

                      if(  isCallPaginated==false)  paginatedCheck();
                        // if(isPageSearch){
                      });

                      //   invoiceList=data.data;
                      //   setState(() {
                      //   });
                      // }else{
                      //   if(data.data.isNotEmpty){
                      //     for(var i =0;i<data.data.length;i++){
                      //       invoiceList.add(data.data[i]);
                      //     }
                      //   }
                      //   nextPage="";
                      //   if(data.nextPage!=null){
                      //     nextPage=data?.nextPage??"";
                      //
                      //   }
                      //   else{
                      //     nextPage="";
                      //   }
                      //
                      //   setState(() {
                      //   });
                      // }

                    });
      },
),
      BlocListener<PdfViewCubit, PdfViewState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {

          }, error: () {

          }, success: (data)  {
            if(data.data1)
              setState(()  {
                PdfUrlModel model=PdfUrlModel();
                model=data.data2;
                pdfLoading(model);


              });
          });
        },
      ),
    ],
    child: Builder(
        builder: (context) {
          return   Scaffold(
            backgroundColor: Color(0xffE1E7ED),
                body:
             Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2,top: context.blockSizeVertical*2),
                      child: Text("Order Invoice",style: TextStyle(fontSize: context.blockSizeHorizontal*1.2,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: context.blockSizeVertical*2,),
                    Padding(
                      padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2),
                      child: Container(
                        color: Colors.white,
                        width: context.blockSizeHorizontal*90,
                        child: TextFormField(
                          controller: search,
                          onChanged: (sa){
                            searchEvenchangeFunc(sa);
                          },
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.search),
                            hintText: "Search Order by order id / User's number...",
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
                    ),
                    SizedBox(height: context.blockSizeVertical*1,),
                    BlocBuilder<InvoiceOrderCubit, InvoiceOrderState>(
    builder: (context, state) {
    return  state.maybeWhen(orElse: () {
        return listcustomCupertinoTableLoading(context);
      }, error: () {
        return listcustomCupertinoTableLoading(context);

      }, success: (data)  {
        return Padding(
          padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2),
          child: Container(

            alignment: Alignment.topLeft,
            // height: context.blockSizeVertical*40,

            // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  width: context.blockSizeHorizontal * 90,
                  child: customTableTwo(
                    border: const TableBorder(
                      horizontalInside:
                      BorderSide(width: 0.2, color: Colors.black45,
                          style:
                          BorderStyle.solid),
                    ),
                    tableWidth: .5,
                    widths: {

                      0: const FlexColumnWidth(2),
                      1: const FlexColumnWidth(2),
                      2: const FlexColumnWidth(2),
                      3: const FlexColumnWidth(3),
                      4: const FlexColumnWidth(3),
                      5: const FlexColumnWidth(2),
                      6: const FlexColumnWidth(1.5),
                      7: const FlexColumnWidth(1.5),
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
                              'User Details',
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
                              'Remark',
                              // padding:
                              // const EdgeInsets.all(13),
                              height: context.blockSizeVertical*8,
                              size: context.blockSizeHorizontal*.9,
                            ), tableHeadtextTwo(
                              'Invoiced/Not',
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
                              'Order Status',
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
                SizedBox(height: 3,),
                invoiceList.isEmpty?
                Container(
                    margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                    height: context.blockSizeVertical*60,
                    color: Colors.white,
                    child: EmptyDataDisplay()):
                Container(
                  color: Color(0xffE1E7ED),
                  width: context.blockSizeHorizontal * 90,
                  height: context.blockSizeVertical*60,
                  child: NotificationListener<ScrollEndNotification>(
                    onNotification: (scrolleEnd){
                      final metrics=scrolleEnd.metrics;
                      if(metrics.atEdge){
                        setState(() {
                          isTop=metrics.pixels==0;
                        });

                        if(isTop){print("isTop");}
                        else{
                          print("isBotttom");
                          if(nextPage!=""){

                            isPageSearch=false;
                            // context.read<InvoiceOrderCubit>().nextslotSectionPageList(nextPage);

                            setState(() {

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
                            horizontalInside:
                            BorderSide(width: 0.2, color: Colors.black45,
                                style:
                                BorderStyle.solid),
                          ),
                          tableWidth: .5,
                          widths: {


                            0: const FlexColumnWidth(2),
                            1: const FlexColumnWidth(2),
                            2: const FlexColumnWidth(2),
                            3: const FlexColumnWidth(3),
                            4: const FlexColumnWidth(3),
                            5: const FlexColumnWidth(2),
                            6: const FlexColumnWidth(1.5),
                            7: const FlexColumnWidth(1.5),
                            8: const FlexColumnWidth(2),

                          },
                          childrens: [

                            for(var i=0;i<invoiceList!.length;i++)

                              TableRow(
                                  children: [

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(invoiceList[i].orderCode.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(DateFormat('dd-MM-yyyy').format(DateTime.parse(
                                            invoiceList[i].orderdDate ??
                                                "")),(){
                                      ontapFuncRow(i);
                                    },align: Alignment.topLeft)),
                                    // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(invoiceList[i].orderdDate.toString().split("T")[0],(){},align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(invoiceList[i].customerName?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(invoiceList[i].deliveryAdrress?.replaceAll("null,","").replaceAll("null", "")=="null"?"":invoiceList [i].deliveryAdrress?.replaceAll("null,","").replaceAll("null", "")??"",(){
                                      ontapFuncRow(i);
                                    },align: Alignment.topLeft)),

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:
                                        NoteAndRemarksPopupText(
                                          invoiceList[i].remarks.toString(),(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,remark:invoiceList[i].remarks,note:
                                        invoiceList[i].notes,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(invoiceList[i].inVoiceStatus?.toString().toTitleCase()??"",(){
                                      ontapFuncRow(i);
                                    },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(invoiceList[i].paymentStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: textPaddingTwo(invoiceList[i].orderStatus?.toString().toTitleCase()??"",(){
                                          ontapFuncRow(i);
                                        },align: Alignment.topLeft,textColor:invoiceList[i]?.orderStatus=="success"?Colors.green:Colors.red ,)),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Container(

                                          margin: EdgeInsets.symmetric(horizontal: 30),
                                          child: Row(mainAxisAlignment: invoiceList[i].invoiceId!=null?MainAxisAlignment.spaceBetween:MainAxisAlignment.start,
                                            children: [
                                              // if(invoiceList[i].inVoiceStatus!="fully invoiced")
                                              InkWell(onTap: (){
                                                ontapFuncRow(i);

                                              },
                                                  child: invoiceList[i].isLoading==true?customCircularLoading():CircleAvatar(child: Icon(Icons.edit,color: Color(0xff7486A2),),backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9)),
                                              if(invoiceList[i].invoiceId!=null)  GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                      iconLoadingIndex=i;
                                                      invoiceList[i]=invoiceList[i].copyWith(loading: true);
                                                    });


                                                    context.read<PdfViewCubit>().getPdfView(invoiceList[i].invoiceId.toString()??"","new_format");
                                                  },
                                                  child: invoiceList[i].loading==true?Container(

                                                      height:10,width:10,child: CircularProgressIndicator(color: Colors.blue,)):CircleAvatar(child: Icon(Icons.save_alt_rounded,color: Color(0xff7486A2),),
                                                      backgroundColor: Color(0xffFFFFFF),minRadius: context.blockSizeHorizontal*0.9)),
                                              // CircleAvatar(child: Image(image: AssetImage("asset_images/telegram.png")),backgroundColor: Color(0xff687892),minRadius: context.blockSizeHorizontal*0.9),

                                            ],
                                          ),
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
                      totalCountText: "Invoice",
                      totalCount: totalNumbers,
                      displayList: displayPaginatedList,
                      count: totalCount,
                      reset:     () =>
                          context.read<InvoiceOrderCubit>().refresh(),
                      back: paginated.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<InvoiceOrderCubit>()
                            .previuosslotSectionPageList();
                      },
                      next:(int val){
                        isCallPaginated=true;
                        context
                            .read<InvoiceOrderCubit>()
                            .nextslotSectionPageList(val);

                      }
                  )


              ],
            ),

          ),
        );
      });

    },
)
                  ],
              ),
            );
        }
      ),
);
  }
}
