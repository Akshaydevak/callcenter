import 'package:dio/dio.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/model/channel_model.dart';
import 'package:salesapp/Models/Business_Unit_Data/Business_Unit_Data.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Models/Call_Center_Model/approval/approval_model.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/Call_Center_Model/hub_model/hub_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Models/usermodel/customer_model.dart';
import 'package:salesapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/CallCenterTabScreen.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';
import 'package:salesapp/Models/Assign_To_List/Assign_To_List.dart';
import 'package:salesapp/Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/Models/Call_Center_Model/channel_List/Channel_List.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Count_Model_Class/Count_Model_Class.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Percentage_Models/Percentage.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Read_Latest_Order/Latest_Order.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Recent_Customers/Recent_Customers.dart';
import 'package:salesapp/Models/List_Sales_Return/List_Sales_Return.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';
import 'package:salesapp/Models/Read_sales_invoice/Read_Sales_Invoice.dart';
import 'package:salesapp/Models/SalesInvoiceCodeList/Sales_Invoice_Code_List.dart';
// import '../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../Callcenter_Screens/dashboard/screens/popUps/PopUp1.dart';
import '../Models/Call_Center_Model/All_Customers_List/All_Customers.dart';
import '../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';
import '../Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import '../Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import '../Models/SignUp_Model/SignUp.dart';
import '../Models/delivery_Address_model/Delivery_Address.dart';
import '../utils/hilal_urls.dart';
import '../utils/response_utils.dart';
import '../utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
abstract class salesappDatasourse {
  Future<DoubleResponse> postSignUp(SignUpData model);
  Future<DoubleResponse> postOtp(String email,String mobile,String otp,String createdCode);
  Future<DoubleResponse> postSignIn(String username,String password,String empCode);
  Future<PaginatedResponse> getSalesList(String? next);
  Future<PaginatedResponse<List<SalesGeneralList>>> getSearch(String? next);
  Future<ReadSalesGenaral>getSalesGenaralRead(int id);
  Future<DoubleResponse> postSalesGenaralPatch(ReadSalesGenaral model,int? id);
  Future<ReadSalesInvoice>getSalesInvoiceRead(int id);
  Future<DoubleResponse> postCreateSalesInvoice(CreateSalesInvoice model);
  Future<List<AssignToList>> getAssignTo();
  Future<PaginatedResponse> getSalesReturnList(String? next);
  Future<PaginatedResponse<List<SalesReturnList>>> getSearched(String? next);
  Future<ReadSalesReturn>getSalesReturnRead(int id);
  Future<List<warrentyModel>>getWarrantys(int id);
  Future<List<InvoiceCodeList>> getInvoiceCode();
  Future<DoubleResponse> postSalesReturnPatch(ReadSalesReturn model,int? id);
  Future<ReadSalesReturnInvoice>getReturnIvoiceRead(int id);
  Future<List<OrgList>> getAssignToOrgList();
  Future<DoubleResponse> postCreateSalesReturnInvoice(ReadSalesReturnInvoice model);
  Future<List<LatestOrder>>getLatestOrder();
  Future<List<RecentCustomers>>getRecent();
  Future<CountModels>getCustomerCount();
  Future<CountModels>getOrderCount();
  Future<Percentage>getOrderPercent();
  Future<CountModels>getNewlyCount();
  Future<PercentageGp>getOrderPercentGp();
  Future<List<BusinessUnitData>>getBusinessData();


  ////////////////////CALL CENTER
  Future<DoubleResponse>getPdfView(String invoiceId,String type);
  Future<DoubleResponse> postCustomerCreate(CustomerCreate model);
  Future<DoubleResponse> postChannelSave(ChannelCreateModel model);
  Future<DoubleResponse> postCustomerUpdate(CustomerCreate model);
  Future<List<CustomerList>> getCustomerList(String code);
  Future<List<ChannelList>> getChannelList();
  Future<DoubleResponse> postChannelCreate(CreateChannel model);
  Future<DoubleResponse> postCreateOrganisation(CreateOrganisation model);
  Future<PaginatedResponse<List<VariantList>>> getVariantList();
  Future<PaginatedResponse<List<VariantList>>> getSearchVariants(String code);
  Future<ReadVarriant>getVariantRead(int id);
  Future<DoubleResponse> postCreateOrder(CreateOrder model);
  Future<DoubleResponse> postDefaultDeliverAdrress(String? userCode, int? addressId, bool? isDefault);
  Future<OrderTypes> getOrderTypes();
  Future< PaginatedResponse<List<AllCustomerList>>> getAllCustomerList(String customerId);
  Future< PaginatedResponse<List<AllCustomerList>>> getSearchOrder(String code);
  Future< PaginatedResponse<List<UserCustomerStatementListModel>>> getAllCustomerStatementList(UserCustomerStatementPostModel model,String code);
  Future<PaginatedResponse<List<AllCustomerList>>> getCustomerListHistory(String code,String customerId);
  Future< PaginatedResponse<List<AllCustomerList>>> getSearchedOrder(String code);
  Future<GpCardData>getGpCallcenter();
  Future< PaginatedResponse< List<AllOrdersTables>>> getAllOrdersList();
  Future< PaginatedResponse< List<HubResponseModel>>> getHubList(String variantCode, String element);
  Future< PaginatedResponse< List<WishListModel>>> getWishList( String element);
  Future< PaginatedResponse< List<CartListModel>>> getCArtOrderList( String element);
  Future<  List<CustomerGroupModel>>  getPromotionCustomerGroupList(String? code);
  Future< PaginatedResponse< List<RecommendationCallCenterModel>>> getRecommendationList(String element);
  Future< PaginatedResponse< List<RecommendationCallCenterModel>>> getFrequentlyRecommendationList(String element,String id);
  Future< PaginatedResponse< List<RecommendationCallCenterModel>>> getPurchaseRecommendationList(String element,String id);
  Future< PaginatedResponse< List<offerCallCenterModel>>> getOfferList(String element,String type);
  Future< PaginatedResponse< List<NegotiationListModel>>> getNegotationList(String id,String next);
  Future< PaginatedResponse< List<GeneralRoleModel>>> roleTypeList(String type,String next);
  Future< PaginatedResponse< List<UserEmployeeListModel>>> adminEmployeeList(String next);
  Future< PaginatedResponse< List<ChannelListModel>>> adminChannelList(String next);
  Future< PaginatedResponse< List<DesignationListModel>>> designationList(String next);
  Future< PaginatedResponse<List<AllOrdersTables>>> getSearchAllOrders(String element);
  Future<PaginatedResponse<List<AllOrdersTables>>> getHoldedOrdersList();
  Future< PaginatedResponse<List<AllOrdersTables>>> getSearchHoldedOrders(String? element);
  Future< PaginatedResponse<List<AllOrdersTables>>> getSuccessOrdersList();
  Future<PaginatedResponse<List<AllOrdersTables>>> getSearchSuccessOrders(String element);
  Future<ReadOrderCallCenter>getOrdersRead(int id);
  Future<DoubleResponse>getCaptcha();
  Future<DoubleResponse>postCaptcha(String captchaId, String captchaText);
  Future<DoubleResponse>postWhisList(String variantId, String variantCode);
  Future<DoubleResponse>deleteWhisList(String variantId);
  Future<DoubleResponse> postOrderPatch(ReadOrderCallCenter model,int? id);
  Future<DoubleResponse> deleteOrders(int? id);
  Future< PaginatedResponse<List<AllOrdersTables>>> getInvoiceOrderList();
  Future< PaginatedResponse<List<AllOrdersTables>>> getSearchInvoice(String element);
  Future<InvoiceOrderCallCenter>getInvoiceRead(int id);
  Future<AdminUserReadModel>getAdminUserReadRead(String Code);
  Future<AdminChannelReadModel>getAdminChannlReadRead(String Code);
  Future<ChannelUserCountModel>getAdminUserCount();
  Future<ChannelUserCountModel>getAdminChannelCount();
  Future<DoubleResponse> postCreateInvoice(InvoiceOrderCallCenter model);
  Future<PaginatedResponse<List<CustomerList>>> getUserManage(String Code);
  Future<List<CustomerList>> getSearchUserManage(String element);
  Future<List<DeliveryAddressData>> getDeliveryAddressList();
  Future<DoubleResponse> createdeliveryAddress(DeliveryAddressData model);
  Future<PaginatedResponse> getPaymentOptionList(String? next);
  Future<PaginatedResponse> getPaymentProcessList(String? next);
  Future<DoubleResponse> postProcessPay(PostResponse model);
  Future<DoubleResponse> putPaymentProcess(PostResponse model);
  Future<DoubleResponse> postPaymentStatus(int invoiceId,int paymentId,String paymentMethod);
  Future<List<OrgList>> getProducedCountry(String? code);
  Future<PaginatedResponse<List<OrderStatus>>> getOrderStatus(String? code);
  Future<PaginatedResponse<List<NewOrderListModel>>> getNewOrderList(String? code);
  Future<NewOrderListModel>getTodaysSale({String? type});
  Future<NewOrderListModel>getTotalOrders();
  Future<NewOrderListModel>getTotalHoldings({String? type});
  Future<NewOrderListModel>getAveragebasketValue();
  Future<List<StateList>> getStateList(String? code);
  Future<PaginatedResponse<List<InventoryListModel>>> getInventoryListRead(
      String? code,
      );
  Future<DoubleResponse> postReadNegotiation(NegotiationModel model);
  Future<DoubleResponse> postReadNegotiationCheck(NegotiationCheckModel model);
  Future<List<DeliverySlotResultModel>>getDeliverySlot();
  Future<DoubleResponse> postCreateCart(CreateCartModel model);

