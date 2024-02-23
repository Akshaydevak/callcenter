import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/approve_cart_list/approve_cart_list_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/create_cart_approve/create_approve_cart_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/read_approve_cart/read_approve_cart_cubit.dart';


import 'package:salesapp/Cubit/Call_Center_Cubit/Invoice_Cubit/invoice_order_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Delete_Orders/delete_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Gp_Card_Cubit/gp_card_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/List_Delivery_Address_Cubit/delivery_address_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Organisation_Create_Cubit/create_organisation_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Patch_Orders_Cubit/patch_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Patch_Payment_Process_Cubit/put_payment_process_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_ProcessList_Cubit/payment_process_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Process_Cubit/payment_process_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Payment_Status_Cubit/payment_status_post_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Variant_List_By_Channel_Cubit/variant_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/User_Count/admin_user_count_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/admin_user/admin_user_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/channel_count/admin_channel_count_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/designation_list/designation_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/employee_list/employee_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/list_role/list_role_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/user_read/admin_user_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/ApproveList/approve_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/Callcenter_tab_approval_list/approval_list_callecentere_tab_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/post_approval/approve_order_post_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/all_cart_list/all_cart_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/admin_channel_read/admin_channel_read_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/change_password/admin_change_password_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/channel_list/admin_channel_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/create_cart/create_cart_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/customer_statement/customer_statement_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/average_basket_value/average_basket_value_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/new_orderlist/new_order_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/order_status/order_status_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/total_holding/total_holding_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/total_orders/total_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/delete_wish_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/delete_wish_list/deletwish_list_varient_popup_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/purchase_history_reccomendation/purchase_recommendation_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/read_captcha/read_captch_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/whishlist_all/whish_list_all_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/wish_list/wish_list_cubit.dart';
import 'package:salesapp/Cubit/Create_Delivery_Address/create_delivery_address_cubit.dart';
import 'package:salesapp/Cubit/Customer_Update_Cubit/customer_update_cubit.dart';
import 'package:salesapp/Cubit/Payement/hover_payment_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/recommendation_cubit.dart';
import 'package:salesapp/Cubit/country_state/producedcountry_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/offer_hub_list/offer_hub_list_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_check_post_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_post_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/salesapp_Screens/Login/Sign_In_Hilal.dart';
import 'package:salesapp/salesapp_Screens/MainScreenPage.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/shared_preference/shared_preference.dart';
import 'package:salesapp/utils/gloabal.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';
import 'Callcenter_Screens/CallCenter_MainScreen.dart';
import 'Callcenter_Screens/bloc/delvivery_slotrefresh/delivery_slot_refresh_bloc.dart';
import 'Cubit/Assign_To_Cubit/assign_to_cubit.dart';
import 'Cubit/Call_Center_Cubit/All_Orders_Cubit/all_orders_cubit.dart';
import 'Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import 'Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'Cubit/Call_Center_Cubit/Holded_Orders_Cubit/holded_orders_cubit.dart';
import 'Cubit/Call_Center_Cubit/Order_Type_Cubit/order_type_cubit.dart';
import 'Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'Cubit/Call_Center_Cubit/Success_Orders_Cubit/success_orders_cubit.dart';
import 'Cubit/Call_Center_Cubit/User_Management_Cubit/user_management_cubit.dart';
import 'Cubit/Call_Center_Cubit/cart_list_order/list_cart_order_cubit.dart';
import 'Cubit/Call_Center_Cubit/channle/admin_channel_create/admin_channel_create_cubit.dart';
import 'Cubit/Call_Center_Cubit/channle/delete/admin_channel_delete_cubit.dart';
import 'Cubit/Call_Center_Cubit/cutsomer_group/customer_group_cubit.dart';
import 'Cubit/Call_Center_Cubit/dashboard/today_sale/todays_sale_cubit.dart';
import 'Cubit/Call_Center_Cubit/second_popup_wishlist/second_popup_wish_list_cubit.dart';
import 'Cubit/Invoice_Code_Cubit/invoice_code_cubit.dart';
import 'Cubit/Read_Business Data/read_business_data_cubit.dart';
import 'Cubit/Read_Sales_Genaral_Cubit/read_sales_genaral_cubit.dart';
import 'Cubit/Read_Sales_Return_Cubit/read_sales_return_cubit.dart';
import 'Cubit/Read_Sales_Return_Invoice_Cubit/read_return_invoice_cubit.dart';
import 'Cubit/Reccomondation/frequently_recommendation/frequently_recommendation_cubit.dart';
import 'Cubit/deliver_slot/delivery_slot_cubit.dart';
import 'Cubit/pdf/pdf_view_cubit.dart';
import 'Cubit/userManageMentList/user_manage_ment_list_cubit.dart';
import 'salesapp_Screens/Integrated_Sales_Orders/inventery_Cubit/Read_Return_Cubit/read_return_inventory_cubit.dart';

