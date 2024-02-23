import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/SecondHead.dart';
import 'package:salesapp/Callcenter_Screens/bloc/delvivery_slotrefresh/delivery_slot_refresh_bloc.dart';
import 'package:salesapp/Cubit/Assign_To_Cubit/assign_to_cubit.dart';
import 'package:salesapp/Cubit/Assign_To_OrgList_Cubit/assign_to_org_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/designation_list/designation_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/list_role/list_role_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/state/state_list_cubit.dart';
import 'package:salesapp/Cubit/Invoice_Code_Cubit/invoice_code_cubit.dart';
import 'package:salesapp/Cubit/country_state/producedcountry_cubit.dart';
import 'package:salesapp/Cubit/deliver_slot/delivery_slot_cubit.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';
import 'package:salesapp/Models/Assign_To_List/Assign_To_List.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Models/Call_Center_Model/channel_List/Channel_List.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/SalesInvoiceCodeList/Sales_Invoice_Code_List.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import '../Cubit/Call_Center_Cubit/Order_Type_Cubit/order_type_cubit.dart';
import '../Cubit/Call_Center_Cubit/Variant_List_By_Channel_Cubit/variant_list_cubit.dart';


class PopUpCall extends StatefulWidget {
  final String? value;
  final String? code;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final String? inventory;
  final bool enable;
  final List<String>? list;
  final Function (String)? onchanged;
  final Function? refreshSetstate;
  final FocusNode? focusNode;

  const PopUpCall({Key? key,
    this.value,
    this.enable = false,
    this.code,
    this.onAddNew,
    this.inventory = "",
    required this.onSelection,
    required this.type,
    this.list, this.onchanged, this.refreshSetstate, this.focusNode})
      : super(key: key);

  @override
  _PopUpCallState createState() => _PopUpCallState();
}