  //admin
  Future<DoubleResponse> postAdminUserCreate(AdminCreationModel model);
  Future<DoubleResponse> postAdminCahnnelCreate(AdminChannelCreateModel model);
  Future<DoubleResponse> postApproveOrderCreate(ApproveOrderModel model);
  Future<DoubleResponse> postAdminChannelUpdate( String code,AdminChannelCreateModel model);
  Future<DoubleResponse>changePasswordEmployee(String userName, String password);
  Future<DoubleResponse> postAdminUserUpdate(AdminCreationModel model);
  Future<DoubleResponse> deleteAdminUser(String  code);
  Future<DoubleResponse> deleteAdminCahnnel(String  code);

  //Approve cart
  Future<DoubleResponse> postApproveCart(ApproveCartModel model);

  //INVENTORY
  Future<PaginatedResponse> getSalesSidelist(String? next);
  Future<ReadSalesGenaral>getGereralReadInventory(int id);
  Future<ReadSalesInvoice>getReadInvoiceInventory(int id);
  Future<PaginatedResponse> getReturnSideList(String? next);
  Future<ReadSalesReturn>getInventoryReturnRead(int id);
  Future<ReadSalesReturnInvoice>getReturnInvoiceReadInventory(int id);


  Future< PaginatedResponse< List<ApproveListModel>>> getApproveList(String next);
  Future< PaginatedResponse< List<ApproveListModel>>> getApproveListByType(String next);
  Future< PaginatedResponse< List<ApproveCartListModel>>> getApproveCartList(String next);

  Future<ApproveCartReadModel>getApproveCartRead(int id);
}

class SalesDatasourseImpl extends salesappDatasourse {
  final Dio client = Dio();

  SalesDatasourseImpl();