import 'salesapp_Screens/Login/SignUp_salesapp.dart';
import 'salesapp_Screens/SalesGenaral/SalesGenaral.dart';

CustomerList? listCustomer;
void main() async{

  Global.init();
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]).then((value) => runApp(MyApp()));
  setPathUrlStrategy();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) =>CustomerListCubit()),
          BlocProvider(create: (context) => UserManagementCubit()),
          BlocProvider(create: (context) => UserManageMentListCubit()..getUserManage("recent")),
          BlocProvider(create: (context) => ReadVariantCubit(),),
          BlocProvider(create: (context) => DeliveryAddressCubit(),),
          BlocProvider(create: (context) => PaymentProcessCubit(),),
          BlocProvider(create: (context) => PutPaymentProcessCubit(),),
          BlocProvider(create: (context) => CreateDeliveryAddressCubit(),),
          BlocProvider(create: (context) => CustomerUpdateCubit(),),
          BlocProvider(create: (context) => AllOrdersCubit()),
          BlocProvider(create: (context) => HoldedOrdersCubit()..getHoldedOrdersList(),),
          BlocProvider(create: (context) => SuccessOrdersCubit()..getSuccessOrdersList()),
          BlocProvider(create: (context) => CreateOrganisationCubit(),),
          BlocProvider(create: (context) => ReadSalesGenaralCubit(),),
          BlocProvider(create: (context) => ReadSalesReturnCubit(),),
          BlocProvider(create: (context) => ReadReturnInventoryCubit(),),
          BlocProvider(create: (context) => VariantListCubit(),),
          BlocProvider(create: (context) => ReadReturnInvoiceCubit(),),
          BlocProvider(create: (context) => PaymentStatusPostCubit(),),
          BlocProvider(create: (context)=>AssignToCubit()),
          BlocProvider(create: (context)=>InvoiceCodeCubit()),
          BlocProvider(create: (context) => ChannelListCubit(),),
          BlocProvider(create: (context) => ReadOrdersCubit()),
          BlocProvider(create: (context) => PatchOrdersCubit()),
          BlocProvider(create: (context) => DeleteOrdersCubit()),
          BlocProvider(create: (context) => ReadInvoiceCubit()),
          BlocProvider(create: (context) => FrequentlyRecommendationCubit()),
          BlocProvider(create: (context) => DeliverySlotCubit()),
          BlocProvider(create: (context)=>ReadBusinessDataCubit()..getBusinessData()),
          BlocProvider(create: (context)=>TodaysSaleCubit()..getTodaysSale()),
          BlocProvider(create: (context)=>TotalOrdersCubit()..getTotalOrders()),
          BlocProvider(create: (context)=>TotalHoldingCubit()..getTotalHoldings()),
          BlocProvider(create: (context)=>AverageBasketValueCubit()..getAveragebasketValue()),
          BlocProvider(create: (context)=>ProducedcountryCubit()),
          BlocProvider(create: (context) => CreateCartCubit()),
          BlocProvider(create: (context)=>RecommendationCubit()),
          BlocProvider(create: (context)=>NegotiationPostCubit()),
          BlocProvider(create: (context)=>GpCardReadCubit()),
          BlocProvider(create: (context)=>CustomerStatementCubit()),
          BlocProvider(create: (context)=>PdfViewCubit()),
          BlocProvider(create: (context)=>ReadCaptchCubit()),
          BlocProvider(create: (context)=>HubListCubit()),
          BlocProvider(create: (context)=>DeliverySlotRefreshBloc()),
          BlocProvider(create: (context)=>InvoiceOrderCubit()),
          BlocProvider(create: (context)=>WishListCubit()),
          BlocProvider(create: (context)=>DeleteWishListCubit()),
          BlocProvider(create: (context)=>ListCartOrderCubit()),
          BlocProvider(create: (context)=>WhishListAllCubit()),
          BlocProvider(create: (context)=>AllCartListCubit()),
          BlocProvider(create: (context)=>AllCartListCubit()),
          BlocProvider(create: (context)=>PaymentProcessListCubit()),
          BlocProvider(create: (context)=>AdminUserCreateCubit()),
          BlocProvider(create: (context)=>ListRoleCubit()),
          BlocProvider(create: (context)=>DesignationListCubit()),
          BlocProvider(create: (context)=>EmployeeListCubit()),
          BlocProvider(create: (context)=>AdminUserReadCubit()),
          BlocProvider(create: (context)=>AdminChannelListCubit()),
          BlocProvider(create: (context)=>AdminChannelCreateCubit()),
          BlocProvider(create: (context)=>AdminChannelReadCubit()),
          BlocProvider(create: (context)=>AdminChangePasswordCubit()),
          BlocProvider(create: (context)=>AdminChannelDeleteCubit()),
          BlocProvider(create: (context)=>ApproveListCubit()),
          BlocProvider(create: (context)=>ApproveCartListCubit()),
          BlocProvider(create: (context) => ApproveOrderPostCubit()),
          BlocProvider(create: (context) => ReadApproveCartCubit()),
          BlocProvider(create: (context) => CreateApproveCartCubit()),
          BlocProvider(create: (context) => PurchaseRecommendationCubit()),
          BlocProvider(create: (context) => SecondPopupWishListCubit()),
          BlocProvider(create: (context) => AdminUserCountCubit()),
          BlocProvider(create: (context) => AdminChannelCountCubit()),
          BlocProvider(create: (context) => HoverPaymentCubit()),
          BlocProvider(create: (context) => OrderStatusCubit()),
          BlocProvider(create: (context) => NewOrderListCubit()),
          BlocProvider(create: (context) => DeletwishListVarientPopupCubit()),
          BlocProvider(create: (context) => ApprovalListCallecentereTabCubit()),
          BlocProvider(create: (context) => OrderTypeCubit()),
          BlocProvider(
            create: (context) => CustomerGroupCubit(),
          ),
          BlocProvider(
            create: (context) => NegotiationCheckPostCubit(),
          ), BlocProvider(
            create: (context) => OfferHubListCubit(),
          ),
        ],
        child: MyApp(),
      ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var status;
  bool isDataConnectivity=false;



  Future<void> main() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    status = prefs.getBool('isLoggedIn') ?? false;





    if(status){
      Variable.isAdmin = prefs.getString('previlliageExist')=="previlliageExist"?true : false;

      BusinessData buisnessData=BusinessData();
      BusinessMeta buisnessMeta=BusinessMeta();
      UserPreferencesCallCenter().getMetaData().then((value) {
        buisnessMeta=     buisnessMeta.copyWith(
            area:value.area,
            altEmail: value.altEmail,
          altMobile: value.altMobile,
          city: value.city,
          country: value.country,
          facebook: value.facebook,
            fullname: value.fullname,
          instagram: value.instagram,
          landmark: value.landmark,
          snapchat: value.snapchat,
          street: value.street,
          whatsapp: value.whatsapp,
          zone: value.zone,


        );
      });

      UserPreferencesCallCenter().getBuisnessData().then((value) {
        buisnessData=     buisnessData.copyWith(
            custId:value.custId,
          id:value.id,
          taxId: value.taxId,
          businessName: value.businessName,
          businessMode: value.businessMode,
          designation: value.designation,
          impEmpCode: value.impEmpCode,
          businessMeta: buisnessMeta

        );
      });
      UserPreferencesCallCenter().getCaUser().then((value) {
        listCustomer=     listCustomer?.copyWith(
            customerUserCode:value.customerUserCode,
            id:value?.id,
            isActive:value?.isActive,
            mobile:value?.mobile,
            email:value?.email,
            customerName: value.customerName,
            // businessData:readData?[index]?.businessData,
            businessUnit: value?.businessUnit,
            customerId:value?.customerId,
            dateJoined: value?.dateJoined,
            isBusinessUser:value?.isBusinessUser,
            isDelete:value?.isDelete,
            legalUnit:value?.legalUnit,
          customerMeta: buisnessMeta
          ,
          businessData: buisnessData
        );
      });

    }
    print("BOOL$status");
    setState(() {

    });
  }
