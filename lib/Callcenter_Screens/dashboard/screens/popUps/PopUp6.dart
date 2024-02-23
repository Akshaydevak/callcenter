import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/All_Customer_Cubit/all_customers_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../../Models/Call_Center_Model/All_Customers_List/All_Customers.dart';
import '../../../../Widgets/ItemCard.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../CallCenterWidgets.dart';



class SixthPopUp extends StatefulWidget {
  final TextEditingController? barcode;
  final TextEditingController? productName;
  final TextEditingController? customerUsercode;
  final TextEditingController? allCustomerId;

  const SixthPopUp({Key? key,  this.barcode,  this.productName, this.customerUsercode, this.allCustomerId,}) : super(key: key);

  @override
  State<SixthPopUp> createState() => _SixthPopUpState();
}

class _SixthPopUpState extends State<SixthPopUp> {
  List<AllCustomerList>allList=[];
  TextEditingController search =TextEditingController();
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;

  @override
  Widget build(BuildContext context) {


          return
            BlocProvider(create: (context) => AllCustomersCubit()..getAllCustomerList(widget.allCustomerId?.text??""),
  child: BlocListener<AllCustomersCubit, AllCustomersState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read All Customer");
                  },
                  success: (data) {
                    setState(() {
                      allList=data.data;
                      print("list$allList");
                    });

                  }
              );

  },
  child: Builder(
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
                  content: PopUpHeaderCallcenterTwo(
                    buttonVisible: false,
                    height: context.blockSizeVertical*76,
                    width: context.blockSizeHorizontal*67,
                    label: "All Customer History",
                    onApply: () {},
                    onEdit: () {},
                    dataField: SizedBox(


                      child: Container(
                        // color: Colors.red,
                        // height: 600,
                        // width: MediaQuery.of(context).size.width-20,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: context.blockSizeVertical*1,),
                                    Row(
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // Text("Barcode"),
                                            Container(
                                              // height: context.blockSizeVertical*5,
                                              width: context.blockSizeHorizontal*10,
                                              child:TextFormField(

                                                readOnly: true,
                                                controller: widget.barcode,
                                                onChanged: (sa){
                                                  context
                                                      .read<AllCustomersCubit>()
                                                    ..getSearchOrder(search.text);
                                                  setState(() {

                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  label: null,
                                                  filled: true,
                                                  fillColor: Color(0xffF2F2F2),
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
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // Text("Product Name"),
                                            Container(
                                              // height: context.blockSizeVertical*5,
                                              width: context.blockSizeHorizontal*20,
                                              child: TextFormField(
                                                readOnly: true,
                                                controller: widget.productName,

                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  label: null,
                                                  filled: true,
                                                  fillColor: Color(0xffF2F2F2),
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
                                        SizedBox(width: context.blockSizeHorizontal*2,),

                                      ],
                                    ),
                                    SizedBox(height: context.blockSizeVertical*.8,),
                        Container(
                          alignment: Alignment.topRight,

                          // color: Colors.yellow,
                          child: Column(
                            children: [
                              Container(
                                width: context.blockSizeHorizontal * 63,
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

                                    0: const FlexColumnWidth(1),
                                    1: const FlexColumnWidth(3),
                                    2: const FlexColumnWidth(3),
                                    3: const FlexColumnWidth(3),
                                    4: const FlexColumnWidth(3),
                                    5: const FlexColumnWidth(1.5),
                                    6: const FlexColumnWidth(1.5),
                                    7: const FlexColumnWidth(1.5),
                                    8: const FlexColumnWidth(2),
                                    9: const FlexColumnWidth(2),
                                    10: const FlexColumnWidth(3),
                                    11: const FlexColumnWidth(2.5),



                                  },
                              childrens: [
                                TableRow(

                                    children: [
                                      tableHeadtextTwo(

                                        'Sl.No',
                                        // padding:
                                        // const EdgeInsets.all(15),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,

                                      ),
                                      tableHeadtextTwo(
                                        'Order Code',
                                        // padding:
                                        // const EdgeInsets.all(15),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Order Date and Time',
                                        // padding:
                                        // const EdgeInsets.all(15),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'User Code',
                                        // padding:
                                        // const EdgeInsets.all(15),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'User Name',
                                        // padding:
                                        // const EdgeInsets.all(15),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'UOM',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Price',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Qty',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Disc.Type',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Discount',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),
                                      tableHeadtextTwo(
                                        'Total',
                                        // padding:
                                        // const EdgeInsets.all(13),
                                        height: context.blockSizeVertical*7,
                                        size: context.blockSizeHorizontal*1,
                                      ),




                                    ]),



                              ],
                                ),
                              ),
                              BlocBuilder<AllCustomersCubit, AllCustomersState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return Container(
        child:Center(
          child: customCupertinoLoading(),
        )
      );
    },loading: (){
     return Container(
          child:Center(
            child: customCupertinoLoading(),
          )
      );
    },
      success: (data){
      return allList.isEmpty?Container(
        height: context.blockSizeVertical*40,
        child: EmptyDataDisplay(),
      ) :Container(
        width: context.blockSizeHorizontal * 63,
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
                  context.read<AllCustomersCubit>().nextslotSectionPageList(nextPage);

                  setState(() {
                    isLoading=true;
                  });
                }



              }

            }return true;
          },
          child: SingleChildScrollView(
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

                0: const FlexColumnWidth(1),
                1: const FlexColumnWidth(3),
                2: const FlexColumnWidth(3),
                3: const FlexColumnWidth(3),
                4: const FlexColumnWidth(3),
                5: const FlexColumnWidth(1.5),
                6: const FlexColumnWidth(1.5),
                7: const FlexColumnWidth(1.5),
                8: const FlexColumnWidth(2),
                9: const FlexColumnWidth(2),
                10: const FlexColumnWidth(3),
                11: const FlexColumnWidth(2.5),



              },
              childrens: [


                if(allList!=null)
                  for(var i=0;i<allList!.length;i++)


                    TableRow(
                        children: [
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo((i+1).toString(),(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].orderCode?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].createdDate.toString()+allList[i].createdTime.toString(),(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].customerCode?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].customerName?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].uomName?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].sellingPrice?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].quantity?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(allList[i].discountBasedOn?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(allList[i].discount?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(allList[i].totalAmount?.toString()??"",(){})),




                        ]
                    ),


              ],
            ),
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

                                  ],
                                )
                              ],
                            )


                          ],
                        ) ,

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