  @override
  Future<DoubleResponse> postSignUp(SignUpData model) async {
    final response = await client.post(
        signupUrl,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> postOtp(String email, String mobile, String key,
      String createdCode) async {
    final response = await client.post(otpUrl,
        data: {
          "email": email,
          "mobile": mobile,
          "key": key,
          "created_code": createdCode.toString(),
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> postSignIn(String username, String password,
      String empCode) async {
    print(loginUrl);
    print(username);
    print(password);
    print(empCode);
    final response = await client.post(loginUrl,
        data: {
          "email": username,
          "password": password,
          "code": empCode
        },
        options: Options(

            headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    print("reesssss ${response.data}");
    // SignUpData data = SignUpData.fromJson(response.data['data']);
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<PaginatedResponse> getSalesList(String? next) async {
    next == null ? next = "" : next = next;
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? empcode = sharedPreferences.getString('EMPcode');
    print("serched${listSalesgenaral + empcode.toString() + next}");
    final response = await
    client.get(
        listSalesgenaral + empcode.toString() + next,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
// print(response.data);
    List<SalesGeneralList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SalesGeneralList.fromJson(element));
    });

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<SalesGeneralList>>> getSearch(
      String? next) async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? empcode = sharedPreferences.getString('EMPcode');
    print("$listSalesgenaral$empcode?code=$next");
    final response = await client.get("$listSalesgenaral$empcode?code=$next",
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<SalesGeneralList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SalesGeneralList.fromJson(element));
    });
    return PaginatedResponse<List<SalesGeneralList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<ReadSalesGenaral> getSalesGenaralRead(id) async {
    try {
      final response = await client.get(readSalesGenaral + id.toString(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      ReadSalesGenaral data = ReadSalesGenaral.fromJson(response.data['data']);

      return data;
    }
    catch (I) {
      print("error is here$I");
    }
    final response = await client.get(readSalesGenaral + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("response" + response.toString());
    ReadSalesGenaral data = ReadSalesGenaral.fromJson(response.data['data']);
    // print(data);
    return data;
  }

  @override
  Future<DoubleResponse> postSalesGenaralPatch(ReadSalesGenaral model,
      id) async {
    final response = await client.patch(
        readSalesGenaral + id.toString(),
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<ReadSalesInvoice> getSalesInvoiceRead(id) async {
    final response = await client.get(readSalesInvoice + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    ReadSalesInvoice data = ReadSalesInvoice.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<DoubleResponse> postCreateSalesInvoice(
      CreateSalesInvoice model) async {
    print("invoice URL:${createSalesInvoice}");
    final response = await client.post(createSalesInvoice,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<AssignToList>> getAssignTo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.get(assigntoList,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );
    List<AssignToList> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(AssignToList.fromJson(element));
    });
    print("!!$items");
    return items;
  }

  @override
  Future<PaginatedResponse> getSalesReturnList(String? next) async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? token = sharedPreferences.getString('token');
    print(paymentProcesListUrl + next.toString());
    print(token);

try{
  final response = await client.get(
      paymentProcesListUrl + next.toString(),
      options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          }));
  List<PaymentProcessList> items = [];
  (response.data['data']['results'] as List).forEach((element) {
    items.add(PaymentProcessList.fromJson(element));
  });

  return PaginatedResponse(items, response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous']);
}catch(e){
  print("the searching case$e");
}
    final response = await client.get(
        paymentProcesListUrl + next.toString(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    List<PaymentProcessList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PaymentProcessList.fromJson(element));
    });

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<SalesReturnList>>> getSearched(
      String? next) async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? empcode = sharedPreferences.getString('EMPcode');

    final response = await client.get("$salesReturnList$empcode?code=$next",
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<SalesReturnList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SalesReturnList.fromJson(element));
    });
    return PaginatedResponse<List<SalesReturnList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString());
  }

  @override
  Future<ReadSalesReturn> getSalesReturnRead(id) async {
    final response = await client.get(readSalesReturn + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    ReadSalesReturn data = ReadSalesReturn.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<List<InvoiceCodeList>> getInvoiceCode() async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? empcode = sharedPreferences.getString('EMPcode');

    final response = await client.get(
      invoiceCodeList + empcode.toString(),

      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        },
      ),
    );
    List<InvoiceCodeList> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(InvoiceCodeList.fromJson(element));
    });
    // print("!!$items");
    return items;
  }

  @override
  Future<DoubleResponse> postSalesReturnPatch(ReadSalesReturn model, id) async {
    print("patchURL:${readSalesReturn + id.toString()}");
    try {
      final response = await client.patch(
          readSalesReturn + id.toString(),
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print("errorreturn${response.data}");
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (m) {
      print("patcher$m");
    }
    final response = await client.patch(
        readSalesReturn + id.toString(),
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));


    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<ReadSalesReturnInvoice> getReturnIvoiceRead(id) async {
    try {
      print("RRR${readSalesReturnInvoice + id.toString()}",);
      final response = await client.get(readSalesReturnInvoice + id.toString(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("invReturn${response.data['data']}");
      ReadSalesReturnInvoice data = ReadSalesReturnInvoice.fromJson(
          response.data['data']);
      print("datassss$data");
      return data;
    } catch (tr) {
      print("error coming$tr");
    }
    print(readSalesReturnInvoice + id.toString(),);
    final response = await client.get(readSalesReturnInvoice + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("invReturn${response.data}");
    ReadSalesReturnInvoice data = ReadSalesReturnInvoice.fromJson(
        response.data['data']);
    print("datassss$data");
    return data;
  }

  @override
  Future<List<OrgList>> getAssignToOrgList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.get(
      assOrgList,

      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );
    List<OrgList> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(OrgList.fromJson(element));
    });
    // print("55$items");
    return items;
  }

  @override
  Future<DoubleResponse> postCreateSalesReturnInvoice(
      ReadSalesReturnInvoice model) async {
    print("return invoice creation${createReturnInvoice}");
    final response = await client.post(createReturnInvoice,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<List<LatestOrder>> getLatestOrder() async {
    final response = await client.get(latestOrders,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // print("ll${response.data}");
    List<LatestOrder> items = [];

    (response.data['data'] as List).forEach((element) {
      items.add(LatestOrder.fromJson(element));
    });
    // print("!!$items");
    return items;
  }

  @override
  Future<List<RecentCustomers>> getRecent() async {
    final response = await client.get(recentCustomer,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    List<RecentCustomers> items = [];

    (response.data['data'] as List).forEach((element) {
      items.add(RecentCustomers.fromJson(element));
    });
    // print("!!$items");
    return items;
  }

  @override
  Future<CountModels> getCustomerCount() async {
    final response = await client.get(customerCount,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    CountModels data = CountModels.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<CountModels> getOrderCount() async {
    final response = await client.get(orderCount,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    CountModels data = CountModels.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<Percentage> getOrderPercent() async {
    final response = await client.get(orderPercent,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    Percentage data = Percentage.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<CountModels> getNewlyCount() async {
    final response = await client.get(newlyCount,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    CountModels data = CountModels.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<PercentageGp> getOrderPercentGp() async {
    final response = await client.get(orderPercentGP,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    PercentageGp data = PercentageGp.fromJson(response.data);
    return data;
  }

  @override
  Future<List<BusinessUnitData>> getBusinessData() async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    print("BUSINESS:${businessDataRead + invId.toString()}");
    final response = await client.get(businessDataRead + invId.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("RESPONCE${response.data['data']['results']}");
    List<BusinessUnitData> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(BusinessUnitData.fromJson(element));
    });
    print("FAST DATA:${items}");
    return items;
  }

  /////////////CALL CENTER
  @override
  Future<DoubleResponse> postCustomerCreate(CustomerCreate model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(createCustomer);
    print(token);
    try {
      final response = await client.post(
          createCustomer,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        createCustomer,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCustomerUpdate(CustomerCreate model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("modelsssssssssssssssss");
    print(updateCustomer);
    print(model);
    try {
      final response = await client.post(
          updateCustomer,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success',
          response.data['status'] == 'failed'
              ? response.data['message']
              : response.data['data']);
    } catch (e) {
      print("the error is$e");
    }
    final response = await client.post(
        updateCustomer,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<List<CustomerList>> getCustomerList(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    code = code == "" ? "null" : code;
    String url = customerListUrl + code.toString();
    print("customerlist url$url");
    print(token);
    final response = await client.get(url,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );
    List<CustomerList> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(CustomerList.fromJson(element));
    });
// print("!!$items");
    return items;
  }

  @override
  Future<List<ChannelList>> getChannelList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String? legal = prefs.getString('invId');
    print("channelListURL:${channelListUrl}");
try{
  final response = await client.get(channelListUrl ,
    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token
      },
    ),
  );

  List<ChannelList> items = [];
  // if (response.data["data"]["results"].isNotEmpty == true) {
  //   final SharedPreferences sharedPreferences = await SharedPreferences
  //       .getInstance();
  //   sharedPreferences.setString('channel_code',
  //       response.data["data"]["results"][0]['channel_code'] ?? "");
  //   sharedPreferences.setString(
  //       'channelName', response.data["data"]["results"][0]['name'] ?? "");
  //   String? channelCode = sharedPreferences.getString('channel_code');
  //   String? channelName = sharedPreferences.getString('channelName');
  // }
  print("eewweee${response.data["data"]["results"]}");

  (response.data['data']['results'] as List).forEach((element) {
    items.add(ChannelList.fromJson(element));
  });
// print("!!$items");
  return items;
}catch(e){
  print("the channel $e");
}
    final response = await client.get(channelListUrl,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<ChannelList> items = [];
    print("eeeee${response.data["data"]["results"]}");
    if (response.data["data"]["results"].isNotEmpty == true) {
      final SharedPreferences sharedPreferences = await SharedPreferences
          .getInstance();
      sharedPreferences.setString('channel_code',
          response.data["data"]["results"][0]['channel_code'] ?? "");
      sharedPreferences.setString(
          'channelName', response.data["data"]["results"][0]['name'] ?? "");
      String? channelCode = sharedPreferences.getString('channel_code');
      String? channelName = sharedPreferences.getString('channelName');
    }


    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChannelList.fromJson(element));
    });
// print("!!$items");
    return items;

  }

  @override
  Future<DoubleResponse> postChannelCreate(CreateChannel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.post(
        createChannel,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> postCreateOrganisation(
      CreateOrganisation model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.post(
        createOrganisation,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));

    print("RESPONSE ORGA${response.data['data']}");
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<PaginatedResponse<List<VariantList>>> getVariantList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? inventory = prefs.getString('invId');
    // String? channelCode = "CHAN006";
    print("API VARRIANT${variantListUrl + inventory.toString()}");
    final response = await client.get(variantListUrl + inventory.toString(),
      // +"?name=$val",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    // print("channelCode$channelCode");
    List<VariantList> items = [];


    (response.data['data']['results'] as List).forEach((element) {
      items.add(VariantList.fromJson(element));
    });
    print("dataitemss" + items.toString());
    return PaginatedResponse<List<VariantList>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PaginatedResponse<List<VariantList>>> getSearchVariants(
      String code) async {
    print("serch:${"$variantListUrl?code=$code"}");

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? channelCode = prefs.getString('channel_code');
    String? inventory = prefs.getString('invId');
    print("$variantListUrl$inventory?$code");
    // String? channelCode = "CHAN006";
    final response = await client.get("$variantListUrl$inventory?$code",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        },
      ),
    );
    List<VariantList> items = [];


    (response.data['data']['results'] as List).forEach((element) {
      items.add(VariantList.fromJson(element));
    });
    print("dataitemss" + items.toString());
    return PaginatedResponse<List<VariantList>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<ReadVarriant> getVariantRead(id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? inventorYid = prefs.getString('invId');
    String? customerGroupCode = prefs.getString('customerGroupCode');

    String path="$readVarriant$id/$inventorYid?customer_group_code=$customerGroupCode";
    print(path);

    final response = await client.get(path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("read Variant RES$response");
    ReadVarriant data = ReadVarriant.fromJson(response.data['data']);
    // print(data);
    return data;
  }

  @override
  Future<DoubleResponse> postCreateOrder(CreateOrder model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(createOrder);
    final response = await client.post(createOrder,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        }));
    print("create order${response.data}");
    if (response.data['status'] == 'failed' ||
        response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<OrderTypes> getOrderTypes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("orderTypesssssssssssssssssssssssssssssssssssssssssssssss");
    print(orderTypes);

    final response = await client.get(orderTypes,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    print("the response${response.data}");
    OrderTypes ordertype = OrderTypes.fromJson(response.data['data']);
    print(ordertype);
    return ordertype;
  }

  @override
  Future<PaginatedResponse<List<AllCustomerList>>> getAllCustomerList(
      String customerId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? channelCode = prefs.getString('channel_code');
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path= allCustomer + customerId + "/" + channelCode.toString()+"?inventory_id=$invId";

    print(path);
    final response = await client.get(
      path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllCustomerList> items = [];
    print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllCustomerList.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllCustomerList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllCustomerList>>> getSearchOrder(
      String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String? token = prefs.getString('token');
    String? customerId = Variable.customerId;
    String path="$allCustomer$customerId/$channelCode?inventory_id=$invId$code";
    print(path);

    final response = await client.get(
      path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllCustomerList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllCustomerList.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllCustomerList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllCustomerList>>> getCustomerListHistory(
      String code, String customerId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String? token = prefs.getString('token');
    String path=customer + customerId + "/" + channelCode.toString()+"?inventory_id=$invId";
    print(path);
    String? customerCode = prefs.getString('customerUserCode');
    print("CustomerCode:$customerCode");
    print("CustomerCode:$code");
    print("tooken:$token");
    final response = await client.post(
        path,
        data: {
          "customer_code": code,
        },
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    List<AllCustomerList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllCustomerList.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllCustomerList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllCustomerList>>> getSearchedOrder(
      String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');

    String? token = prefs.getString('token');
    String? customerId = Variable.customerId;
    String path=  "$customer$customerId/$channelCode?inventory_id=$invId&$code";
    print(path);

    final response = await client.post(
      path,
      data: {
        "customer_code": "RGC1661856329",
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllCustomerList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllCustomerList.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllCustomerList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<GpCardData> getGpCallcenter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path=gpCard + channelCode.toString()+"?inventory_id=$invId";
    // String? channelCode = "CHNL1000";
    print("current gpssssssssss$path");
    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      print("data${response.data}");
      GpCardData data = GpCardData.fromJson(response.data['data']);

      return data;
    } catch (e) {
      print("the error is" + e.toString());
    }
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    print("datasssssssss${response.data}");
    GpCardData data = GpCardData.fromJson(response.data['data']);

    return data;
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getAllOrdersList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String? channelCode = prefs.getString('channel_code');
    String path="$allOrders$channelCode?inventory_id=$invId";
    // prefs.getString('channel_code');
    print("All:${path}");
    print("token:$token");
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<AllOrdersTables> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getSearchAllOrders(
      String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path="$allOrders$channelCode?inventory_id=$invId&$code";
    print(path);

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getHoldedOrdersList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path=holdedOrder + channelCode.toString()+"?inventory_id=$invId";
    print(path);

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getSearchHoldedOrders(
      String? code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path="$holdedOrder$channelCode?inventory_id=$invId&$code";
    print(path);

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<
      PaginatedResponse<List<AllOrdersTables>>> getSuccessOrdersList() async {
    // print("All:$allOrders");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path=successOrder + channelCode.toString()+"?inventory_id=$invId";
    print(path);
    // String? channelCode = "CHNL1000";
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getSearchSuccessOrders(
      String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path="$successOrder$channelCode?inventory_id=$invId&$code";
    print(path);
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ReadOrderCallCenter> getOrdersRead(id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("read Order${readOrders + id.toString()}");
    try{
      final response = await client.get(readOrders + id.toString(),
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      ReadOrderCallCenter data = ReadOrderCallCenter.fromJson(
          response.data['data']);
      return data;
    }catch(e){
      print("the order read time error$e");
    }
    final response = await client.get(readOrders + id.toString(),
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    ReadOrderCallCenter data = ReadOrderCallCenter.fromJson(
        response.data['data']);
    return data;

  }

  @override
  Future<DoubleResponse> postOrderPatch(ReadOrderCallCenter model, id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("the posting model$model");
    print(readOrders + id.toString());
    final response = await client.patch(
        readOrders + id.toString(),
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    if (response.data['status'] == 'failed' ||
        response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    print("messs${response.data}");
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> deleteOrders(int? id) async {
// print("del:${readOrders+id.toString()}");
  print(readOrders + id.toString(),);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.delete(
        readOrders + id.toString(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print("datasourse${response}");
    if (response.data['status'] == 'error' || response.data['status']=='failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getInvoiceOrderList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path=invoiceList + channelCode.toString()+"?inventory_id=$invId";
    print(path);

    // String? channelCode = prefs.getString('channel_code');
    // String? channelCode = "CHNL1000";
    final response = await client.get(
      path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<AllOrdersTables>>> getSearchInvoice(
      String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');
    String path=invoiceList + channelCode.toString()+"?inventory_id=$invId&$code";
    print(path);
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    List<AllOrdersTables> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(AllOrdersTables.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<AllOrdersTables>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<InvoiceOrderCallCenter> getInvoiceRead(id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("invoice${invoiceRead + id.toString()}");
    print("token invoice$token}");
    try {
      final response = await client.get(invoiceRead + id.toString(),
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );

      InvoiceOrderCallCenter data = InvoiceOrderCallCenter.fromJson(
          response.data['data']);

      return data;
    }
    catch (e) {
      print("the error $e");
    }
    final response = await client.get(invoiceRead + id.toString(),
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    InvoiceOrderCallCenter data = InvoiceOrderCallCenter.fromJson(
        response.data['data']);

    return data;
  }

  @override
  Future<DoubleResponse> postCreateInvoice(InvoiceOrderCallCenter model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(invoiceCreate);
    print("$model the model is here");
    try {
      final response = await client.post(invoiceCreate,
          data: model.toJson(),
          options: Options(
              validateStatus: (value) => true,
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': token
              }));
      // print("createdxgfchvjbjk${response.data}");
      if (response.data['status'] == 'failed'||response.data['status'] == 'error') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['invoice_id']);
    }
    catch (e) {
      print("$e the error is here");
    }
    final response = await client.post(invoiceCreate,
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print("create${response.data}");
    if (response.data['status'] == 'failed' || response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['invoice_id']);
  }

  @override
  Future<PaginatedResponse<List<CustomerList>>> getUserManage(
      String code) async {
    // print("All:$allOrders");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path;
    if (code == "")
      path = "$customerListUrl?type=none";
    else
      path = customerListUrl + "?$code";
    print(path);
    try {
      final response = await client.get(path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token $token'
          },
        ),
      );

      List<CustomerList> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(CustomerList.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<CustomerList>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("the error is here$e");
    }
    final response = await client.get(path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );

    List<CustomerList> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(CustomerList.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<CustomerList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<List<CustomerList>> getSearchUserManage(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("$customerListUrl?search_key=$code");
    try {
      final response = await client.get("$customerListUrl?search_key=$code",
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'token $token'
          },
        ),
      );

      List<CustomerList> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(CustomerList.fromJson(element));
      });
      print(items);
      return items;
    }
    catch (u) {
      print("search$u");
    }
    final response = await client.get("$customerListUrl?search_key=$code",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );

    List<CustomerList> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(CustomerList.fromJson(element));
    });
    print(items);
    return items;
  }

  @override
  Future<List<DeliveryAddressData>> getDeliveryAddressList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("Das${listDeliveryAddress +
        listCustomer!.customerUserCode.toString()}");
    final response = await client.get(
      listDeliveryAddress + listCustomer!.customerUserCode.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'token $token'
        },
      ),
    );
    List<DeliveryAddressData> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      items.add(DeliveryAddressData.fromJson(element));
    });
// print("!!$items");
    return items;
  }

  @override
  Future<DoubleResponse> createdeliveryAddress(
      DeliveryAddressData model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(createAddressUrl);
    final response = await client.post(
        createAddressUrl,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse> getPaymentOptionList(String? next) async {
    next == null ? next = "" : next = next;
    print("Payment Option URL:$paymrntOptionsUrl");
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? empcode = sharedPreferences.getString('EMPcode');
    String? token = sharedPreferences.getString('token');
    print(token);
    final response = await client.get(
        paymrntOptionsUrl,
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));

    List<PaymentOptions> items = [];
    print("responseeeeeeeeeeeeeeeeeeeeee"+response.data['data']['results'].toString());
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PaymentOptions.fromJson(element));
    });

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }


  @override
  Future<PaginatedResponse> getPaymentProcessList(String? next) async {
    next == null ? next = "" : next = next;
    print("Payment Option URL:$paymentProcesListUrl");
    try {
      final SharedPreferences sharedPreferences = await SharedPreferences
          .getInstance();
      String? token = sharedPreferences.getString('token');
      final response = await client.get(
          paymentProcesListUrl,
          options: Options(
              validateStatus: (value) => true,
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': token
              }));

      print("DATASOU${response.data['data']['results']}");
      List<PaymentProcessList> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(PaymentProcessList.fromJson(element));
      });

      print("DATADA$items");

      return PaginatedResponse(items, response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    }
    catch (f) {
      print("errr$f");
    }
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? token = sharedPreferences.getString('token');
    final response = await client.get(
        paymentProcesListUrl,
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));

    print("DATASOU$response");
    List<PaymentProcessList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(PaymentProcessList.fromJson(element));
    });

    print("DATADA$items");

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postProcessPay(PostResponse model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(model);
    print("postProcessPayUrl$postProcessPayUrl");
    try {
      final response = await client.post(postProcessPayUrl,
          data: model.toJson(),
          options: Options(
              validateStatus: (value) => true,
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': token
              }));
      print("ddddddddddddd${response.data}");
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['data']['id']);
    }
    catch (e) {
      print("the erroer$e");
    }
    final response = await client.post(postProcessPayUrl,
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']['id']);
  }


  @override
  Future<DoubleResponse> putPaymentProcess(PostResponse model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    final response = await client.put(
        putPaymentProcessUrl,
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    print("messs${response.data['message']}");
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postPaymentStatus(int invoiceId, int paymentId,String paymentMethod) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("payment statusURL:$paymentStatusUrl");
    print("invoice id$invoiceId");
    print("paymentId$paymentId");
    final response = await client.post(paymentStatusUrl,
        data: {
          "invoice_id": invoiceId,
          "payment_id": paymentId,
          "payment_method":paymentMethod,
        },
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print("create${response.data}");
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  //INVENTORY
  @override
  Future<PaginatedResponse> getSalesSidelist(String? next) async {
    next == null ? next = "" : next = next;
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    print("serched${salesOrderInv + invId.toString() + next}");
    final response = await
    client.get(
        salesOrderInv + invId.toString() + next,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
// print(response.data);
    List<SalesGeneralList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SalesGeneralList.fromJson(element));
    });

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ReadSalesGenaral> getGereralReadInventory(id) async {
    print("read inv${readOrderInv + id.toString()}");
    // try{
    //   final response = await client.get(readOrderInv+id.toString(),
    //     options: Options(
    //       headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json'
    //       },
    //     ),
    //   );
    //   ReadSalesGenaral data = ReadSalesGenaral.fromJson(response.data['data']);
    //
    //   return data;
    // }
    // catch(I){
    //   print("error is here$I");
    // }
    final response = await client.get(readOrderInv + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("response ${response.data['data']['sales_order_data']}");
    ReadSalesGenaral data = ReadSalesGenaral.fromJson(
        response.data['data']['sales_order_data']);
    // print(data);
    return data;
  }

  @override
  Future<ReadSalesInvoice> getReadInvoiceInventory(id) async {
    final response = await client.get(readInvoiceInv + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    ReadSalesInvoice data = ReadSalesInvoice.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<PaginatedResponse> getReturnSideList(String? next) async {
    next == null ? next = "" : next = next;
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    final response = await client.get(
        returnlistUrlInv + invId.toString() + next,
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            }));

    List<SalesReturnList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SalesReturnList.fromJson(element));
    });

    return PaginatedResponse(items, response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ReadSalesReturn> getInventoryReturnRead(id) async {
    final response = await client.get(readReturnUrlInv + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    ReadSalesReturn data = ReadSalesReturn.fromJson(response.data['data']);
    return data;
  }

  @override
  Future<ReadSalesReturnInvoice> getReturnInvoiceReadInventory(id) async {
    try {
      print("RRR${readreaturnInvoiceInv + id.toString()}",);
      final response = await client.get(readreaturnInvoiceInv + id.toString(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      print("invReturn${response.data['data']}");
      ReadSalesReturnInvoice data = ReadSalesReturnInvoice.fromJson(
          response.data['data']);
      print("datassss$data");
      return data;
    } catch (tr) {
      print("error coming$tr");
    }
    print(readreaturnInvoiceInv + id.toString(),);
    final response = await client.get(readreaturnInvoiceInv + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("invReturn${response.data}");
    ReadSalesReturnInvoice data = ReadSalesReturnInvoice.fromJson(
        response.data['data']);
    print("datassss$data");
    return data;
  }

  @override
  Future<List<OrgList>> getProducedCountry(String? code) async {
    String path;

    code = code == null ? "" : code;
    if (code == "") {
      path = baseSalesreturn + "country-list?value=list";
    } else {
      path = baseSalesreturn + "state-list?code=$code&value=list";
    }
    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<OrgList> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(OrgList.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<OrgList> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(OrgList.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<PaginatedResponse<List<OrderStatus>>> getOrderStatus(
      String? code) async {
    code = code == null ? "" : code;
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    String? token = sharedPreferences.getString('token');
    String channelCode = sharedPreferences.getString('channel_code')??"null";
    String path;
    if (code == "")
      path = orderStatusApi + channelCode;
    else
      path = orderStatusApi + channelCode! + "?$code";
    print(" order status Api $path");
try{
  final response = await client.get(path,
      options: Options(headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token
      }));

  List<OrderStatus> items = [];
  (response.data['data']['results'] as List).forEach((element) {
    items.add(OrderStatus.fromJson(element));
    print("listOfferPeriod" + items.toString());
  });
  return PaginatedResponse<List<OrderStatus>>(
    items,
    response.data['data']['next'],
    response.data['data']['count'].toString(),
    previousUrl: response.data['data']['previous'],
  );
}catch(e){

  print("the errorsssssssss$e");
}
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        }));

    List<OrderStatus> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OrderStatus.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OrderStatus>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PaginatedResponse<List<NewOrderListModel>>> getNewOrderList(
      String? code) async {
    code = code == null ? "" : code;
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    String? token = sharedPreferences.getString('token');
    String channelCode = sharedPreferences.getString('channel_code')??"null";
    String path;
    if (code == "")
      path = newOrderListApi + channelCode!;
    else
      path = newOrderListApi + channelCode! + "?$code";
    print("New orders status$path");
    try {
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json', 'Charset': 'utf-8','Authorization': token
          }));

      List<NewOrderListModel> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(NewOrderListModel.fromJson(element));
        print("listOfferPeriod" + items.toString());
      });
      return PaginatedResponse<List<NewOrderListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
      );
    }
    catch (e) {
      print("the searching error$e");
    }
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json','Authorization': token
        }));

    List<NewOrderListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(NewOrderListModel.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<NewOrderListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<NewOrderListModel> getTodaysSale({String? type}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String channelCode = prefs.getString('channel_code')??"null";
String path=type=="inv"?"$todaysSaletotalAdminApi ${invId.toString()}":todaysSaletotalApi + channelCode.toString();

print("todays sale$path");
    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );

      NewOrderListModel data = NewOrderListModel.fromJson(
          response.data);

      return data;
    } catch (e) {
      print(e);
    }

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    NewOrderListModel data = NewOrderListModel.fromJson(
        response.data);

    return data;
  }

  @override
  Future<NewOrderListModel> getTotalOrders() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String channelCode = prefs.getString('channel_code')??"null";
    print("token invoice$token}");
    try {
      final response = await client.get(totalOrdersApi + channelCode.toString(),
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      print("responseDAta${response}");

      NewOrderListModel data = NewOrderListModel.fromJson(
          response.data);

      return data;
    } catch (e) {
      print("the eeeeeo$e");
    }

    final response = await client.get(totalOrdersApi + channelCode.toString(),
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    NewOrderListModel data = NewOrderListModel.fromJson(
        response.data);

    return data;
  }

  @override
  Future<NewOrderListModel> getTotalHoldings({String? type}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String channelCode = prefs.getString('channel_code')??"null";
String path=type=="inv"?"$totalHoldingApi$invId":totalHoldingApi + channelCode.toString();

    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      print("responseDAta Holding${response}");

      NewOrderListModel data = NewOrderListModel.fromJson(
          response.data);

      return data;
    } catch (e) {
      print("the eeeeeo$e");
    }

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    NewOrderListModel data = NewOrderListModel.fromJson(
        response.data);

    return data;
  }

  @override
  Future<NewOrderListModel> getAveragebasketValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String channelCode = prefs.getString('channel_code')??"null";
    String path=averageBasketValueApi + channelCode.toString();

    print("token invoice$token}");
    print("token invoice$path}");

    try {
      final response = await client.get(
        path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      print("responseDAta${response}");

      NewOrderListModel data = NewOrderListModel.fromJson(
          response.data);

      return data;
    } catch (e) {
      print("the eeeeeo$e");
    }

    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    NewOrderListModel data = NewOrderListModel.fromJson(
        response.data);

    return data;
  }

  @override
  Future<List<StateList>> getStateList(String? code) async {
    print("code is here$code ");
    String path = inventoryLiveUrl + "state-list?code=$code&value=list";

    try {
      print("ppppath" + path.toString());
      print(path);
      final response = await client.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<StateList> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(StateList.fromJson(element));
        print("itemsAk" + items.toString());
      });
      return items;
    } catch (e) {
      print(e);
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<StateList> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(StateList.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return items;
  }

  @override
  Future<PaginatedResponse<List<InventoryListModel>>> getInventoryListRead(
      String? code) async {
    String path = organizationLiveApiApi + code.toString();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    try {
        print("THE INVENTORYLIST PATH" + path.toString());
      print("THE INVENTORYLIST PATH tken " + token.toString());
      print(path);
      final response = await client.get(

        path,

        options: Options(
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': '$token'
          },
        ),
      );
      print("respppp data businesss /////.......... $response");
      List<InventoryListModel> items = [];
      print("response.data['data']['results']${response
          .data['data']['results']}");

      (response.data['data']['results'] as List).forEach((element) {
        // print("data");

        items.add(InventoryListModel.fromJson(element));
      });

      return PaginatedResponse<List<InventoryListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString());
    } catch (e) {
      print("the mistake is+" + e.toString());
    }

    print(path);
    print("ppppath" + path.toString());
    final response = await client.get(
      path,

      options: Options(
        validateStatus: (status) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    print("brand response...." + response.toString());
    List<InventoryListModel> items = [];

    (response.data['data']['results'] as List).forEach((element) {
      // print("data");

      items.add(InventoryListModel.fromJson(element));
    });

    return PaginatedResponse<List<InventoryListModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PaginatedResponse<
      List<RecommendationCallCenterModel>>> getRecommendationList(
      String element) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String? customerCode = prefs.getString('customerGroupCode');
    String path = "";

    element = element == null ? "" : element;

    if (element == "")
      path = "$recommendationListUrl?customer_group_code=$customerCode";
    else
      path = "$recommendationListUrl?customer_group_code=$customerCode&$element";
    // String? channelCode = "CHNL1000";
    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("All:${path}");
    print("All:${customerCode}");
    print("All:${invId}");
    try {
      final response = await client.post(path,
        data: {

          "inventory_id": invId,
          "customer_group_code": customerCode,

          "addons": []
        },
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<RecommendationCallCenterModel> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(RecommendationCallCenterModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<RecommendationCallCenterModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print(e);
    }
    final response = await client.post(path,
      data: {
        "inventory_id": invId,
        "customer_group_code": customerCode,

        "addons": []
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<RecommendationCallCenterModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(RecommendationCallCenterModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<RecommendationCallCenterModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }


  @override
  Future<PaginatedResponse<List<offerCallCenterModel>>> getOfferList(
      String element, String type) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String customerCode = prefs.getString('customerGroupCode') ?? "";

    String? invId = prefs.getString('invId');
    String path = "";
    print("customercode$customerCode");
    element = element == null ? "" : element;
    if (type == "1") {
      if (element == "")
        path = offerListUrl + customerCode + "/$invId";
      else
        path = offerListUrl + customerCode + "/$invId?$element";
    }
    else {
      if (element == "")
        path = offerListPersonaizedUrl + customerCode + "/$invId";
      else
        path = offerListPersonaizedUrl + customerCode + "/$invId?$element";
    }


    // String? channelCode = "CHNL1000";
    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("THe path of offer:${path}");
    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<offerCallCenterModel> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(offerCallCenterModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<offerCallCenterModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("THE ERROR" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<offerCallCenterModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(offerCallCenterModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<offerCallCenterModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<List<warrentyModel>> getWarrantys(int id) async {
    print(readWarrantyUrl + id.toString());

    try {
      final response = await client.get(readWarrantyUrl + id.toString(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      List<warrentyModel> items = [];
      // print("res${response.data}");
      (response.data['data'] as List).forEach((element) {
        items.add(warrentyModel.fromJson(element));
        print("items" + items.toString());
      });

      return items;
    } catch (e) {
      print("the error" + e.toString());
    }
    final response = await client.get(readWarrantyUrl + id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    List<warrentyModel> items = [];
    // print("res${response.data}");
    (response.data['data'] as List).forEach((element) {
      items.add(warrentyModel.fromJson(element));
      print("items" + items.toString());
    });

    return items;
  }

  @override
  Future<DoubleResponse> postReadNegotiation(NegotiationModel model) async {
    String path = negotiattionPostApi;
    print("tHE NEGOTIATION PATH $path");
    print(model);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(token);
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          }));
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      print("the neguutannnnnnnnnnn"+response.toString());
      NegotiationOutPutModel dataa =
      NegotiationOutPutModel.fromJson(response.data['data']);
      print("response.data['data']" + response.data['data'].toString());
      return DoubleResponse(
          response.data['status'] == 'success', dataa);
      // NegotiationOutPutModel dataa =
      // NegotiationOutPutModel.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      // return dataa;
    } catch (e) {
      print("the nEGOTIATION ERROR" + e.toString());
    }
    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    NegotiationOutPutModel dataa =
    NegotiationOutPutModel.fromJson(response.data['data']);
    print("response.data['data']" + response.data['data'].toString());
    return DoubleResponse(
        response.data['status'] == 'success', dataa);
  }

  @override
  Future<PaginatedResponse<List<NegotiationListModel>>> getNegotationList(
      String id, String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String customerCode = prefs.getString('customerGroupCode') ?? "";

    String? invId = prefs.getString('invId');
    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = negotiattionListApi + "$id";
    else
      path = negotiattionListApi + "$id$next";
    print(path);


    // String? channelCode = "CHNL1000";

    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("Allddddddddddddddddddddddddddddddddddddddddddd:${path}");
    print("Allddddddddddddddddddddddddddddddddddddddddddd:${customerCode}");
    print("Allddddddddddddddddddddddddddddddddddddddddddd:${invId}");
    print("token:${token}");

    try {
      final response = await client.post(path,
        data: {
          "customer_group_code":customerCode,
          "inventory_id":invId
        },
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<NegotiationListModel> items = [];
      print("resPONSEssssssssssss${response.data['data']['results']}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(NegotiationListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<NegotiationListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.post(path,
      data: {
        "customer_group_code":customerCode,
        "inventory_id":invId
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<NegotiationListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(NegotiationListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<NegotiationListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postReadNegotiationCheck(
      NegotiationCheckModel model) async {
    String path = negotiationCheckPostApi;
    print(path);
    print(model);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          }));
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      NegotiationOutPutModel dataa =
      NegotiationOutPutModel.fromJson(response.data['data']);
      print("response.data['data']" + response.data['data'].toString());
      return DoubleResponse(
          response.data['status'] == 'success', dataa);
      // NegotiationOutPutModel dataa =
      // NegotiationOutPutModel.fromJson(response.data['data']);
      // print("rwead" + dataa.toString());
      // return dataa;
    } catch (e) {
      print("the error" + e.toString());
    }
    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        }));
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    NegotiationOutPutModel dataa =
    NegotiationOutPutModel.fromJson(response.data['data']);
    print("response.data['data']" + response.data['data'].toString());
    return DoubleResponse(
        response.data['status'] == 'success', dataa);
  }

  @override
  Future<PaginatedResponse<
      List<UserCustomerStatementListModel>>> getAllCustomerStatementList(
      UserCustomerStatementPostModel model, String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path = "";

    code = code == null ? "" : code;

    if (code == "")
      path = customerStatementListApi+"?inventory_id=$invId";
    else
      path = customerStatementListApi + "inventory_id=$invId&$code";
    // String? channelCode = "CHNL1000";
    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("All:${path}");
    print("token:${token}");
    print("model:${model}");print("model:${channelCode}");
    try {
      final response = await client.post(path,
        // data:model.toJson(),
        data: {


          "channel_code": channelCode,

          "customer_code": model.customerCode,

          "start_date": model.startDate,

          "end_date": model.endDate
        },

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<UserCustomerStatementListModel> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(UserCustomerStatementListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<UserCustomerStatementListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print(e);
    }
    final response = await client.post(path,
      // data:model.toJson(),
      data: {


        "channel_code": channelCode,

        "customer_code": model.customerCode,

        "start_date": model.startDate,

        "end_date": model.endDate
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<UserCustomerStatementListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(UserCustomerStatementListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<UserCustomerStatementListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<List<CustomerGroupModel>> getPromotionCustomerGroupList(
      String? code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path = "https://api-customergroup-application.hilalcart.com/customer_high_prior_group";
    print("customergroupppppp$path");
    print("customergroupppppp$code");

    String? channelCode = prefs.getString('channel_code');
    print(path);
    print(code);
    try {
      final response = await client.post(path,
        data: {
          "customer_code": code
        },
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',

          },
        ),
      );
      // print("tttok$token");
      List<CustomerGroupModel> items = [];
      print("customergroupppppp${response.data['data']}");

      // print("res${response.data}");
      (response.data['data'] as List).forEach((element) {
        items.add(CustomerGroupModel.fromJson(element));
        print("items" + items.toString());
      });
      return items;
    }
    catch (e) {
      print("the eroor isssssssssssssssssss" + e.toString());
    }
    final response = await client.post(path,
      data: {
        "customer_code": code
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        },
      ),
    );
    // print("tttok$token");
    List<CustomerGroupModel> items = [];
    // print("res${response.data}");
    (response.data['data'] as List).forEach((element) {
      items.add(CustomerGroupModel.fromJson(element));
    });
    return items;
  }

  @override
  Future<DoubleResponse> postChannelSave(ChannelCreateModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    model = model.copyWith(inventoryId: invId);
    print("channelSaveszfdgfgjhkjlk$model");
    print(postChannelSaveApi);
    try {
      final response = await client.post(
          postChannelSaveApi,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        postChannelSaveApi,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> getPdfView(String invoiceId,String type) async {
    final SharedPreferences sharedPreferences = await SharedPreferences
        .getInstance();
    String? invId = sharedPreferences.getString('invId');
    String path = "$invoicePdfviewApi$invoiceId?inventory_id=${invId}&invoice_type=$type";
    String? token = sharedPreferences.getString('token');
    print(path);

    final response = await client.get(path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    PdfUrlModel dataa =
    PdfUrlModel.fromJson(response.data['data']);

    return DoubleResponse(
        response.data['status'] == 'success', dataa);
  }

  @override
  Future<PaginatedResponse<
      List<RecommendationCallCenterModel>>> getFrequentlyRecommendationList(
      String element, String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String? customerCode = prefs.getString('customerGroupCode');
    String path = "";

    element = element == null ? "" : element;

    if (element == "")
      path = "$frequentlyRecommendationListUrl?customer_group_code=$customerCode";
    else
      path ="$frequentlyRecommendationListUrl?customer_group_code=$customerCode&$element";
    // String? channelCode = "CHNL1000";
    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("All:${path}");
    print("iddddddddddddd:${id}");
    print("invvvvvvvvv:${invId}");
    try {
      final response = await client.post(path,
        data: {

          "inventory_id": invId,

          "variant_id": id,
          "customer_group_code": customerCode,

        },
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<RecommendationCallCenterModel> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(RecommendationCallCenterModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<RecommendationCallCenterModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print(e);
    }
    final response = await client.post(path,
      data: {
        "inventory_id": invId,
        "customer_group_code": customerCode,

        "variant_id": id
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<RecommendationCallCenterModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(RecommendationCallCenterModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<RecommendationCallCenterModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<List<DeliverySlotResultModel>> getDeliverySlot(
      ) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("deliverySlotApi$deliverySlotApi");
    print("tokenasssssssssa$token");


    try {
      final response = await client.get(deliverySlotApi,

        options: Options(

          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      print("respons3ee${response.data['data']}");
      List<DeliverySlotResultModel> items = [];
      (response.data['data'] as List).forEach((element) {
        items.add(DeliverySlotResultModel.fromJson(element));
      });
      print("FAST DATA:${items}");
      return items;
    } catch (e) {
      print("the deliveryCharge is here$e");
    }
    final response = await client.get(deliverySlotApi,

      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    List<DeliverySlotResultModel> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(DeliverySlotResultModel.fromJson(element));
    });
    print("FAST DATA:${items}");
    return items;
  }

  @override
  Future<DoubleResponse> getCaptcha() async {
    String path="https://api-ai-sv-module.hilalcart.com/captcha/captcha_app/generate-captcha/";
    try{
      final response = await client.get(path,
        options: Options(

          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',

          },
        ),
      );
      print("resssssssssss$response");
      CaptchaReadModel dataa =
      CaptchaReadModel.fromJson(response.data['data']);

      return DoubleResponse(
          response.data['status'] == 'success',dataa);
    }
    catch(e){
      print("the existing error is here$e");
    }
    final response = await client.get(path,
      options: Options(
        // validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        },
      ),
    );
    CaptchaReadModel dataa =
    CaptchaReadModel.fromJson(response.data['data']);


    return DoubleResponse(
        response.data['status'] == 'success', dataa);

  }

  @override
  Future<DoubleResponse> postCaptcha(String captchaId, String captchaText) async {
    String path="https://api-ai-sv-module.hilalcart.com/captcha/captcha_app/validate-captcha/";

    try{
      final response = await client.post(path,
        data:{
          "captcha_id": captchaId,
          "captcha_text": captchaText
        },
        options: Options(

          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',

          },
        ),
      );
      print("response$response");

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch(e){
      print("the existing error is here$e");
    }
    final response = await client.post(path,
      data:{
        "captcha_id": captchaId,
        "captcha_text": captchaText
      },
      options: Options(
        // validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        },
      ),
    );


    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);

  }

  @override
  Future<PaginatedResponse<List<HubResponseModel>>> getHubList(String variantCode, String element) async {
    String path = "";
    element = element == null ? "" : element;

    if (element == "")
      path = hubListApi;
    else
      path = hubListApi + "?$element";



    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    print("hublistpath$path");
    print("hublistpath$invId");
    print("variantCode$variantCode");
    final response = await client.post(path,
        data: {
          "variant_code": variantCode,

          "inventory_id": invId
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        }));

    List<HubResponseModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(HubResponseModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<HubResponseModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<WishListModel>>> getWishList(String element) async {
    String path = "";
    element = element == null ? "" : element;
    String userCode=listCustomer?.customerUserCode??"";

    if (element == "")
      path = wishListApi+userCode;
    else
      path = wishListApi + "&$element";
    print("whishList path$path");



    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');


    final response = await client.get(path,

        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token

        }));

    List<WishListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(WishListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<WishListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postWhisList(String variantId, String variantCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String customerCode=listCustomer?.customerUserCode??"";
    String path=postWishListApi;
    print(path);


    try{
      final response = await client.post(path,
        data:{
          "variant_id":variantId,
          "varient_code":variantCode,
          "inventory_code":invId,
          "customer_code":customerCode
        },
        options: Options(

          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token

          },
        ),
      );
      print("response$response");

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch(e){
      print("the existing error is here$e");
    }
    final response = await client.post(path,
      data:{
        "variant_id":variantId,
        "varient_code":variantCode,
        "inventory_code":invId,
        "customer_code":customerCode
      },
      options: Options(
        // validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token

        },
      ),
    );


    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> deleteWhisList(String variantId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String customerCode=listCustomer?.customerUserCode??"";
    String path="$deleteWishListApi$variantId?domain=callcenter&customer_code=$customerCode";
    print(path);



    try{
      final response = await client.post(path,

        options: Options(

          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token

          },
        ),
      );
      print("response$response");

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch(e){
      print("the existing error is deletewishList$e");
    }
    final response = await client.post(path,

      options: Options(
        // validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token

        },
      ),
    );


    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postCreateCart(CreateCartModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
  String path=cartCreateApi;
  print(path);

    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(
              validateStatus: (value) => true,
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': token
              }));
      print("createdxgfchvjbjk${response.data}");
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch (e) {
      print("$e the error is here");
    }
    final response = await client.post(path,
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print("create${response.data}");
    if (response.data['status'] == 'failed' || response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<CartListModel>>> getCArtOrderList(String element) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path = "";
    element = element == null ? "" : element;
    String userCode=listCustomer?.customerUserCode??"";

    if (element == "")
      path = cartListApi+userCode+"/$invId";
    else
      path = cartListApi +userCode+"/$invId"+ "?$element";
    print("cart list path$path");
    print("cart list path$token");





    final response = await client.get(path,

        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token

        }));

    List<CartListModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(CartListModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<CartListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postAdminUserCreate(AdminCreationModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path="$adminUserCreateApi$invId";
    print(path);
    print(token);
    try {
      final response = await client.post(
          path,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        path,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<DoubleResponse> postAdminUserUpdate(AdminCreationModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(adminUserUpdateApi);
    print(token);
    try {
      final response = await client.post(
          adminUserUpdateApi,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        adminUserUpdateApi,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<GeneralRoleModel>>> roleTypeList(String type, String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = adminRoleListApi + "$type";
    else
      path = adminRoleListApi + "$type$next";
    print(path);


    // String? channelCode = "CHNL1000";

    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');


    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"token $token"
          },
        ),
      );
      // print("tttok$token");
      List<GeneralRoleModel> items = [];
      print("resPONSEssssssssssss${response.data['data']['results']}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(GeneralRoleModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<GeneralRoleModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"token $token"
        },
      ),
    );
    // print("tttok$token");
    List<GeneralRoleModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(GeneralRoleModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<GeneralRoleModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<DesignationListModel>>> designationList( String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? legal = prefs.getString('legal');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = adminDesignationListApi + "$legal/designations";
    else
      path = adminDesignationListApi + "$legal/designations$next";
    print(path);


    // String? channelCode = "CHNL1000";

    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');


    print("token:${token}");
    print("token:${path}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"$token"
          },
        ),
      );
      // print("tttok$token");
      List<DesignationListModel> items = [];
      print("resPONSEssssssssssss${response.data['data']['results']}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(DesignationListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<DesignationListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("thr designtaion error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"$token"
        },
      ),
    );
    // print("tttok$token");
    List<DesignationListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(DesignationListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<DesignationListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<PaginatedResponse<List<UserEmployeeListModel>>> adminEmployeeList(String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = adminEmployeeListApi ;
    else
      path = adminEmployeeListApi + "$next";
    print(path);





    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"token $token"
          },
        ),
      );
      // print("tttok$token");
      List<UserEmployeeListModel> items = [];
      print("resPONSEssssssssssss${response.data['data']['results']}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(UserEmployeeListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<UserEmployeeListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"token $token"
        },
      ),
    );
    // print("tttok$token");
    List<UserEmployeeListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(UserEmployeeListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<UserEmployeeListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<AdminUserReadModel> getAdminUserReadRead(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path="$adminEmployeeReadApi$code";
    print("token invoice$token}");
    print("token invoice$path");
    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': "token $token"
          },
        ),
      );
      print("asse${response.data}");

      AdminUserReadModel data = AdminUserReadModel.fromJson(
          response.data['data']);

      return data;
    }
    catch (e) {
      print("the error $e");
    }
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "token $token"
        },
      ),
    );
    print("asse${response.data}");

    AdminUserReadModel data = AdminUserReadModel.fromJson(
        response.data['data']);

    return data;
  }

  @override
  Future<DoubleResponse> deleteAdminUser(String code) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path="$adminEmployeeReadApi$code";
    print(token);
    try {
      final response = await client.delete(
          path,

          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.delete(
        path,

        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<ChannelListModel>>> adminChannelList(String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = "$channelListUrl" ;
    else
      path = "$channelListUrl" + "$next";
    print(path);





    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"$token"
          },
        ),
      );
      // print("tttok$token");
      List<ChannelListModel> items = [];
      print("resPONSEssssssssssss${response.data['data']['results']}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(ChannelListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<ChannelListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"$token"
        },
      ),
    );
    // print("tttok$token");
    List<ChannelListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ChannelListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<ChannelListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<DoubleResponse> postAdminCahnnelCreate(AdminChannelCreateModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path="$adminChannelCreateApi";
    print(path);
    print(token);
    try {
      final response = await client.post(
          path,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': '$token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed' ||response.data['status'] == 'error' ||response.data['response_code'] != '200') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        path,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '$token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed' ||response.data['status'] == 'error' ||response.data['response_code'] != '200') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['response_code'] == '200', response.data['message']);
  }

  @override
  Future<AdminChannelReadModel> getAdminChannlReadRead(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path="$adminChannelReadApi$code";
    print("token invoice$token}");
    print("token invoice$path");
    print("the read Api$path");
    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': "$token"
          },
        ),
      );
      print("asse${response.data}");

      AdminChannelReadModel data = AdminChannelReadModel.fromJson(
          response.data['data']);

      return data;
    }
    catch (e) {
      print("the error $e");
    }
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "$token"
        },
      ),
    );
    print("asse${response.data}");

    AdminChannelReadModel data = AdminChannelReadModel.fromJson(
        response.data['data']);

    return data;
  }

  @override
  Future<DoubleResponse> changePasswordEmployee(String userName, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path="$changePasswordApi";
    print(path);
    print(token);
    try {
      final response = await client.post(
          path,
          data:{
            'username':userName,
            'password':password
          },
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'token $token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        path,
        data:{
          'username':userName,
          'password':password
        },
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'token $token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['response_code'] != '200') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['response_code'] == '200', response.data['message']);
  }

  @override
  Future<DoubleResponse> postAdminChannelUpdate(String code, AdminChannelCreateModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path="$adminChannelReadApi$code";
    print(path);
    print(token);
    try {
      final response = await client.patch(
          path,
          data: model.toJson(),
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': '$token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['data'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['data']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.patch(
        path,
        data: model.toJson(),
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '$token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['response_code'] != '200') {
      Variable.errorMessege = response.data['data'];
    }
    return DoubleResponse(
        response.data['response_code'] == '200', response.data['data']);
  }

  @override
  Future<DoubleResponse> deleteAdminCahnnel(String code) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path="$adminChannelReadApi$code";
    print(token);
    print(invId);
    print(path);
    try {
      final response = await client.post(
          path,
          data: {
            "inventory_id":invId
          },

          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': '$token'
              }));
      print(response);
      print(response.data['data']);

      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['data'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['data']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        path,
        data: {
          "inventory_id":invId
        },

        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '$token'
            }));
    print(response);
    print(response.data['data']);

    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['data'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);
  }

  @override
  Future<DoubleResponse> postApproveOrderCreate(ApproveOrderModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    String path=createApproveOrderApi;
    print(path);
    print(token);
    try {
      final response = await client.post(
          path,
          // data: model.toJson(),
          data:
          {

            "order_id":model.orderId,

            "vatable_amount":model.vatableAmount,

            "vat":model.vat,

            "total":model.total,

            "unit_cost":model.unitCost,

            "selling_price":model.sellingPrice,

            "reason_of_approval_reject":model.reasonApprovalObject,

            "lines":model.lines
            // model.lines


          } ,
          options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': '$token'
              }));

      print(response);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    } catch (e) {
      print("the error is herere$e");
    }
    final response = await client.post(
        path,
        // data: model.toJson(),
        data:
        {

          "order_id":model.orderId,

          "vatable_amount":model.vatableAmount,

          "vat":model.vat,

          "total":model.total,

          "unit_cost":model.unitCost,

          "selling_price":model.sellingPrice,

          "reason_of_approval_reject":model.reasonApprovalObject,

          "lines":model.lines


        } ,
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '$token'
            }));
    print(response);


    if (response.data['response_code'] != 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['response_code'] == '200', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<ApproveListModel>>> getApproveList(String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = listApproveOrderApi+"$channelCode?inventory_id=$invId" ;
    else
      path = listApproveOrderApi+"$channelCode?inventory_id=$invId" + "$next";
    print(path);





    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"$token"
          },
        ),
      );
      // print("tttok$token");
      List<ApproveListModel> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        items.add(ApproveListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<ApproveListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous'],dynamicData: response.data['order_count']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"$token"
        },
      ),
    );
    // print("tttok$token");
    List<ApproveListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ApproveListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<ApproveListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
     dynamicData: response.data['order_count']);
  }

  @override
  Future<DoubleResponse> postApproveCart(ApproveCartModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path=cartCreateApproveApi;

    try {
      final response = await client.post(path,
          data: model.toJson(),
          options: Options(
              validateStatus: (value) => true,
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Authorization': token
              }));
      print("createdxgfchvjbjk${response.data}");
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch (e) {
      print("$e the error is here");
    }
    final response = await client.post(path,
        data: model.toJson(),
        options: Options(
            validateStatus: (value) => true,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': token
            }));
    print("create${response.data}");
    if (response.data['status'] == 'failed' || response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<ApproveCartListModel>>> getApproveCartList(String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = approveCartListApi+"$invId" ;
    else
      path = approveCartListApi+"$invId"+ "$next";
    print(path);





    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"$token"
          },
        ),
      );
      // print("tttok$token");
      List<ApproveCartListModel> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        items.add(ApproveCartListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<ApproveCartListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous'],
      dynamicData: response.data['count']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"$token"
        },
      ),
    );
    // print("tttok$token");
    List<ApproveCartListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ApproveCartListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<ApproveCartListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ApproveCartReadModel> getApproveCartRead(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path="$readApproveCart${id.toString()}?inventory_id=$invId";
    print(path);
    try{
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );

      ApproveCartReadModel data = ApproveCartReadModel.fromJson(
          response.data['data']);
      return data;
    }catch(e){
      print("The approve Order Error $e");
    }
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );

    ApproveCartReadModel data = ApproveCartReadModel.fromJson(
        response.data['data']);
    return data;
  }

  @override
  Future<PaginatedResponse<List<ApproveListModel>>> getApproveListByType(String next) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? channelCode = prefs.getString('channel_code');
    String? invId = prefs.getString('invId');

    String path = "";

    next = next == null ? "" : next;


    if (next == "")
      path = sortinglistApproveOrderApi+"$channelCode?inventory_id=$invId" ;
    else
      path = listApproveOrderApi+"$channelCode?inventory_id=$invId" + "$next";
    print(path);





    print("token:${token}");

    try {
      final response = await client.get(path,

        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization':"$token"
          },
        ),
      );
      // print("tttok$token");
      List<ApproveListModel> items = [];

      (response.data['data']['results'] as List).forEach((element) {
        items.add(ApproveListModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<ApproveListModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous'],
          dynamicData: response.data['order_count']);
    } catch (e) {
      print("thr error" + e.toString());
    }
    final response = await client.get(path,

      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':"$token"
        },
      ),
    );
    // print("tttok$token");
    List<ApproveListModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(ApproveListModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<ApproveListModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
        dynamicData: response.data['order_count']);
  }

  @override
  Future<PaginatedResponse<List<RecommendationCallCenterModel>>> getPurchaseRecommendationList(String element, String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String? invId = prefs.getString('invId');
    String path = "";
    element = element == null ? "" : element;

    if (element == "")
      path = "$purchasRecommendationListUrl";
    else
      path ="$purchasRecommendationListUrl?$element";
    // String? channelCode = "CHNL1000";
    String? channelCode = prefs.getString('channel_code');
    // prefs.getString('channel_code');
    print("All:${path}");
    print("iddddddddddddd:${listCustomer?.customerUserCode}");
    print("invvvvvvvvv:${invId}");
    try {
      final response = await client.post(path,
        data: {

          "inventory_id": invId,
          "customer_code": listCustomer?.customerUserCode,

        },
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token
          },
        ),
      );
      // print("tttok$token");
      List<RecommendationCallCenterModel> items = [];
      // print("res${response.data}");
      (response.data['data']['results'] as List).forEach((element) {
        items.add(RecommendationCallCenterModel.fromJson(element));
        print("items" + items.toString());
      });
      return PaginatedResponse<List<RecommendationCallCenterModel>>(
          items,
          response.data['data']['next'],
          response.data['data']['count'].toString(),
          previousUrl: response.data['data']['previous']);
    } catch (e) {
      print(e);
    }
    final response = await client.post(path,
      data: {
        "inventory_id": invId,
        "customer_code": listCustomer?.customerUserCode,
      },
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        },
      ),
    );
    // print("tttok$token");
    List<RecommendationCallCenterModel> items = [];
    // print("res${response.data}");
    (response.data['data']['results'] as List).forEach((element) {
      items.add(RecommendationCallCenterModel.fromJson(element));
      print("items" + items.toString());
    });
    return PaginatedResponse<List<RecommendationCallCenterModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous']);
  }

  @override
  Future<ChannelUserCountModel> getAdminUserCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String path=adminUserCountApi;
    print("token invoice$token}");
    print("token invoice$path}");

    try {
      final response = await client.get(path,
        options: Options(
          validateStatus: (value) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': "token $token"
          },
        ),
      );
      print("asse${response.data}");

      ChannelUserCountModel data = ChannelUserCountModel.fromJson(
          response.data['data']);

      return data;
    }
    catch (e) {
      print("the error $e");
    }
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "token $token"
        },
      ),
    );
    print("asse${response.data}");

