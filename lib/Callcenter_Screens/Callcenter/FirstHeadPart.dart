import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/bloc/order_type_refresh/order_type_refresh_bloc.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Order_Type_Cubit/order_type_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/hilal_urls.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Cubit/Assign_To_Cubit/assign_to_cubit.dart';
import '../../Models/Assign_To_List/Assign_To_List.dart';
import '../../Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import '../../Models/Call_Center_Model/channel_List/Channel_List.dart';
import '../../Widgets/dropdownbutton.dart';
import '../../utils/variables.dart';

class FirstHead extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderDate;
  final TextEditingController orderTime;
  final TextEditingController channelCode;
  final TextEditingController trn;
  final TextEditingController storeName;
  final TextEditingController counter;
  final TextEditingController operator;
  final TextEditingController channelName;
  final TextEditingController channelId;
  final TextEditingController channelTypeId;
  final TextEditingController channelTypeCode;
  final TextEditingController channelStockType;
  final Function? onFocusModeChange;

  final bool isRejectOrApproveCart;
  final Function refresh;
  const FirstHead(
      {Key? key,
      required this.orderType,
      required this.orderDate,
      required this.refresh,
      required this.orderTime,
      required this.trn,
      required this.storeName,
      required this.counter,
      required this.operator, required this.channelCode, required this.channelName, required this.channelId, required this.channelTypeId, required this.channelTypeCode, required this.channelStockType, required this.isRejectOrApproveCart, this.onFocusModeChange})
      : super(key: key);

  @override
  State<FirstHead> createState() => _FirstHeadState();
}

class _FirstHeadState extends State<FirstHead> {
  late AutoScrollController controller;
  List<String> orderType = List.from([]);
  FocusNode orderTypeFocusNoe=FocusNode();
  String fullName = "";
  TextEditingController orderOrinvoiceCodeController=TextEditingController();

  @override
  void initState() {
    context.read<OrderTypeCubit>().getOrderTypes();
    getData();
    // if(createOrPatch!=true && invoicePage!=true)
    //   WidgetsBinding.instance?.addPostFrameCallback((_) {
    //     FocusScope.of(context).requestFocus(orderTypeFocusNoe);
    //   });

    Variable.orderTypes = "";

    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }

  var counter;
  var stroreNmae;
  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counter = prefs.getString('channelName');
    stroreNmae = prefs.getString('invId');
    widget.channelCode.text=prefs.getString('channelName')??"";

print("channel name in initaila case${widget.channelCode.text}");
    setState(() {
      fullName = prefs.getString("username") ?? "";
      // FocusScope.of(context).requestFocus(orderTypeFocusNoe);
    });
  }


  TextEditingController channelCode=TextEditingController();
  convertingOrderType(){
    print("aSzdfgh");
    if(orderType.isNotEmpty){
      for(var i=0;i<orderType.length;i++){
        orderType[i]=orderType[i].toUpperCase()
;      }
      print("orderType$orderType");

    }

  }
  @override
  Widget build(BuildContext context) {

    widget.operator.text =createOrPatch!=true && invoicePage!=true? fullName:widget.operator.text;
    widget.counter.text = counter?.toString()??"";
    widget.storeName.text = stroreNmae?.toString()??"";
    print("channel name in builder case${widget.channelCode.text}");
    return BlocProvider(
  create: (context) => OrderTypeRefreshBloc(),
  child: MultiBlocListener(
  listeners: [
    BlocListener<OrderTypeCubit, OrderTypeState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (data) {
            print("order type dataas $data");
            orderType = List.from(data.orderType ?? []);
            convertingOrderType();
            // FocusScope.of(context).requestFocus(orderTypeFocusNoe);

           // widget.refresh();
            setState(() {});
          },
        );
      },
),
    BlocListener<ReadOrdersCubit, ReadOrdersState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read orders");
            },
            success: (data) {
         setState(() {
           orderOrinvoiceCodeController.text=data.orderCode??"";
         });

            }
        );

      },),
    BlocListener<ReadInvoiceCubit, ReadInvoiceState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read orders");
            },
            success: (data) {
              setState(() {



                if(data?.invoiceData==null){

                  orderOrinvoiceCodeController.text = data?.invoiceCode ?? "";



                }
                else{

                  orderOrinvoiceCodeController.text=data?.invoiceData?.invoiceCode??"";

                  // channelCodeController.text=invoiceRead?.invoiceData?.channelData?.channelCode??"";

                }


                // for(var i=0;i<lineInvoice!.length;i++) {
                //   setState(() {
                //
                //
                //     productName.text=lineInvoice![i].variantName??"";
                //     price.text=lineInvoice![i].sellingPrice.toString()??"";
                //     uom.text=lineInvoice![i].uomName??"";
                //     trn.text=invoiceRead?.customerTrn??"";
                //     qty.text=lineInvoice![i].quantity.toString()??"";
                //     discount.text=lineInvoice![i].discount.toString()??"";
                //     vatable.text=lineInvoice![i].vatableAmount.toString()??"";
                //     vat.text=invoiceRead?.vat.toString()??"";
                //     total.text=lineInvoice![i].totalAmount.toString()??"";
                //
                //   });
                // }

              });

            }
        );
      },
    ),
  ],
  child: Padding(
        padding:  EdgeInsets.only(top: context.blockSizeVertical * 1.6, ),
        child: Container(
            padding:  EdgeInsets.only(left: context.blockSizeHorizontal * 1.5, ),
          height: context.blockSizeVertical * 11,
          width: context.blockSizeHorizontal * 73,
          color: const Color(0xffF8F9FA),


          child: Row(
            children: [
              if(widget.isRejectOrApproveCart )...[
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: Container(

                        child: Row(
                          children: [
                            Expanded(
                              child: TextFieldCallCenter(
                                isWidth: false,
                                controller: widget.storeName,
                                text: "Store Code",
                                readOnly: true,
                              ),
                            ),

                            Expanded(
                              child: TextFieldCallCenter(
                                  isWidth: false,
                                  controller: widget.counter,
                                  text: "Counter",
                                  readOnly: true),
                            ),

                            Expanded(
                              child: TextFieldCallCenter(
                                isWidth: false,
                                controller: widget.operator,
                                text: "Created User",
                                readOnly: true,
                              ),
                            ),
                            Expanded(
                              child: TextFieldCallCenter(
                                isWidth: false,
                                  controller:TextEditingController(text: listCustomer?.customerUserCode),
                                  text: "Customer Code",
                                  readOnly: true),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],

            if(widget.isRejectOrApproveCart!=true)...[
              Expanded(child: Column(
                children: [
                  SizedBox(height:  context.blockSizeVertical * .7,),
                  Expanded(
                    child: BlocBuilder<OrderTypeRefreshBloc, OrderTypeRefreshState>(
                      builder: (context, state) {
                        return OrderTypesDropdown(

                          padding: EdgeInsets.all(0),
                          focusNode: orderTypeFocusNoe,


                          controller1: widget.orderType,
                          label: "Order Type",
                          list: orderType,

                          value: widget.orderType.text,

                          onSelection: (String? val) {
                            state.orderTypeVale=val?.toUpperCase()??"";
                            BlocProvider.of<OrderTypeRefreshBloc>(context).add(OrderTypeRefreshEvent());

                            widget.orderType.text=val?.toUpperCase()??"";

                            Variable.orderTypes = val ?? "";
                            if(widget.onFocusModeChange!=null){
                              widget.onFocusModeChange!();
                            }
                            widget.refresh();

                            setState(() {
                              context.read<OrderTypeCubit>().getOrderTypes();
                            });
                          },
                          restricted: true,
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFieldCallCenter(
                      controller: widget.storeName,
                      text: "Store Code",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height:  context.blockSizeVertical * .7,),

                ],
              )),
              Expanded(child: Column(
                children: [
                  SizedBox(height:  context.blockSizeVertical * .7,),
                  createOrPatch!=true && invoicePage!=true?    Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.orderDate,
                        text: "Order Date",
                        readOnly: true),
                  ):createOrPatch? TextFieldCallCenter(
                      controller:orderOrinvoiceCodeController,
                      text: "Order Code",
                      readOnly: true): TextFieldCallCenter(
                      controller: orderOrinvoiceCodeController,
                      text: "Invoice Code ",
                      readOnly: true),
                  Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.counter,
                        text: "Counter",
                        readOnly: true),
                  ),
                  SizedBox(height:  context.blockSizeVertical * .7,),

                ],
              )),
              Expanded(child: Column(
                children: [
                  SizedBox(height:  context.blockSizeVertical * .7,),
                  createOrPatch!=true && invoicePage!=true?       Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.orderTime,
                        text: "Order Time",
                        readOnly: true),
                  ):     Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.orderDate,
                        text: "Order Date",
                        readOnly: true),
                  ),

                  Expanded(
                    child: TextFieldCallCenter(
                      controller: widget.operator,
                      text: "Created User",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height:  context.blockSizeVertical * .7,),


                ],
              )),
              Expanded(child: Column(
                children: [
                  SizedBox(height:  context.blockSizeVertical * .7,),
                  Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.trn,
                        text: "TRN Number",
                        readOnly: true),
                  ),
                  Expanded(
                    child: TextFieldCallCenter(
                        controller: widget.channelCode,
                        text: "Channel List",
                        readOnly: true),
                  ),
                  // Expanded(
                  //   child: ChannelDropdown(
                  //     controller1: widget.channelCode,
                  //     label: "Channel List",
                  //     type: "channelList",
                  //     value: widget.channelCode.text,
                  //     onSelection: (ChannelList? va) async{
                  //       final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                  //       sharedPreferences.setString('channel_code', Variable.channelCode ?? "");
                  //       String? channelCode = sharedPreferences.getString('channel_code');
                  //       print("CHannnel Shared$channelCode");
                  //       setState(() {
                  //         widget.channelCode.text=va?.channelCode ?? "";
                  //         widget.channelId.text=va?.id.toString()??"";
                  //         widget.channelTypeCode.text=va?.channeTypeCode.toString()??"";
                  //         widget.channelTypeId.text=va?.channelTypeId.toString()??"";
                  //         widget.channelStockType.text=va?.stockType.toString()??"";
                  //         widget.channelName.text=va?.name.toString()??"";
                  //
                  //
                  //         Variable.channelCode = va?.channelCode ?? "";
                  //       });
                  //       setState(() {
                  //         context.read<ChannelListCubit>().getChannelList();
                  //       });
                  //
                  //       },
                  //     restricted: true,
                  //   ),
                  // ),
                  SizedBox(height:  context.blockSizeVertical * .7,),

                ],
              )),
            ]

            ],

          )

          // Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Expanded(
          //           child: OrderTypesDropdown(
          //             controller1: widget.orderType..text = Variable.orderTypes,
          //             label: "Order Type",
          //             list: orderType,
          //             value: Variable.orderTypes,
          //             onSelection: (String? val) {
          //               setState(() {
          //
          //                 Variable.orderTypes = val ?? "";
          //               });
          //               setState(() {
          //                 context.read<OrderTypeCubit>().getOrderTypes();
          //               });
          //             },
          //             restricted: true,
          //           ),
          //         ),
          //         Expanded(
          //           child: TextFieldCallCenter(
          //               controller: widget.orderDate,
          //               text: "Order Date",
          //               readOnly: true),
          //         ),
          //         Expanded(
          //           child: TextFieldCallCenter(
          //               controller: widget.orderTime,
          //               text: "Order Time",
          //               readOnly: true),
          //         ),
          //         Expanded(
          //           child: TextFieldCallCenter(
          //               controller: widget.trn,
          //               text: "TRN Number",
          //               readOnly: true),
          //         ),
          //
          //       ],
          //     ),
          //
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         // SizedBox(width: context.blockSizeHorizontal * 2.6),
          //         Expanded(
          //           child: TextFieldCallCenter(
          //             controller: widget.storeName,
          //             text: "Store Name",
          //             readOnly: true,
          //           ),
          //         ),
          //
          //         Expanded(
          //           child: TextFieldCallCenter(
          //               controller: widget.counter,
          //               text: "Counter",
          //               readOnly: true),
          //         ),
          //         // SizedBox(width: context.blockSizeHorizontal * 1.6),
          //         Expanded(
          //           child: TextFieldCallCenter(
          //             controller: widget.operator,
          //             text: "Operator",
          //             readOnly: true,
          //           ),
          //         ),
          //         // SizedBox(width: context.blockSizeHorizontal * 0.5),
          //         Expanded(
          //           child: ChannelDropdown(
          //             controller1: channelCode..text = Variable.channelCode,
          //             label: "Channel List",
          //             type: "channelList",
          //             value: Variable.channelCode,
          //             onSelection: (ChannelList? va) async{
          //               final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
          //               sharedPreferences.setString('channel_code', Variable.channelCode ?? "");
          //               String? channelCode = sharedPreferences.getString('channel_code');
          //               print("CHannnel Shared$channelCode");
          //               setState(() {
          //                 Variable.channelCode = va?.channelCode ?? "";
          //               });
          //               setState(() {
          //                 context.read<ChannelListCubit>().getChannelList();
          //               });
          //
          //               },
          //             restricted: true,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
),
);
  }
}