class _PopUpCallState extends State<PopUpCall> {
  @override
  Widget build(BuildContext context) {
    Widget data = SellingPriceBasedPopUpCall(
        onSelection: widget.onSelection,
        onAddNew: widget.onAddNew,
        value: widget.value,
        enable: widget.enable,
        type: widget.type);

    switch (widget.type) {
      case "AssignTo":
        {
          data = SellingPriceBasedPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "ProducedCountryPopUpCall":
        {
          data = ProducedCountryPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              code: widget.code,
              type: widget.type);
        }
        break;
      case "SalesInvoiceCode":
        {
          data = SalesInvoiveCodePopUp(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "orgCode":
        {
          data = OrgCodePopUp(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "CustomerList":
        {
          data = CustomerListPopUp(
            code:widget.code,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "VariantList":
        {
          data = VariantListPopUp(
            onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "StatePop_UpCall":
        {
          data = StatePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              code:widget.code,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "channelList":
        {
          data = ChannelListPopUp(
            focusNode:widget.focusNode,
              onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "delivery_slot":
        {
          data = DeliverySlotPopUp(
            refreshSetstate: widget.refreshSetstate,

              onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "designation_role":
        {
          data = AdminRoleListPopUp(
            refreshSetstate: widget.refreshSetstate,

              onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "additional_roles":
        {
          data = AdminRoleListPopUp(
            refreshSetstate: widget.refreshSetstate,

              onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;    case "designation_list_admin":
        {
          data = DesignationListPopUp(
            refreshSetstate: widget.refreshSetstate,

              onChanged: widget.onchanged,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;

      default:
    }
    return data;
  }
}



class ProducedCountryPopUpCall extends StatefulWidget {
  final String? value;
  final String? code;
  final int? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const ProducedCountryPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    this.id,
    this.code,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _ProducedCountryPopUpCall createState() => _ProducedCountryPopUpCall();
}

class _ProducedCountryPopUpCall extends State<ProducedCountryPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    context.read<ProducedcountryCubit>().getProducedCountry(widget.code);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // search3(BuildContext ctx,value){
    //   print("enterd"+value.toString());
    //   context.read<BaseuomlistCubit>().searchUomList(value);
    //
    // }
    label = widget.value;
    return Builder(builder: (context) {
      // context.read<ProducedcountryCubit>().getProducedCountry(widget.code);

      return BlocBuilder<ProducedcountryCubit, ProducedcountryState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => TextFormField(P
              //   controller: TextEditingController(text: widget.value),
              //   onTap: () {},
              //   decoration: InputDecoration(
              //       enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(2),
              //           borderSide: BorderSide(
              //               color: Color(0xff3E4F5B).withOpacity(.06))),
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(2),
              //           borderSide: BorderSide(
              //               color: Color(0xff3E4F5B).withOpacity(.06))),
              //       isDense: true,
              //       border: OutlineInputBorder(),
              //       suffixIcon: Icon(Icons.keyboard_arrow_down)),
              // ),
              // errorLoader(widget.onAddNew),
              success: (data) {
                print("anagha" + data.toString());
                List<String> list = [];
                int length = data.length;
                // list=data.orderTypes;
                for (var i = 0; i < length; i++) {
                  list.add(data?[i].name ?? "");
                }

                OrgList? onSellingBasedSelect(
                    var value, List<OrgList> list) {
                  OrgList? newData;
                  list.forEach((element) {
                    if (element.name != null &&
                        element.name?.toLowerCase() == (value.toLowerCase()))
                      newData = element;
                    if (element.code != null &&
                        element.code == (value.toLowerCase())) newData = element;
                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("Add new");
                _controller = TextEditingController(text: label);
                // hintText = label;

                return
                  TypeAheadFormField(
                  enabled: widget.enable,
                  hideSuggestionsOnKeyboardHide: true,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      style: TextStyle(fontSize: 13),
                      onChanged: (va) {
                        print(va);
                        // search3(context, va);
                        // context.read<MaterialListCubit>().searchMaterialList(va);
                      },
                      controller: _controller,
                      // keyboardType: TextInputType.phone,
                      // inputFormatters:  <TextInputFormatter>[
                      //   FilteringTextInputFormatter.allow(RegExp(r" "))
                      // ],
                      decoration: InputDecoration(
                        // hintText: hintText,
                          isDense: true,
                          contentPadding: EdgeInsets.all(MediaQuery.of(context).size.width*.019),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                  color: Color(0xff3E4F5B).withOpacity(.1))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                  color: Color(0xff3E4F5B).withOpacity(.1))),
                          suffixIcon: Icon(Icons.keyboard_arrow_down))),
                  onSuggestionSelected: (suggestion) {
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(
                          onSellingBasedSelect(suggestion.toString(), data));
                    }
                    // widget.onSelection(
                    //     onSelect(suggestion.toString(), data ?? []));
                  },
                  itemBuilder: (context, suggestion) {
                    // if (suggestion == "Add new")
                    //   return Column(
                    //     children: [
                    //       ListTile(
                    //         leading: Icon(Icons.add_circle_outline_outlined),
                    //         title: Text(suggestion.toString()),
                    //       ),
                    //     ],
                    //   );
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? value) async {
                    return value == null || value.isEmpty
                        ? list
                        : search(value, list, widget.onAddNew);
                  },
                );
              },
            );
          });
    });
  }
  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }

}


class StatePopUpCall extends StatefulWidget {
  final String? value;
  final String? code;
  final int? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const StatePopUpCall({
    Key? key,
    this.value,
    this.onchange,
    this.id,
    this.code,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _StatePopUpCall createState() => _StatePopUpCall();
}

class _StatePopUpCall extends State<StatePopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // search3(BuildContext ctx,value){
    //   print("enterd"+value.toString());
    //   context.read<BaseuomlistCubit>().searchUomList(value);
    //
    // }
    label = widget.value;
    return BlocProvider(
      create: (context) => StateListCubit(),
      child: Builder(builder: (context) {
        context.read<StateListCubit>().getStateList(widget.code);

        return BlocBuilder<StateListCubit, StateListState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => TextFormField(
                  controller: TextEditingController(text: widget.value),
                  onTap: () {},
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.06))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.06))),
                      isDense: true,
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.keyboard_arrow_down)),
                ),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha" + data.toString());
                  List<String> list = [];
                  int length = data.length;
                  // list=data.orderTypes;
                  for (var i = 0; i < length; i++) {
                    list.add(data?[i].name ?? "");
                  }

                  StateList? onSellingBasedSelect(
                      var value, List<StateList> list) {
                    StateList? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase()))
                        newData = element;
                      if (element.code != null &&
                          element.code == (value.toLowerCase())) newData = element;
                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(
                    child: TypeAheadFormField(
                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),
                          onChanged: (va) {
                            print(va);
                            // search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);
                          },
                          controller: _controller,
                          keyboardType: TextInputType.name,
                          // inputFormatters:  <TextInputFormatter>[
                          //   FilteringTextInputFormatter.allow(RegExp(r" "))
                          // ],
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              contentPadding:
                              EdgeInsets.symmetric(vertical: context.blockSizeVertical*2, horizontal: 10.0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: BorderSide(
                                      color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: BorderSide(
                                      color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.keyboard_arrow_down))),
                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else {
                          widget.onSelection(
                              onSellingBasedSelect(suggestion.toString(), data));
                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}


///////////
class SellingPriceBasedPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;

  const SellingPriceBasedPopUpCall({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list})
      : super(key: key);

  @override
  _SellingPriceBasedPopUpCallState createState() =>
      _SellingPriceBasedPopUpCallState();
}

class _SellingPriceBasedPopUpCallState
    extends State<SellingPriceBasedPopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => AssignToCubit(),
      child: Builder(
        builder: (context) {
          context.read<AssignToCubit>().getItemListAssignTo();
          return BlocBuilder<AssignToCubit, AssignToState>
            (builder: (context, state) {
            print("oll$state");
            return state.maybeWhen(
              orElse: () =>
                  Center(
                    child: CircularProgressIndicator(),),
              success: (data) {
                print("dataaaa" + data.toString());
                List<String> CusList = [];
                int? length = data.length;
                for (var i = 0; i < length!; i++) {
                  CusList.add(data[i].customerUserCode);
                }
                AssignToList? onSellingBasedSelect(var value, List<AssignToList> list) {
                  AssignToList ? newDate;
                  list.forEach((element) {
                    if (element.customerUserCode != null &&
                        element.customerUserCode?.toLowerCase() == (value.toLowerCase())) newDate = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newDate = element;

                  });
                  print("value" + value.toString());


                  return newDate;
                }


                if (widget.onAddNew != null) CusList.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: _controller,
                      decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                          suffixIcon: Icon(Icons.arrow_downward_outlined))),
                  onSuggestionSelected: (suggestion) {
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));

                    }
                  },
                  itemBuilder: (context, suggestion) {
                    return Listener(
                      child: Container(
                        child: ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        ),
                      ),
                      onPointerDown: (val) {
                        print("inside suggestion ");
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else {
                          print("on selevtion ${suggestion}");
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data));

                        }
                      },
                    );
                  },
                  suggestionsCallback: (String? value) async {
                    return value == null || value.isEmpty
                        ? CusList
                        : search(value, CusList, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
/////////
class SalesInvoiveCodePopUp extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;

  const SalesInvoiveCodePopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list})
      : super(key: key);

  @override
  _SalesInvoiveCodePopUpState createState() =>
      _SalesInvoiveCodePopUpState();
}

class _SalesInvoiveCodePopUpState
    extends State<SalesInvoiveCodePopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => InvoiceCodeCubit(),
      child: Builder(
        builder: (context) {
          context.read<InvoiceCodeCubit>().getItemListInvoiceCode();
          return BlocBuilder<InvoiceCodeCubit, InvoiceCodeState>
            (builder: (context, state) {
            print("oll$state");
            return state.maybeWhen(
              orElse: () =>
                  Center(
                    child: CircularProgressIndicator(),),
              success: (data) {
                print("dataaaa" + data.toString());
                List<String> invList = [];
                int? length = data.length;
                for (var i = 0; i < length!; i++) {
                  invList.add(data[i].invoiceCode);
                }
                InvoiceCodeList? onSellingBasedSelect(var value, List<InvoiceCodeList> list) {
                  InvoiceCodeList ? newDate;
                  list.forEach((element) {
                    if (element.invoiceCode != null &&
                        element.invoiceCode?.toLowerCase() == (value.toLowerCase())) newDate = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newDate = element;

                  });
                  print("value" + value.toString());


                  return newDate;
                }


                if (widget.onAddNew != null) invList.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,

                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: _controller,
                      decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                          suffixIcon: Icon(Icons.arrow_downward_outlined))),
                  onSuggestionSelected: (suggestion) {
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));

                    }
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? value) async {
                    return value == null || value.isEmpty
                        ? invList
                        : search(value, invList, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
/////////////////////////////////////
class OrgCodePopUp extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;

  const OrgCodePopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list})
      : super(key: key);

  @override
  _OrgCodePopUp createState() =>
      _OrgCodePopUp();
}

class _OrgCodePopUp
    extends State<OrgCodePopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => AssignToOrgListCubit(),
      child: Builder(
        builder: (context) {
          context.read<AssignToOrgListCubit>().getItemListAssignToOrgList();
          return BlocBuilder<AssignToOrgListCubit, AssignToOrgListState>
            (builder: (context, state) {
            print("oll$state");
            return state.maybeWhen(
              orElse: () =>
                  Center(
                    child: CircularProgressIndicator(),),
              success: (data) {
                print("dataaaa" + data.toString());
                List<String> orgList = [];
                int? length = data.length;
                for (var i = 0; i < length!; i++) {
                  orgList.add(data[i].orgCode);
                }
                OrgList? onSellingBasedSelect(var value, List<OrgList> list) {
                  OrgList ? newDate;
                  list.forEach((element) {
                    if (element.orgCode != null &&
                        element.orgCode?.toLowerCase() == (value.toLowerCase())) newDate = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newDate = element;

                  });
                  print("value" + value.toString());


                  return newDate;
                }


                if (widget.onAddNew != null) orgList.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: _controller,
                      decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                          suffixIcon: Icon(Icons.arrow_downward_outlined))),
                  onSuggestionSelected: (suggestion) {
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));

                    }
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? value) async {
                    return value == null || value.isEmpty
                        ? orgList
                        : search(value, orgList, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
/////////////////////////////////////////
class CustomerListPopUp extends StatefulWidget {
  final String? value;
  final String? code;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;

  const CustomerListPopUp({Key? key,
    this.value,
    this.onAddNew,
    this.code,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list})
      : super(key: key);

  @override
  _CustomerListPopUpState createState() =>
      _CustomerListPopUpState();
}

class _CustomerListPopUpState
    extends State<CustomerListPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => CustomerListCubit()..getCustomerList(widget?.code??""),
      child: Builder(
        builder: (context) {
          context.read<CustomerListCubit>().getCustomerList(widget?.code??"");
          return BlocBuilder<CustomerListCubit, CustomerListState>
            (builder: (context, state) {
            print("oll$state");
            return state.maybeWhen(
              orElse: () =>
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff687892).withOpacity(.1),
                            Color(0xff8498B8).withOpacity(.1),

                          ],


                        )
                    ),
                    child: TextFormField( decoration: InputDecoration(
                        isDense: true,
                        // fillColor: Colors.red,
                        // filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                        suffixIcon: Icon(Icons.arrow_downward_outlined))),
                  ),
              success: (data) {
                print("dataaaa" + data.toString());
                List<String> custList = [];
                int? length = data.length;
                for (var i = 0; i < length!; i++) {
                  custList.add(data[i].mobile??"");
                }
                CustomerList? onSellingBasedSelect(var value, List<CustomerList> list) {
                  CustomerList ? newDate;
                  list.forEach((element) {
                    if (element.mobile != null &&
                        element.mobile?.toLowerCase() == (value.toLowerCase())) newDate = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newDate = element;

                  });
                  print("value" + value.toString());


                  return newDate;
                }


                if (widget.onAddNew != null) custList.add("");
                // _controller = TextEditingController(text: label);
                return
                  Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(1),
                   gradient: LinearGradient(
                     colors: [
                       Color(0xff687892).withOpacity(.1),
                       Color(0xff8498B8).withOpacity(.1),

                     ],


                   )
                 ),
                  child: TypeAheadFormField(
                    enabled: widget.enable,


                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(

                      onChanged: (va){
                        context.read<CustomerListCubit>().getCustomerList(_controller.text??"");


                      },
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            // fillColor: Colors.red,
                            // filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                              BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                              BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));

                      }
                    },
                    itemBuilder: (context, suggestion) {
                      return Listener(
                        child: Container(
                          child: ListTile(
                            ////leading: Icon(Icons.shopping_cart_outlined),
                            title: Text(suggestion.toString()),
                          ),
                        ),
                        onPointerDown: (val) {
                          print("inside suggestion ");
                          if (suggestion == "Add new")
                            widget.onAddNew!();
                          else {
                            print("on selevtion ${suggestion}");
                            widget.onSelection(onSellingBasedSelect(
                                suggestion.toString(), data));

                          }
                        },
                      );

                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? custList
                          : search(value, custList, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
/////////////////////
class VariantListPopUp extends StatefulWidget {
  final Function (String)? onChanged;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;

  const VariantListPopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list, this.onChanged})
      : super(key: key);

  @override
  _VariantListPopUpState createState() =>
      _VariantListPopUpState();
}

class _VariantListPopUpState
    extends State<VariantListPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();
  TextEditingController itemsearch = TextEditingController();

  @override
  void initState() {
    context.read<VariantListCubit>().getVariantList();
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return Builder(
      builder: (context) {

        return BlocBuilder<VariantListCubit, VariantListState>
          (builder: (context, state) {
          print("oll$state");
          return state.maybeWhen(
            orElse: () =>
                Center(
                  child: CircularProgressIndicator(),),
            success: (data) {
              print("dataaaa" + data.toString());
              List<String> variantList = [];
              int? length = data.data.length;
              for (var i = 0; i < length!; i++) {
                variantList.add(data.data[i].name);
              }
              VariantList? onSellingBasedSelect(var value, List<VariantList> list) {
                VariantList ? newDate;
                list.forEach((element) {
                  if (element.name != null &&
                      element.name?.toLowerCase() == (value.toLowerCase())) newDate = element;
                  if (element.id != null &&
                      element.id == (value.toLowerCase())) newDate = element;

                });
                return newDate;
              }
              if (widget.onAddNew != null) variantList.add("");
              _controller = TextEditingController(text: label);
              return TypeAheadFormField(
                enabled: widget.enable,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "required";
                  }
                },
                textFieldConfiguration: TextFieldConfiguration(
                    controller: _controller,
                    decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                        suffixIcon: Icon(Icons.search)),
                  onChanged:widget.onChanged
                  //     (va){
                  //   context.read<VariantListCubit>().getVariantList(_controller.text);
                  // }
                ),
                onSuggestionSelected: (suggestion) {
                  if (suggestion == "Add new")
                    widget.onAddNew!();
                  else {
                    widget.onSelection(onSellingBasedSelect(
                        suggestion.toString(), data.data));

                  }
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    //leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(suggestion.toString()),

                  );
                },
                suggestionsCallback: (String? value) async {

                  return value == null || value.isEmpty
                      ? variantList
                      : search(value, variantList, widget.onAddNew);

                },
              );
            },
          );
        });
      },
    );
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    context.read<VariantListCubit>().getVariantList();
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
///////////////////////////
// class ChannelListPopUp extends StatefulWidget {
//   final Function (String)? onChanged;
//   final String? value;
//   final VoidCallback? onAddNew;
//   final Function onSelection;
//   final String type;
//   final bool enable;
//   final List<String>? list;
//
//   const ChannelListPopUp({Key? key,
//     this.value,
//     this.onAddNew,
//     required this.onSelection,
//     required this.type,
//     required this.enable,
//     this.list, this.onChanged})
//       : super(key: key);
//
//   @override
//   _ChannelListPopUpState createState() =>
//       _ChannelListPopUpState();
// }
//
// class _ChannelListPopUpState extends State<ChannelListPopUp> {
//   String? label;
//   TextEditingController _controller = TextEditingController();
//   TextEditingController itemsearch = TextEditingController();
//
//   @override
//   void initState() {
//     context.read<ChannelListCubit>().getChannelList();
//     label = widget.value;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     label = widget.value;
//     return Builder(
//       builder: (context) {
//         context.read<ChannelListCubit>().getChannelList();
//
//         return BlocBuilder<ChannelListCubit, ChannelListState>
//           (builder: (context, state) {
//           print("oll$state");
//           return state.maybeWhen(
//             orElse: () =>
//                 Center(
//                   child: CircularProgressIndicator(),),
//             success: (data) {
//               print("dataaaa" + data.toString());
//               List<ChannelList> channelList = [];
//               int? length = data.length;
//               for (var i = 0; i < length!; i++) {
//                 channelList.add(data[i].channelCode);
//               }
//               ChannelList? onSellingBasedSelect(var value, List<ChannelList> list) {
//                 ChannelList ? newDate;
//                 list.forEach((element) {
//                   if (element.channelCode != null &&
//                       element.channelCode?.toLowerCase() == (value.toLowerCase())) newDate = element;
//                   if (element.id != null &&
//                       element.id == (value.toLowerCase())) newDate = element;
//
//                 });
//                 return newDate;
//               }
//               if (widget.onAddNew != null) channelList.add(ChannelList(name: ""));
//               _controller = TextEditingController(text: label);
//               return TypeAheadFormField(
//                 enabled: widget.enable,
//                 validator: (value) {
//                   if (value != null && value.isEmpty) {
//                     return "required";
//                   }
//                 },
//                 textFieldConfiguration: TextFieldConfiguration(
//
//
//                     controller: _controller,
//                     style:TextStyle(fontSize:context.blockSizeHorizontal*.86),
//
//                     decoration: InputDecoration(
//               suffixIcon:Icon( Icons.arrow_drop_down_outlined),
//
//
//                       fillColor: Colors.white,
//                       filled: true,
//                       contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12),
//                         isDense: true,
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5),
//                           borderSide:
//                           BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
//                         ),
//
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(3),
//                           borderSide:
//                           BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
//                         ),
//                         border: OutlineInputBorder(
//                             borderSide:
//                             BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
//                         ),
//                     onChanged:widget.onChanged
//                   //     (va){
//                   //   context.read<VariantListCubit>().getVariantList(_controller.text);
//                   // }
//                 ),
//                 onSuggestionSelected: ( ChannelList suggestion) {
//                   if (suggestion == "Add new")
//                     widget.onAddNew!();
//                   else {
//                     widget.onSelection(onSellingBasedSelect(
//                         suggestion, data));
//
//                   }
//                 },
//                 itemBuilder: (context, ChannelList suggestion) {
//                   return Listener(
//                     child: Container(
//                       child: ListTile(
//                         //leading: Icon(Icons.shopping_cart_outlined),
//                         title: Text(suggestion.toString()),
//
//                       ),
//                     ),
//                     onPointerDown: (val) {
//                       print("inside suggestion ");
//                       if (suggestion == "Add new")
//                         widget.onAddNew!();
//                       else {
//                         print("on selevtion ${suggestion}");
//                         widget.onSelection(onSellingBasedSelect(
//                             suggestion, data));
//
//                       }
//                     },
//                   );
//                 },
//                 suggestionsCallback: (String? value) async {
//
//                   return value == null || value.isEmpty
//                       ? channelList
//                       : search(value, channelList, widget.onAddNew);
//
//                 },
//               );
//             },
//           );
//         });
//       },
//     );
//   }
//
//   List<ChannelList> search(String value, List<ChannelList> list, VoidCallback? onAddNew) {
//     context.read<VariantListCubit>().getVariantList();
//     List<ChannelList> newList = [];
//     list.forEach((element) {
//       if (element.name!.toLowerCase().contains(value.toLowerCase()))
//         newList.add(element);
//     });
//     onAddNew != null ? newList.add(ChannelList(name: "Add New")) : null;
//     return newList;
//   }
// }




class ChannelListPopUp extends StatefulWidget {
  final Function (String)? onChanged;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final FocusNode? focusNode;
  final bool enable;
  final List<String>? list;
  final Function? refreshSetstate;

  const ChannelListPopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list, this.onChanged, this.refreshSetstate, this.focusNode})
      : super(key: key);

  @override
  _ChannelListPopUpState createState() =>
      _ChannelListPopUpState();
}

class _ChannelListPopUpState extends State<ChannelListPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();
  TextEditingController itemsearch = TextEditingController();
int lengthVal=1;
  @override
  void initState() {

    context.read<ChannelListCubit>().getChannelList();
    label = widget.value;
    lengthVal=widget.value?.length??0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;

    print("value lengthhh is ${widget.value?.length}");
 lengthVal =widget.value?.length??0;
    return BlocBuilder<ChannelListCubit, ChannelListState>(
      builder: (context, deliveryState) {
        return Builder(
          builder: (context) {
            // context.read<DeliverySlotCubit>().getDeliverySlot();

            return BlocBuilder<ChannelListCubit, ChannelListState>
              (builder: (context, state) {
              print("oll$state");
              return state.maybeWhen(
                orElse: () =>
                    Container(
                        alignment: Alignment.center,

                        decoration: BoxDecoration(
                          color: Colors.white,
                            border: Border(
                                right: BorderSide(
                                    color: Color(0xff3E4F5B).withOpacity(.2)
                                ), top: BorderSide(
                                color: Color(0xff3E4F5B).withOpacity(.2)
                            ), bottom: BorderSide(
                                color: Color(0xff3E4F5B).withOpacity(.2)
                            )
                            )
                        )),
                success: (data) {
                  print("dataaaa" + data.toString());
                  List<ChannelList> channelList = [];
                  int? length = data.length;


                  for (var i = 0; i < length!; i++) {
                    channelList.add(ChannelList(id:data[i].id,name:data[i].name??"",channelCode: data[i].channelCode??""));
                  }
                  ChannelList? onSellingBasedSelect(var value, List<ChannelList> list) {
                    ChannelList ? newDate;
                    print("the valuessssssssssssssss$value");
                    print("the valuesssssssssssssssskkkkkkkkkkkkk${value.name}");
                    list.forEach((element) {

                      if (element.id != null &&
                          element.id == (value.id)) newDate = element;
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.name.toLowerCase())) newDate = element;


                    });
                    print(newDate);
                    // print("newDate.deliveryCharge${newDate?.ChannelList}");
                    // print("newDate.deliveryCharge${newDate?.id}");
                    // print("newDate.deliveryCharge${newDate?.name}");
                    print(newDate);
                    return newDate;
                  }
                  if (widget.onAddNew != null) channelList.add(ChannelList(name: ""));
                  _controller = TextEditingController(text: label);
                  return Container(
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Color(0xff3E4F5B).withOpacity(.2)
                            ), top: BorderSide(
                            color: Color(0xff3E4F5B).withOpacity(.2)
                        ), bottom: BorderSide(
                            color: Color(0xff3E4F5B).withOpacity(.2)
                        )
                        )
                    ),
                    child: Center(
                      child: TypeAheadFormField(



                        enabled: widget.enable,
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "required";
                          }
                        },
                        textFieldConfiguration: TextFieldConfiguration(


                            controller: _controller,
                            focusNode: widget.focusNode,
                            style:TextStyle(fontSize:context.blockSizeHorizontal*.83),

                            decoration: InputDecoration(
                              suffixIcon:Icon( Icons.arrow_drop_down_outlined),


                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 12),
                              isDense: true,
                              // enabledBorder: OutlineInputBorder(
                              //   // borderRadius: BorderRadius.circular(5),
                              //   borderSide:
                              //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                              // ),
                              //
                              // focusedBorder: OutlineInputBorder(
                              //   // borderRadius: BorderRadius.circular(3),
                              //   borderSide:
                              //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                              // ),
                              border:InputBorder.none,
                            ),
                            onChanged:widget.onChanged
                          //     (va){
                          //   context.read<VariantListCubit>().getVariantList(_controller.text);
                          // }
                        ),
                        onSuggestionSelected: (suggestion) {
                          if (suggestion == "Add new")
                            widget.onAddNew!();
                          else {
                            widget.onSelection(onSellingBasedSelect(
                                suggestion, data));

                          }
                        },
                        itemBuilder: (context,ChannelList suggestion) {
                          return Listener(
                            child: Container(

                              decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                   <--- left side
                                      color: Colors.grey.withOpacity(.3),
                                      width: 1.0,
                                    ),
                                  )
                              ),
                              child: ListTile(
                                //leading: Icon(Icons.shopping_cart_outlined),
                                title: Text(suggestion?.name??"",style: TextStyle(fontSize: context.blockSizeHorizontal*.83),),
                                trailing:Text(suggestion.channelCode??"",style: TextStyle(fontSize: context.blockSizeHorizontal*.83),) ,

                              ),
                            ),
                            onPointerDown: (val) {
                              print("inside suggestion ");
                              if (suggestion == "Add new")
                                widget.onAddNew!();
                              else {
                                print("on selevtion ${suggestion}");
                                widget.onSelection(onSellingBasedSelect(
                                    suggestion.toString(), data));

                              }
                            },
                          );
                        },
                        suggestionsCallback: (String? value) async {


                          return value == null || value.isEmpty || lengthVal==value.length
                              ? channelList
                              : search(value, channelList, widget.onAddNew);

                        },
                      ),
                    ),
                  );
                },
              );
            });
          },
        );
      },
    );
  }

  List<ChannelList> search(String value, List<ChannelList> list, VoidCallback? onAddNew) {
    context.read<VariantListCubit>().getVariantList();
    List<ChannelList> newList = [];
    list.forEach((element) {
      if (element.name!.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add(ChannelList(name: "Add new") ): null;
    return newList;
  }
}






class DeliverySlotPopUp extends StatefulWidget {
  final Function (String)? onChanged;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  final Function? refreshSetstate;

  const DeliverySlotPopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,
    required this.enable,
    this.list, this.onChanged, this.refreshSetstate})
      : super(key: key);

  @override
  _DeliverySlotPopUpState createState() =>
      _DeliverySlotPopUpState();
}