    ChannelUserCountModel data = ChannelUserCountModel.fromJson(
        response.data['data']);

    return data;
  }

  @override
  Future<ChannelUserCountModel> getAdminChannelCount() async {    SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  String path=adminChannelCountApi;
  print("token invoice$token}");
  print("chennelApi$path");

  try {
    final response = await client.get(path,
      options: Options(
        validateStatus: (value) => true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "$token"
        },
      ),
    );
    print("asse${response.data}");

    ChannelUserCountModel data = ChannelUserCountModel.fromJson(
        response.data['data']);

    return data;
  }
  catch (e) {
    print("the error $e");
  }
  final response = await client.get(path,
    options: Options(
      validateStatus: (value) => true,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': "$token"
      },
    ),
  );
  print("asse${response.data}");

  ChannelUserCountModel data = ChannelUserCountModel.fromJson(
      response.data['data']);

  return data;
  }

  @override
  Future<DoubleResponse> postDefaultDeliverAdrress(String? userCode, int? addressId, bool? isDefault) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(defaultDeliveryAdrressApi);
    print(userCode);
    print(addressId);
    print(isDefault);
    print(token);
    final response = await client.post(defaultDeliveryAdrressApi,
        data: {
          "user_code":userCode,
          "address_id":addressId,
          "is_default":isDefault

        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "token $token"
        }));
    print("create order${response.data}");
    if (response.data['status'] == 'failed' ||
        response.data['status'] == 'error') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }
}


