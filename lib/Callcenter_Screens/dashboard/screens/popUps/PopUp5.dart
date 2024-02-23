import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_cubit/customer_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import '../../../../Models/Call_Center_Model/All_Customers_List/All_Customers.dart';
import '../../../../Widgets/ItemCard.dart';
import '../../../../custom_table/costumtable2.dart';
import '../../../CallCenterWidgets.dart';



class FifthPopUp extends StatefulWidget {
  final TextEditingController? allCostemerId;
  final TextEditingController? barcode;
  final TextEditingController? customerUsercode;
  final TextEditingController? productName;

  FifthPopUp({this.allCostemerId, this.barcode, this.productName, this.customerUsercode});

  @override
  State<FifthPopUp> createState() => _FifthPopUpState();
}

class _FifthPopUpState extends State<FifthPopUp> {
  List<AllCustomerList>cusList=[];
  TextEditingController search =TextEditingController();
  String nextPage="";
  bool isLoading=false;
  bool   isTop=false;


  @override
  Widget build(BuildContext context) {

          return
            BlocProvider(create: (context) => CustomerCubit()..getCustomerListHistory(widget.customerUsercode?.text??"",widget.allCostemerId?.text??""),
  child: BlocListener<CustomerCubit, CustomerState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read Customer");
                  },
                  success: (data) async {
                    if(data.data.isNotEmpty){
                      for(var i =0;i<data.data.length;i++){
                        cusList.add(data.data[i]);
                      }
                    }


                    nextPage="";
                    if(data.nextPage!=null){
                      nextPage=data?.nextPage??"";

                    }
                    else{
                      nextPage="";
                    }
                    print(data.nextPage);

                    setState(() {

                    });

                  });

  },
  child: Builder(
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
                  content: PopUpHeaderCallcenterTwo(
                    buttonVisible: false,
                    height: context.blockSizeVertical*76  ,
                    label: "Customer History",width: context.blockSizeHorizontal*67,

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
                                Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: context.blockSizeVertical*1,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Barcode",style: TextStyle(fontSize: context.blockSizeHorizontal*1),),
                                                  SizedBox(height: context.blockSizeVertical*1,),
                                                  Container(
                                                    // height: context.blockSizeVertical*5,
                                                    width: context.blockSizeHorizontal*10,
                                                    child:TextFormField(
                                                      controller:widget. barcode,
                                                      readOnly: true,
                                                      onChanged: (sa){
                                                        context
                                                            .read<CustomerCubit>()
                                                          ..getSearchedOrder(search.text);
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
                                              Expanded(
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Product Name",style: TextStyle(fontSize: context.blockSizeHorizontal*1),),
                                                    SizedBox(height: context.blockSizeVertical*1,),
                                                    Container(
                                                      // height: context.blockSizeVertical*5,
                                                      // width: context.blockSizeHorizontal*20,
                                                      child: TextField(
                                                        readOnly: true,controller: widget.productName,
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
                                              ),
                                              SizedBox(width: context.blockSizeHorizontal*1,),
                                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Customer Code",style: TextStyle(fontSize: context.blockSizeHorizontal*1),),
                                                  SizedBox(height: context.blockSizeVertical*1,),
                                                  Container(
                                                    // height: context.blockSizeVertical*5,
                                                    width: context.blockSizeHorizontal*10,
                                                    child: TextField(
                                                      readOnly: true,
                                                      controller: TextEditingController(text:listCustomer?.customerUserCode),
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
                                              Expanded(
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Customer Name",style: TextStyle(fontSize: context.blockSizeHorizontal*1),),
                                                    SizedBox(height: context.blockSizeVertical*1,),
                                                    Container(
                                                      // height: context.blockSizeVertical*5,

                                                      child: TextField(
                                                        readOnly: true,
                                                        controller: TextEditingController(text: listCustomer?.customerName??""),
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
                                              ),
                                              SizedBox(width: context.blockSizeHorizontal*.8,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: context.blockSizeVertical*.8,),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: context.blockSizeHorizontal * 65,
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
                                    1: const FlexColumnWidth(2),
                                    2: const FlexColumnWidth(2),
                                    3: const FlexColumnWidth(2),
                                    4: const FlexColumnWidth(2),
                                    5: const FlexColumnWidth(2),
                                    6: const FlexColumnWidth(2.5),
                                    7: const FlexColumnWidth(2),
                                    8: const FlexColumnWidth(2),



                                  },
                                  childrens: [
                                    TableRow(

                                        children: [
                                          tableHeadtextTwo(

                                            'Sl.No',
                                            // padding:
                                            // const EdgeInsets.all(15),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Order Code',
                                            // padding:
                                            // const EdgeInsets.all(15),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Order Date',
                                            // padding:
                                            // const EdgeInsets.all(15),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Order Line Code',
                                            // padding:
                                            // const EdgeInsets.all(15),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'UOM',
                                            // padding:
                                            // const EdgeInsets.all(13),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Rate',
                                            // padding:
                                            // const EdgeInsets.all(13),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Qty',
                                            // padding:
                                            // const EdgeInsets.all(13),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Discount',
                                            // padding:
                                            // const EdgeInsets.all(13),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),
                                          tableHeadtextTwo(
                                            'Total',
                                            // padding:
                                            // const EdgeInsets.all(13),
                                            height: 42,
                                            size: context.blockSizeHorizontal*.9,
                                          ),




                                        ]),
                                    // if(cusList!=null)




                                  ],
                                ),
                              ),
                              BlocBuilder<CustomerCubit, CustomerState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return Container(

          height: context.blockSizeVertical*42,
          child: Center(child: customCupertinoLoading()));
    },loading: (){
      return Container(
          height: context.blockSizeVertical*42,child: Center(child: customCupertinoLoading()));
    },
    success:(data){
      return  cusList.isEmpty?Container(
          height: context.blockSizeVertical*42,child: Center(child: EmptyDataDisplay())):Container( alignment: Alignment.topRight,
        height: context.blockSizeVertical*42,
        width: context.blockSizeHorizontal * 65,


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
                  context.read<CustomerCubit>().nextslotSectionPageList(nextPage);

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
                1: const FlexColumnWidth(2),
                2: const FlexColumnWidth(2),
                3: const FlexColumnWidth(2),
                4: const FlexColumnWidth(2),
                5: const FlexColumnWidth(2),
                6: const FlexColumnWidth(2.5),
                7: const FlexColumnWidth(2),
                8: const FlexColumnWidth(2),



              },
              childrens: [

                if(cusList!=null)...[
                  for(var i=0;i<cusList!.length;i++)


                    TableRow(
                        children: [
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo((i+1).toString(),(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.orderCode?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.createdDate?.toString()??"",(){},)),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i].lineCode?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i].uomName.toString(),(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.sellingPrice?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.quantity?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.discount?.toString()??"",(){})),
                          TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                              child: textPaddingTwo(cusList[i]?.totalAmount?.toString()??"",(){})),




                        ]
                    ),
                ],





              ],
            ),
          ),
        ),
      );
    });

  },
),

                            ],
                          ),

                        )

                                      ],
                                    ))
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