class _DeliverySlotPopUpState extends State<DeliverySlotPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();
  TextEditingController itemsearch = TextEditingController();
  int lengthVal=1;

  @override
  void initState() {
    context.read<DeliverySlotCubit>().getDeliverySlot();
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    lengthVal=widget.value?.length??0;

    return BlocBuilder<DeliverySlotRefreshBloc, DeliverySlotRefreshState>(
  builder: (context, deliveryState) {
    return Builder(
      builder: (context) {
        // context.read<DeliverySlotCubit>().getDeliverySlot();

        return BlocBuilder<DeliverySlotCubit, DeliverySlotState>
          (builder: (context, state) {
          print("oll$state");
          return state.maybeWhen(
            orElse: () =>
           Container(


              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      right: BorderSide(
                          color: Color(0xff3E4F5B).withOpacity(.2)
                      ), top: BorderSide(
                      color: Color(0xff3E4F5B).withOpacity(.2)
                  ), bottom: BorderSide(
                      color: Color(0xff3E4F5B).withOpacity(.2)
                  )
                  )
              )),
            success: (data) {
              print("dataaaa" + data.toString());
              List<DeliverySlotResultModel> channelList = [];
              int? length = data.length;
              if(data.isNotEmpty==true){
                if(deliveryslot.text.isEmpty){

                  deliveryslot.text=data[0].name??"";
                  deliveryState.deliverySlotVal=deliveryslot.text;
                  BlocProvider.of<DeliverySlotRefreshBloc>(context).add(DeliverySlotRefreshEvent());

                  deliverySlotObject==deliverySlotObject.copyWith(
                    deliveryCharge: data[0].deliveryCharge??0,
                    id: data[0].id,
                  );
                }

                // widget.refreshSetstate!();


              }

              for (var i = 0; i < length!; i++) {
                channelList.add(DeliverySlotResultModel(id:data[i].id,name:data[i].name??"",deliveryTime: data[i].deliveryTime??"",deliveryProcess:data[i].deliveryProcess??"" ));
              }
              DeliverySlotResultModel? onSellingBasedSelect(var value, List<DeliverySlotResultModel> list) {
                DeliverySlotResultModel ? newDate;
                print("the valuessssssssssssssss$value");
                print("the valuesssssssssssssssskkkkkkkkkkkkk${value.name}");
                list.forEach((element) {

                  if (element.id != null &&
                      element.id == (value.id)) newDate = element;
                  if (element.name != null &&
                      element.name?.toLowerCase() == (value.name.toLowerCase())) newDate = element;


                });
                print(newDate);
                print("newDate.deliveryCharge${newDate?.deliveryCharge}");
                print("newDate.deliveryCharge${newDate?.id}");
                print("newDate.deliveryCharge${newDate?.name}");
                print(newDate);
                return newDate;
              }
              if (widget.onAddNew != null) channelList.add(DeliverySlotResultModel(name: ""));
              _controller = TextEditingController(text: label);
              return Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                        color: Color(0xff3E4F5B).withOpacity(.2)
                    ), top: BorderSide(
                      color: Color(0xff3E4F5B).withOpacity(.2)
                    ), bottom: BorderSide(
                      color: Color(0xff3E4F5B).withOpacity(.2)
                    )
                  )
                ),
                child: Center(
                  child: TypeAheadFormField(


                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(


                        controller: _controller,
                        style:TextStyle(fontSize:context.blockSizeHorizontal*.83),

                        decoration: InputDecoration(
                  suffixIcon:Icon( Icons.arrow_drop_down_outlined),


                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 12),
                            isDense: true,
                            // enabledBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(5),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            //
                            // focusedBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(3),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            border:InputBorder.none,
                            ),
                        onChanged:widget.onChanged
                      //     (va){
                      //   context.read<VariantListCubit>().getVariantList(_controller.text);
                      // }
                    ),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion, data));

                      }
                    },
                    itemBuilder: (context,DeliverySlotResultModel suggestion) {
                      return Listener(
                        child: Container(

                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide( //                   <--- left side
                                color: Colors.grey.withOpacity(.3),
                                width: 1.0,
                              ),
                            )
                          ),
                          child: ListTile(
                            //leading: Icon(Icons.shopping_cart_outlined),
                            title: Text(suggestion?.name??"",style: TextStyle(fontSize: context.blockSizeHorizontal*.83),),
                            trailing:Text(suggestion.deliveryProcess??"",style: TextStyle(fontSize: context.blockSizeHorizontal*.83),) ,

                          ),
                        ),
                        onPointerDown: (val) {
                          print("inside suggestion ");
                          if (suggestion == "Add new")
                            widget.onAddNew!();
                          else {
                            print("on selevtion ${suggestion}");
                            widget.onSelection(onSellingBasedSelect(
                                suggestion.toString(), data));

                          }
                        },
                      );
                    },
                    suggestionsCallback: (String? value) async {

                      return value == null || value.isEmpty || lengthVal==value.length
                          ? channelList
                          : search(value, channelList, widget.onAddNew);

                    },
                  ),
                ),
              );
            },
          );
        });
      },
    );
  },
);
  }

  List<DeliverySlotResultModel> search(String value, List<DeliverySlotResultModel> list, VoidCallback? onAddNew) {
    context.read<VariantListCubit>().getVariantList();
    List<DeliverySlotResultModel> newList = [];
    list.forEach((element) {
      if (element.name!.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add(DeliverySlotResultModel(name: "Add new") ): null;
    return newList;
  }
}
class AdminRoleListPopUp extends StatefulWidget {
  final String type;
  final Function (String)? onChanged;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;

  final bool enable;
  final List<String>? list;
  final Function? refreshSetstate;

  const AdminRoleListPopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,

    required this.enable,
    this.list, this.onChanged, this.refreshSetstate})
      : super(key: key);

  @override
  _AdminRoleListPopUpState createState() =>
      _AdminRoleListPopUpState();
}

