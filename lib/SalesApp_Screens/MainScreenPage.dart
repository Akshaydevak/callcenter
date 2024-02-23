import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Channel_Create_Cubit/channel_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import 'package:salesapp/Cubit/Genaral_Sidelist_cubit/genaral_sidelist_cubit.dart';
import 'package:salesapp/Cubit/Read_Sales_Invoice_Cubit/read_sales_invoice_cubit.dart';
import 'package:salesapp/Cubit/Sales_Return_List_cubit/sales_return_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';
import 'package:salesapp/Models/Call_Center_Model/channel_List/Channel_List.dart';
import 'package:salesapp/salesapp_Screens/leftmenu.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Cubit/Call_Center_Cubit/Organisation_Create_Cubit/create_organisation_cubit.dart';
import '../Cubit/Read_Business Data/read_business_data_cubit.dart';
import 'Integrated_Sales_Orders/inventery_Cubit/Read_Sales_Order_Inventory/read_sales_order_inventory_cubit.dart';
import 'Integrated_Sales_Orders/inventery_Cubit/Sales_Order_Sildelist_Cubit/inventory_sales_order_list_cubit.dart';
import 'Integrated_Sales_Orders/inventery_Cubit/Sales_Return_Sidelist/return_sidelist_cubit.dart';
import 'PurchaseAppbar.dart';

class MainView extends StatefulWidget {
  final int tabValue;

  const MainView({Key? key, this.tabValue = 0,}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {


  List<ChannelList>? readData = [];

  @override
  void initState() {
    CreateOrganisation postData = CreateOrganisation(
        code: Variable.code,
        orgType: Variable.type);
    context.read<CreateOrganisationCubit>().postCreateOrganisation(
        postData);
    print("ORGPOST$postData");
    context.read<ChannelListCubit>().getChannelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GenaralSidelistCubit()),
        BlocProvider(create: (context) => InventorySalesOrderListCubit()),
        BlocProvider(create: (context) => ReadSalesOrderInventoryCubit()..getGereralReadInventory(Variable.verticalid!),),
        BlocProvider(create: (context) => SalesReturnListCubit()),
        BlocProvider(create: (context) => ReturnSidelistCubit()),
        BlocProvider(create: (context) => ReadSalesInvoiceCubit()),
        BlocProvider(create: (context) => ChannelCreateCubit()),


      ],
      child: BlocListener<ChannelListCubit, ChannelListState>(
        listener: (context, state) {
          print(state);
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error..");
              },

              success: (data) {
                print("chanel list sucsess");
                setState(() {
                  readData = data;
                  CreateChannel postData = CreateChannel(
                    channelName: readData?[0].name,
                    channelCode: readData?[0].channelCode,
                    channelTypeCode: readData?[0].channelType,
                    inventoryId: readData?[0].businessEntity?[0],
                    channelStockType: readData?[0].stockType,
                  );
                  context.read<ChannelCreateCubit>().postChannelCreate(
                      postData);
                  print("Chanel Posted data$postData");
                });
              }
          );
        },
        child: BlocListener<CreateOrganisationCubit, CreateOrganisationState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: () {
                  context.showSnackBarError("error !");
                },
                loading: () {
                  context.showSnackBarNormal("Loading");
                },
                success: (data) async {
                  // context.showSnackBarSuccess("Created Organisation Successfully");
                  print(data.data2);
                  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                  sharedPreferences.setString('store', data.data2['name'] ?? "");
                  String? name = sharedPreferences.getString('store');
                  print("Store Name$name");

                });
          },
          child: Scaffold(
            body:
            CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LeftMenu(tabValue: widget.tabValue),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PurchaseAppbarDesign(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