@override
  void initState() {


    main();



    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(


      title: 'Call Center SidraBazar',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: Builder(
      //   builder: (context){
      //     final currentRoute = ModalRoute.of(context)?.settings.name ?? '/';
      //     print("ssssssssssssssssssssssssssssssssss$currentRoute");
      // final    routes= {
      //       '/': (context) => status==true?CallCenterMain():SignInHilalWeb(),
      //     // '/signup': (context) => SignUpHilal(),
      //     '/home': (context) => CallCenterMain(),
      //     '/callCenter': (context) => CallCenterMain(),
      //   };
      //     final pageBuilder = routes[currentRoute] ?? (context) => NoDataConnection();
      //     return  pageBuilder(context);
      //
      //
      //   },
      // ),
      routes: {
        '/': (context) =>status==true?CallCenterMain():SignInHilalWeb(),
        // '/signup': (context) => SignUpHilal(),
        '/home': (context) => CallCenterMain(),
        '/callCenter': (context) => CallCenterMain(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

class NoDataConnection extends StatefulWidget {


  @override
  State<NoDataConnection> createState() => _NoDataConnectionState();
}

class _NoDataConnectionState extends State<NoDataConnection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.blockSizeVertical*90.5,


      child: Center(
        child: Text('This is the default page.'),
      ),
    );
  }
}