class _AdminRoleListPopUpState extends State<AdminRoleListPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();
  TextEditingController itemsearch = TextEditingController();
  int lengthVal=1;

  @override
  void initState() {
    context.read<ListRoleCubit>().roleTypeList(widget.type);
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    lengthVal=widget.value?.length??0;

    return BlocBuilder<ListRoleCubit, ListRoleState>(
  builder: (context, deliveryState) {
    return Builder(
      builder: (context) {
        // context.read<DeliverySlotCubit>().getDeliverySlot();

        return BlocBuilder<ListRoleCubit, ListRoleState>
          (builder: (context, state) {
          print("oll$state");
          return state.maybeWhen(
            orElse: () =>
                Center(
                  child: CircularProgressIndicator(),),
            success: (data) {
              print("dataaaa" + data.toString());
              List<String> roleList = [];
              int? length = data.data.length;


              for (var i = 0; i < length!; i++) {
                roleList.add(data.data[i].role??"");
              }
              GeneralRoleModel? onSellingBasedSelect(var value, List<GeneralRoleModel> list) {
                GeneralRoleModel ? newDate;
                print("the valuessssssssssssssss$value");

                list.forEach((element) {


                  if (element.role != null &&
                      element.role?.toLowerCase() == (value.toLowerCase())) newDate = element;


                });

                return newDate;
              }
              if (widget.onAddNew != null) roleList.add( "");
              _controller = TextEditingController(text: label);
              return Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),

                  border: Border.all(
                    color:Color(0xff3E4F5B).withOpacity(.1) ,

                  )
                ),
                child: Center(
                  child: TypeAheadFormField(


                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(


                        controller: _controller,
                        style:TextStyle(fontSize:context.blockSizeHorizontal*.83),

                        decoration: InputDecoration(
                  suffixIcon:Icon( Icons.arrow_drop_down_outlined),


                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 12),
                            isDense: true,
                            // enabledBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(5),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            //
                            // focusedBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(3),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            border:InputBorder.none,
                            ),
                        onChanged:widget.onChanged
                      //     (va){
                      //   context.read<VariantListCubit>().getVariantList(_controller.text);
                      // }
                    ),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion, data.data));

                      }
                    },
                    itemBuilder: (context, suggestion) {
                      return Listener(
                        child: Container(

                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide( //                   <--- left side
                                color: Colors.grey.withOpacity(.3),
                                width: 1.0,
                              ),
                            )
                          ),
                          child: ListTile(
                            //leading: Icon(Icons.shopping_cart_outlined),
                            title: Text(suggestion.toString(),style: TextStyle(fontSize: context.blockSizeHorizontal*.83),),


                          ),
                        ),
                        onPointerDown: (val) {
                          print("inside suggestion ");
                          if (suggestion == "Add new")
                            widget.onAddNew!();
                          else {
                            print("on selevtion ${suggestion}");
                            widget.onSelection(onSellingBasedSelect(
                                suggestion.toString(), data.data));

                          }
                        },
                      );
                    },
                    suggestionsCallback: (String? value) async {

                      return value == null || value.isEmpty || lengthVal==value.length
                          ? roleList
                          : search(value, data.data, widget.onAddNew);

                    },
                  ),
                ),
              );
            },
          );
        });
      },
    );
  },
);
  }

  List<String> search(String value, List<GeneralRoleModel> list, VoidCallback? onAddNew) {
    // context.read<VariantListCubit>().getVariantList();
    List<String> newList = [];
    list.forEach((element) {
      if (element.role!.toLowerCase().contains(value.toLowerCase()))
        newList.add(element.role??"");
    });
    onAddNew != null ? newList.add("" ): null;
    return newList;
  }
}



class DesignationListPopUp extends StatefulWidget {
  final String type;
  final Function (String)? onChanged;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;

  final bool enable;
  final List<String>? list;
  final Function? refreshSetstate;

  const DesignationListPopUp({Key? key,
    this.value,
    this.onAddNew,
    required this.onSelection,
    required this.type,

    required this.enable,
    this.list, this.onChanged, this.refreshSetstate})
      : super(key: key);

  @override
  _DesignationListPopUpState createState() =>
      _DesignationListPopUpState();
}

class _DesignationListPopUpState extends State<DesignationListPopUp> {
  String? label;
  TextEditingController _controller = TextEditingController();
  TextEditingController itemsearch = TextEditingController();
  int lengthVal=1;

  @override
  void initState() {
    context.read<DesignationListCubit>().designationList();
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    lengthVal=widget.value?.length??0;

    return BlocBuilder<DesignationListCubit, DesignationListState>(
  builder: (context, deliveryState) {
    return Builder(
      builder: (context) {
        // context.read<DeliverySlotCubit>().getDeliverySlot();

        return BlocBuilder<DesignationListCubit, DesignationListState>
          (builder: (context, state) {
          print("oll$state");
          return state.maybeWhen(
            orElse: () =>
                Center(
                  child: CircularProgressIndicator(),),
            success: (data) {
              print("designation" + data.toString());
              List<String> roleList = [];
              int? length = data.data.length;


              for (var i = 0; i < length!; i++) {
                roleList.add(data.data[i].title??"");
              }
              DesignationListModel? onSellingBasedSelect(var value, List<DesignationListModel> list) {
                DesignationListModel ? newDate;
                print("the valuessssssssssssssss$value");

                list.forEach((element) {


                  if (element. title!= null &&
                      element.title?.toLowerCase() == (value.toLowerCase())) newDate = element;


                });

                return newDate;
              }
              if (widget.onAddNew != null) roleList.add( "");
              _controller = TextEditingController(text: label);
              return Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),

                  border: Border.all(
                    color:Color(0xff3E4F5B).withOpacity(.1) ,

                  )
                ),
                child: Center(
                  child: TypeAheadFormField(


                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(


                        controller: _controller,
                        style:TextStyle(fontSize:context.blockSizeHorizontal*.83),

                        decoration: InputDecoration(
                  suffixIcon:Icon( Icons.arrow_drop_down_outlined),


                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 12),
                            isDense: true,
                            // enabledBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(5),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            //
                            // focusedBorder: OutlineInputBorder(
                            //   // borderRadius: BorderRadius.circular(3),
                            //   borderSide:
                            //   BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                            // ),
                            border:InputBorder.none,
                            ),
                        onChanged:widget.onChanged
                      //     (va){
                      //   context.read<VariantListCubit>().getVariantList(_controller.text);
                      // }
                    ),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion, data.data));

                      }
                    },
                    itemBuilder: (context, suggestion) {
                      return Listener(
                        child: Container(

                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide( //                   <--- left side
                                color: Colors.grey.withOpacity(.3),
                                width: 1.0,
                              ),
                            )
                          ),
                          child: ListTile(
                            //leading: Icon(Icons.shopping_cart_outlined),
                            title: Text(suggestion.toString(),style: TextStyle(fontSize: context.blockSizeHorizontal*.83),),


                          ),
                        ),
                        onPointerDown: (val) {
                          print("inside suggestion ");
                          if (suggestion == "Add new")
                            widget.onAddNew!();
                          else {
                            print("on selevtion ${suggestion}");
                            widget.onSelection(onSellingBasedSelect(
                                suggestion.toString(), data.data));

                          }
                        },
                      );
                    },
                    suggestionsCallback: (String? value) async {

                      return value == null || value.isEmpty || lengthVal==value.length
                          ? roleList
                          : search(value, data.data, widget.onAddNew);

                    },
                  ),
                ),
              );
            },
          );
        });
      },
    );
  },
);
  }

  List<String>  search(String value, List<DesignationListModel> list, VoidCallback? onAddNew) {
    // context.read<VariantListCubit>().getVariantList();
    List<String>  newList = [];
    list.forEach((element) {
      if (element.title!.toLowerCase().contains(value.toLowerCase()))
        newList.add(element.title??"");
    });
    onAddNew != null ? newList.add("" ): null;
    return newList;
  }
}