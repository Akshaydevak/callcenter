
import 'package:dartz/dartz.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Models/Assign_To_List/Assign_To_List.dart';
import 'package:salesapp/Models/Business_Unit_Data/Business_Unit_Data.dart';
import 'package:salesapp/Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';
import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/Models/Call_Center_Model/approval/approval_model.dart';
import 'package:salesapp/Models/Call_Center_Model/channel_List/Channel_List.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/Call_Center_Model/hub_model/hub_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Count_Model_Class/Count_Model_Class.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Percentage_Models/Percentage.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Read_Latest_Order/Latest_Order.dart';
import 'package:salesapp/Models/List_Sales_Return/List_Sales_Return.dart';
import 'package:salesapp/Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';
import 'package:salesapp/Models/Read_sales_invoice/Read_Sales_Invoice.dart';
import 'package:salesapp/Models/SalesInvoiceCodeList/Sales_Invoice_Code_List.dart';
import 'package:salesapp/Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import 'package:salesapp/Models/usermodel/customer_model.dart';

import '../Cubit/Call_Center_Cubit/dashboard/model/channel_model.dart';
import '../Models/Assign_Org_List/Assign_Org_List.dart';
import '../Models/Call_Center_Model/All_Customers_List/All_Customers.dart';
import '../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../Models/Call_Center_Model/admin_new_user/admin_model.dart';
import '../Models/Dashboard_model_Class/Recent_Customers/Recent_Customers.dart';
import '../Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import '../Models/SignUp_Model/SignUp.dart';
import '../Models/delivery_Address_model/Delivery_Address.dart';
import '../utils/failure.dart';
import '../utils/repo.dart';
import '../utils/response_utils.dart';
import 'datasourses.dart';

abstract class salesappRepository{
  Future<Either<Failure, DoubleResponse>> postSignUp(SignUpData model);
  Future<Either<Failure, DoubleResponse>> postOtp(String email,String mobile,String otp,String createdCode);
  Future<Either<Failure, DoubleResponse>> postSignIn(String username,String password,String empCode);
  Future<Either<Failure, PaginatedResponse>> getSalesList(String? next);
  Future<Either<Failure, PaginatedResponse<List<SalesGeneralList>>>> getSearch(String? next);
  Future<Either<Failure, ReadSalesGenaral>> getSalesGenaralRead(int orderId);
  Future<Either<Failure, DoubleResponse>> postSalesGenaralPatch(ReadSalesGenaral model,int? id);
  Future<Either<Failure, ReadSalesInvoice>> getSalesInvoiceRead(int orderId);
  Future<Either<Failure, DoubleResponse>> postCreateSalesInvoice(CreateSalesInvoice model);
  Future<Either<Failure, List<AssignToList>>> getAssignTo();
  Future<Either<Failure, PaginatedResponse>> getSalesReturnList(String? next);
  Future<Either<Failure, PaginatedResponse<List<SalesReturnList>>>> getSearched(String? next);
  Future<Either<Failure, ReadSalesReturn>> getSalesReturnRead(int orderId);
  Future<Either<Failure,List< warrentyModel>>> getWarrantys(int variantId);
  Future<Either<Failure, List<InvoiceCodeList>>> getInvoiceCode();
  Future<Either<Failure, DoubleResponse>> postSalesReturnPatch(ReadSalesReturn model,int? id);
  Future<Either<Failure, ReadSalesReturnInvoice>> getReturnIvoiceRead(int orderId);
  Future<Either<Failure, List<OrgList>>> getAssignToOrgList();
  Future<Either<Failure, DoubleResponse>> postCreateSalesReturnInvoice(ReadSalesReturnInvoice model);
  Future<Either<Failure, List<LatestOrder>>> getLatestOrder();
  Future<Either<Failure, List<RecentCustomers>>> getRecent();
  Future<Either<Failure, CountModels>> getCustomerCount();
  Future<Either<Failure, CountModels>> getOrderCount();
  Future<Either<Failure, Percentage>> getOrderPercent();
  Future<Either<Failure, CountModels>> getNewlyCount();
  Future<Either<Failure, PercentageGp>> getOrderPercentGp();
  Future<Either<Failure, List<BusinessUnitData>>> getBusinessData();
  Future<Either<Failure, DoubleResponse>> getPdfView(String invoiceId,String type);

  //CALL CENTER
  Future<Either<Failure, DoubleResponse>> postCustomerCreate(CustomerCreate model);
  Future<Either<Failure, DoubleResponse>> postChannelSave(ChannelCreateModel model);
  Future<Either<Failure, DoubleResponse>> postCustomerUpdate(CustomerCreate model);
  Future<Either<Failure, List<CustomerList>>> getCustomerList(String code);
  Future<Either<Failure, List<ChannelList>>> getChannelList();
  Future<Either<Failure, DoubleResponse>> postChannelCreate(CreateChannel model);
  Future<Either<Failure, DoubleResponse>> postCreateOrganisation(CreateOrganisation model);
  Future<Either<Failure,PaginatedResponse< List<VariantList>>>> getVariantList();
  Future<Either<Failure,PaginatedResponse< List<VariantList>>>> getSearchVariants(String code);
  Future<Either<Failure, ReadVarriant>> getVariantRead(int orderId);
  Future<Either<Failure, DoubleResponse>> postCreateOrder(CreateOrder model);
  Future<Either<Failure, DoubleResponse>> postDefaultDeliverAdrress({String? userCode,int? addressId,bool? isDefault});
  Future<Either<Failure, OrderTypes>> getOrderTypes();
  Future<Either<Failure, PaginatedResponse< List<AllCustomerList>>>> getAllCustomerList(String customerId);
  Future<Either<Failure,  PaginatedResponse<List<AllCustomerList>>>> getSearchOrder(String code);
  Future<Either<Failure,  PaginatedResponse<List<UserCustomerStatementListModel>>>> getAllCustomerStatementList(UserCustomerStatementPostModel model,String code);
  Future<Either<Failure,PaginatedResponse< List<AllCustomerList>>>> getCustomerListHistory(String code,String customerId);
  Future<Either<Failure, PaginatedResponse< List<AllCustomerList>>>> getSearchedOrder(String code);
  Future<Either<Failure, GpCardData>> getGpCallcenter();
  Future<Either<Failure, PaginatedResponse<List<OrderStatus>>>> getOrderStatus(String? code,);
  Future<Either<Failure, PaginatedResponse<List<NewOrderListModel>>>> getNewOrderList(String? code,);
  Future<Either<Failure, PaginatedResponse<  List<AllOrdersTables>>>> getAllOrdersList();
  Future<Either<Failure, PaginatedResponse<  List<HubResponseModel>>>> getHubList(String variantCode,String element);
  Future<Either<Failure, PaginatedResponse<  List<WishListModel>>>> getWishList(String element);
  Future<Either<Failure, List<CustomerGroupModel>>> getPromotionCustomerGroupList(String? code,);
  Future<Either<Failure, PaginatedResponse<  List<RecommendationCallCenterModel>>>> getRecommendationList(String element);
  Future<Either<Failure, PaginatedResponse<  List<RecommendationCallCenterModel>>>> getFrequentlyRecommendationList(String element,String id);
  Future<Either<Failure, PaginatedResponse<  List<RecommendationCallCenterModel>>>> getPurchaseRecommendationList(String element,String id);
  Future<Either<Failure, PaginatedResponse<  List<offerCallCenterModel>>>> getOfferList(String element,String type);
  Future<Either<Failure, PaginatedResponse<  List<NegotiationListModel>>>> getNegotationList(String id,String next);
  Future<Either<Failure, PaginatedResponse<  List<GeneralRoleModel>>>> roleTypeList(String type,String next);
  Future<Either<Failure, PaginatedResponse<  List<UserEmployeeListModel>>>> adminEmployeeList(String next);
  Future<Either<Failure, PaginatedResponse<  List<ChannelListModel>>>> adminChannelList(String next);
  Future<Either<Failure, PaginatedResponse<  List<DesignationListModel>>>> designationList(String next);
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSearchAllOrders(String element);
  Future<Either<Failure,PaginatedResponse< List<AllOrdersTables>>>> getHoldedOrdersList();
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSearchHoldedOrders(String? element);
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSuccessOrdersList();
  Future<Either<Failure, PaginatedResponse<List<AllOrdersTables>>>> getSearchSuccessOrders(String element);
  Future<Either<Failure, ReadOrderCallCenter>> getOrdersRead(int orderId);
  Future<Either<Failure, DoubleResponse>> getCaptcha();
  Future<Either<Failure, DoubleResponse>> postCaptcha(String captchaId,String captchaText);
  Future<Either<Failure, DoubleResponse>> postWhisList(String variantId,String variantCode);
  Future<Either<Failure, DoubleResponse>> deleteWhisList(String variantId,);
  Future<Either<Failure, DoubleResponse>> postOrderPatch(ReadOrderCallCenter model,int? id);
  Future<Either<Failure, DoubleResponse>> deleteOrders(int? id);
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getInvoiceOrderList();
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSearchInvoice(String element);
  Future<Either<Failure, InvoiceOrderCallCenter>> getInvoiceRead(int orderId);
  Future<Either<Failure, AdminUserReadModel>> getAdminUserReadRead(String code);
  Future<Either<Failure, AdminChannelReadModel>> getAdminChannlReadRead(String code);
  Future<Either<Failure, ChannelUserCountModel>> getAdminUserCount();
  Future<Either<Failure, ChannelUserCountModel>> getAdminChannelCount();
  Future<Either<Failure, DoubleResponse>> postCreateInvoice(InvoiceOrderCallCenter model);
  Future<Either<Failure,PaginatedResponse< List<CustomerList>>>> getUserManage(String code);
  Future<Either<Failure, List<CustomerList>>> getSearchUserManage(String element);
  Future<Either<Failure, List<DeliveryAddressData>>> getDeliveryAddressList();
  Future<Either<Failure, DoubleResponse>> createdeliveryAddress(DeliveryAddressData model);
  Future<Either<Failure, List<OrgList>>> getProducedCountry(String? code );
  Future<Either<Failure, PaginatedResponse>> getPaymentOptionList(String? next);
  Future<Either<Failure, PaginatedResponse>> getPaymentProcessList(String? next);
  Future<Either<Failure, DoubleResponse>> postProcessPay(PostResponse model);
  Future<Either<Failure, DoubleResponse>> putPaymentProcess(PostResponse model);
  Future<Either<Failure, DoubleResponse>> postPaymentStatus(int invoiceId,int paymentId,String paymentMethod);
  Future<Either<Failure, NewOrderListModel>> getTodaysSale({String? type});
  Future<Either<Failure, NewOrderListModel>> getTotalOrders();
  Future<Either<Failure, NewOrderListModel>> getTotalHoldings({String? type});
  Future<Either<Failure, NewOrderListModel>> getAveragebasketValue();
  Future<Either<Failure, List<StateList>>> getStateList(String? code );
  Future<Either<Failure, PaginatedResponse<List<InventoryListModel>>>> getInventoryListRead(String code);
  Future<Either<Failure, DoubleResponse>> postReadNegotiation(NegotiationModel model);
  Future<Either<Failure, DoubleResponse>> postReadNegotiationCheck(NegotiationCheckModel model);
  Future<Either<Failure, List<DeliverySlotResultModel>>> getDeliverySlot();
  Future<Either<Failure, DoubleResponse>> postCreateCart(CreateCartModel model);
  Future<Either<Failure, PaginatedResponse<  List<CartListModel>>>> getCArtOrderList(String element);
  //Admin

  Future<Either<Failure, DoubleResponse>> postAdminUserCreate(AdminCreationModel model);
  Future<Either<Failure, DoubleResponse>> postAdminCahnnelCreate(AdminChannelCreateModel model);
  Future<Either<Failure, DoubleResponse>> postAdminChannelUpdate( String code,AdminChannelCreateModel model);
  Future<Either<Failure, DoubleResponse>>changePasswordEmployee(String  userName,String password);
  Future<Either<Failure, DoubleResponse>> postAdminUserUpdate(AdminCreationModel model);
  Future<Either<Failure, DoubleResponse>> deleteAdminUser(String code);
  Future<Either<Failure, DoubleResponse>> deleteAdminCahnnel(String code);



  //approve order
  Future<Either<Failure, DoubleResponse>> postApproveOrderCreate(ApproveOrderModel model);
  Future<Either<Failure, PaginatedResponse<  List<ApproveListModel>>>> getApproveList(String next);
  Future<Either<Failure, PaginatedResponse<  List<ApproveListModel>>>> getApproveListByType(String next);

  //approve cart
  Future<Either<Failure, DoubleResponse>> postApproveCart(ApproveCartModel model);
  Future<Either<Failure, PaginatedResponse<  List<ApproveCartListModel>>>> getApproveCartList(String next);
  Future<Either<Failure, ApproveCartReadModel>> getApproveCartRead(int orderId);


  //INVENTORY
  Future<Either<Failure, PaginatedResponse>> getSalesSidelist(String? next);
  Future<Either<Failure, ReadSalesGenaral>> getGereralReadInventory(int orderId);
  Future<Either<Failure, ReadSalesInvoice>> getReadInvoiceInventory(int orderId);
  Future<Either<Failure, PaginatedResponse>> getReturnSideList(String? next);
  Future<Either<Failure, ReadSalesReturn>> getInventoryReturnRead(int orderId);
  Future<Either<Failure, ReadSalesReturnInvoice>> getReturnInvoiceReadInventory(int orderId);

}


class salesappRepoImpl extends salesappRepository{

  final salesappDatasourse _hilalDataSource = SalesDatasourseImpl();
  salesappRepoImpl();
  @override
  Future<Either<Failure, DoubleResponse>> postSignUp(
      SignUpData model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postSignUp(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postOtp(
      String email,String mobile,String otp,String createdCode) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postOtp(email,mobile,otp,createdCode));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSignIn(
      String username,String password,String empCode) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postSignIn(username,password,empCode));
  }

  @override
  Future<Either<Failure, PaginatedResponse>> getSalesList(String? s) {

    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getSalesList(s));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<SalesGeneralList>>>> getSearch(
      String? next) {
    return repoExecute<PaginatedResponse<List<SalesGeneralList>>>(() async => _hilalDataSource.getSearch(next));
  }

  @override
  Future<Either<Failure, ReadSalesGenaral>> getSalesGenaralRead(int orderId) {
    return repoExecute<ReadSalesGenaral>(() async => _hilalDataSource.getSalesGenaralRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesGenaralPatch(
      ReadSalesGenaral model,id ) {

    return repoExecute<DoubleResponse>(() async => _hilalDataSource.postSalesGenaralPatch(model,id));
  }

  @override
  Future<Either<Failure, ReadSalesInvoice>> getSalesInvoiceRead(int orderId) {
    return repoExecute<ReadSalesInvoice>(() async => _hilalDataSource.getSalesInvoiceRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateSalesInvoice(
      CreateSalesInvoice model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateSalesInvoice(model));
  }

  @override
  Future<Either<Failure, List<AssignToList>>> getAssignTo() {
    return repoExecute<List<AssignToList>>(
            () async => _hilalDataSource.getAssignTo());
  }

  @override
  Future<Either<Failure, PaginatedResponse>> getSalesReturnList(String? s) {
    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getSalesReturnList(s));
  }
  @override
  Future<Either<Failure, PaginatedResponse<List<SalesReturnList>>>> getSearched(
      String? next) {
    return repoExecute<PaginatedResponse<List<SalesReturnList>>>(() async => _hilalDataSource.getSearched(next));
  }

  @override
  Future<Either<Failure, ReadSalesReturn>> getSalesReturnRead(int orderId) {
    return repoExecute<ReadSalesReturn>(() async => _hilalDataSource.getSalesReturnRead(orderId));
  }

  @override
  Future<Either<Failure, List<InvoiceCodeList>>> getInvoiceCode() {
    return repoExecute<List<InvoiceCodeList>>(
            () async => _hilalDataSource.getInvoiceCode());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postSalesReturnPatch(
      ReadSalesReturn model,id ) {

    return repoExecute<DoubleResponse>(() async => _hilalDataSource.postSalesReturnPatch(model,id));
  }

  @override
  Future<Either<Failure, ReadSalesReturnInvoice>> getReturnIvoiceRead(int orderId) {
    return repoExecute<ReadSalesReturnInvoice>(() async => _hilalDataSource.getReturnIvoiceRead(orderId));
  }
  @override
  Future<Either<Failure, List<OrgList>>> getAssignToOrgList() {
    return repoExecute<List<OrgList>>(
            () async => _hilalDataSource.getAssignToOrgList());
  }
  @override
  Future<Either<Failure, DoubleResponse>> postCreateSalesReturnInvoice(
      ReadSalesReturnInvoice model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateSalesReturnInvoice(model));
  }

  @override
  Future<Either<Failure, List<LatestOrder>>> getLatestOrder() {
    return repoExecute<List<LatestOrder>>(() async => _hilalDataSource.getLatestOrder());
  }
  @override
  Future<Either<Failure, List<RecentCustomers>>> getRecent() {
    return repoExecute<List<RecentCustomers>>(() async => _hilalDataSource.getRecent());
  }
  @override
  Future<Either<Failure, CountModels>> getCustomerCount() {
    return repoExecute<CountModels>(() async => _hilalDataSource.getCustomerCount());
  }
  @override
  Future<Either<Failure, CountModels>> getOrderCount() {
    return repoExecute<CountModels>(() async => _hilalDataSource.getOrderCount());
  }
  @override
  Future<Either<Failure, Percentage>> getOrderPercent() {
    return repoExecute<Percentage>(() async => _hilalDataSource.getOrderPercent());
  }
  @override
  Future<Either<Failure, CountModels>> getNewlyCount() {
    return repoExecute<CountModels>(() async => _hilalDataSource.getNewlyCount());
  }
  @override
  Future<Either<Failure, PercentageGp>> getOrderPercentGp() {
    return repoExecute<PercentageGp>(() async => _hilalDataSource.getOrderPercentGp());
  }
  @override
  Future<Either<Failure, List<BusinessUnitData>>> getBusinessData() {
    return repoExecute<List<BusinessUnitData>>(() async => _hilalDataSource.getBusinessData());
  }

  //CALL CENTER
  @override
  Future<Either<Failure, DoubleResponse>> postCustomerCreate(
      CustomerCreate model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCustomerCreate(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCustomerUpdate(
      CustomerCreate model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCustomerUpdate(model));
  }
  @override
  Future<Either<Failure, List<CustomerList>>> getCustomerList(String code) {
    return repoExecute<List<CustomerList>>(
            () async => _hilalDataSource.getCustomerList(code));
  }
  @override
  Future<Either<Failure, List<ChannelList>>> getChannelList() {
    return repoExecute<List<ChannelList>>(
            () async => _hilalDataSource.getChannelList());
  }
  @override
  Future<Either<Failure, DoubleResponse>> postChannelCreate(
      CreateChannel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postChannelCreate(model));
  }
  @override
  Future<Either<Failure, DoubleResponse>> postCreateOrganisation(
      CreateOrganisation model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateOrganisation(model));
  }
  @override
  Future<Either<Failure,PaginatedResponse< List<VariantList>>>> getVariantList() {
    return repoExecute<PaginatedResponse<List<VariantList>>>(
            () async => _hilalDataSource.getVariantList());
  }
  @override
  Future<Either<Failure,PaginatedResponse<List<VariantList>>>> getSearchVariants(String element) {
    return repoExecute<PaginatedResponse<List<VariantList>>>(
            () async => _hilalDataSource.getSearchVariants(element));
  }
  @override
  Future<Either<Failure, ReadVarriant>> getVariantRead(int orderId) {
    return repoExecute<ReadVarriant>(() async => _hilalDataSource.getVariantRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateOrder(
      CreateOrder model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateOrder(model));
  }
  @override
  Future<Either<Failure, OrderTypes>> getOrderTypes() {
    return repoExecute<OrderTypes>(
            () async => _hilalDataSource.getOrderTypes());
  }

  @override
  Future<Either<Failure, PaginatedResponse< List<AllCustomerList>>>> getAllCustomerList(String customerId) {
    return repoExecute< PaginatedResponse<List<AllCustomerList>>>(
            () async => _hilalDataSource.getAllCustomerList(customerId));
  }

  @override
  Future<Either<Failure, PaginatedResponse< List<AllCustomerList>>>> getSearchOrder(String code) {
    return repoExecute< PaginatedResponse<List<AllCustomerList>>>(
            () async => _hilalDataSource.getSearchOrder(code));
  }

  @override
  Future<Either<Failure,PaginatedResponse< List<AllCustomerList>>>> getCustomerListHistory(String code,String customerId) {
    return repoExecute<PaginatedResponse<List<AllCustomerList>>>(
            () async => _hilalDataSource.getCustomerListHistory(code,customerId));
  }

  @override
  Future<Either<Failure, PaginatedResponse< List<AllCustomerList>>>> getSearchedOrder(String code) {
    return repoExecute< PaginatedResponse<List<AllCustomerList>>>(
            () async => _hilalDataSource.getSearchedOrder(code));
  }
  @override
  Future<Either<Failure, GpCardData>> getGpCallcenter() {
    return repoExecute<GpCardData>(() async => _hilalDataSource.getGpCallcenter());
  }
  @override
  Future<Either<Failure, PaginatedResponse<  List<AllOrdersTables>>>> getAllOrdersList() {
    return repoExecute< PaginatedResponse< List<AllOrdersTables>>>(
            () async => _hilalDataSource.getAllOrdersList());
  }

  @override
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSearchAllOrders(String element) {
    return repoExecute< PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getSearchAllOrders(element));
  }
  @override
  Future<Either<Failure,PaginatedResponse< List<AllOrdersTables>>>> getHoldedOrdersList() {
    return repoExecute<PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getHoldedOrdersList());
  }

  @override
  Future<Either<Failure,  PaginatedResponse<List<AllOrdersTables>>>> getSearchHoldedOrders(String? element) {
    return repoExecute< PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getSearchHoldedOrders(element));
  }
  @override
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getSuccessOrdersList() {
    return repoExecute< PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getSuccessOrdersList());
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<AllOrdersTables>>>> getSearchSuccessOrders(String element) {
    return repoExecute<PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getSearchSuccessOrders(element));
  }

  @override
  Future<Either<Failure, ReadOrderCallCenter>> getOrdersRead(int orderId) {
    return repoExecute<ReadOrderCallCenter>(() async => _hilalDataSource.getOrdersRead(orderId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postOrderPatch(
      ReadOrderCallCenter model,id ) {

    return repoExecute<DoubleResponse>(() async => _hilalDataSource.postOrderPatch(model,id));
  }
  @override
  Future<Either<Failure, DoubleResponse>> deleteOrders(int? id) {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.deleteOrders(id!));
  }

  @override
  Future<Either<Failure, PaginatedResponse< List<AllOrdersTables>>>> getInvoiceOrderList() {
    return repoExecute< PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getInvoiceOrderList());
  }

  @override
  Future<Either<Failure,  PaginatedResponse<List<AllOrdersTables>>>> getSearchInvoice(String element) {
    return repoExecute< PaginatedResponse<List<AllOrdersTables>>>(
            () async => _hilalDataSource.getSearchInvoice(element));
  }

  @override
  Future<Either<Failure, InvoiceOrderCallCenter>> getInvoiceRead(int orderId) {
    return repoExecute<InvoiceOrderCallCenter>(() async => _hilalDataSource.getInvoiceRead(orderId));
  }
  @override
  Future<Either<Failure, DoubleResponse>> postCreateInvoice(
      InvoiceOrderCallCenter model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateInvoice(model));
  }
  @override
  Future<Either<Failure,PaginatedResponse< List<CustomerList>>>> getUserManage(String code) {
    return repoExecute<PaginatedResponse<List<CustomerList>>>(
            () async => _hilalDataSource.getUserManage(code));
  }

  @override
  Future<Either<Failure, List<CustomerList>>> getSearchUserManage(String element) {
    return repoExecute<List<CustomerList>>(
            () async => _hilalDataSource.getSearchUserManage(element));
  }

  @override
  Future<Either<Failure, List<DeliveryAddressData>>> getDeliveryAddressList() {
    return repoExecute<List<DeliveryAddressData>>(
            () async => _hilalDataSource.getDeliveryAddressList());
  }

  Future<Either<Failure, DoubleResponse>> createdeliveryAddress(
      DeliveryAddressData model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.createdeliveryAddress(model));
  }
  @override
  Future<Either<Failure, PaginatedResponse>> getPaymentOptionList(String? s) {
    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getPaymentOptionList(s));
  }
  @override
  Future<Either<Failure, PaginatedResponse>> getPaymentProcessList(String? s) {
    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getPaymentProcessList(s));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postProcessPay(
      PostResponse model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postProcessPay(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> putPaymentProcess(
      PostResponse model) {

    return repoExecute<DoubleResponse>(() async => _hilalDataSource.putPaymentProcess(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postPaymentStatus(int invoiceId,int paymentId,String paymentMethod) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postPaymentStatus(invoiceId,paymentId,paymentMethod));
  }

  //INVENTORY
  @override
  Future<Either<Failure, PaginatedResponse>> getSalesSidelist(String? s) {

    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getSalesSidelist(s));
  }
  @override
  Future<Either<Failure, ReadSalesGenaral>> getGereralReadInventory(int orderId) {
    return repoExecute<ReadSalesGenaral>(() async => _hilalDataSource.getGereralReadInventory(orderId));
  }
  @override
  Future<Either<Failure, ReadSalesInvoice>> getReadInvoiceInventory(int orderId) {
    return repoExecute<ReadSalesInvoice>(() async => _hilalDataSource.getReadInvoiceInventory(orderId));
  }
  @override
  Future<Either<Failure, PaginatedResponse>> getReturnSideList(String? s) {
    return repoExecute<PaginatedResponse>(() async => _hilalDataSource.getReturnSideList(s));
  }
  @override
  Future<Either<Failure, ReadSalesReturn>> getInventoryReturnRead(int orderId) {
    return repoExecute<ReadSalesReturn>(() async => _hilalDataSource.getInventoryReturnRead(orderId));
  }
  @override
  Future<Either<Failure, ReadSalesReturnInvoice>> getReturnInvoiceReadInventory(int orderId) {
    return repoExecute<ReadSalesReturnInvoice>(() async => _hilalDataSource.getReturnInvoiceReadInventory(orderId));
  }

  @override
  Future<Either<Failure, List<OrgList>>> getProducedCountry(String? code) {
    return repoExecute<List<OrgList>>(
            () async => _hilalDataSource.getProducedCountry(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<OrderStatus>>>> getOrderStatus(String? code) {
    return repoExecute<PaginatedResponse<List<OrderStatus>>>(
            () async => _hilalDataSource.getOrderStatus(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<NewOrderListModel>>>> getNewOrderList(String? code) {
    return repoExecute<PaginatedResponse<List<NewOrderListModel>>>(
            () async => _hilalDataSource.getNewOrderList(code));
  }

  @override
  Future<Either<Failure, NewOrderListModel>> getTodaysSale({String? type}) {
    return repoExecute<NewOrderListModel>(() async => _hilalDataSource.getTodaysSale(type:type));
  }

  @override
  Future<Either<Failure, NewOrderListModel>> getTotalOrders() {
    return repoExecute<NewOrderListModel>(() async => _hilalDataSource.getTotalOrders());
  }

  @override
  Future<Either<Failure, NewOrderListModel>> getTotalHoldings({String? type}) {
    return repoExecute<NewOrderListModel>(() async => _hilalDataSource.getTotalHoldings(type:type));
  }

  @override
  Future<Either<Failure, NewOrderListModel>> getAveragebasketValue() {
    return repoExecute<NewOrderListModel>(() async => _hilalDataSource.getAveragebasketValue());;
  }

  @override
  Future<Either<Failure, List<StateList>>> getStateList(String? code) {
    return repoExecute<List<StateList>>(
            () async => _hilalDataSource.getStateList(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<InventoryListModel>>>> getInventoryListRead(String code) {
    return repoExecute<PaginatedResponse<List<InventoryListModel>>>(
            () async => _hilalDataSource.getInventoryListRead(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<RecommendationCallCenterModel>>>> getRecommendationList(String element) {
    return repoExecute< PaginatedResponse< List<RecommendationCallCenterModel>>>(
            () async => _hilalDataSource.getRecommendationList(element));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<offerCallCenterModel>>>> getOfferList(String element,String type) {
    return repoExecute< PaginatedResponse< List<offerCallCenterModel>>>(
            () async => _hilalDataSource.getOfferList(element,type));
  }

  @override
  Future<Either<Failure,List< warrentyModel>>> getWarrantys(int variantId) {
    return repoExecute<List<warrentyModel>>(() async => _hilalDataSource.getWarrantys(variantId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postReadNegotiation(NegotiationModel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postReadNegotiation(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<NegotiationListModel>>>> getNegotationList(String id, String next) {
    return repoExecute< PaginatedResponse< List<NegotiationListModel>>>(
            () async => _hilalDataSource.getNegotationList(id,next));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postReadNegotiationCheck(NegotiationCheckModel model) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postReadNegotiationCheck(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<UserCustomerStatementListModel>>>> getAllCustomerStatementList(UserCustomerStatementPostModel model, String code) {
    return repoExecute< PaginatedResponse<List<UserCustomerStatementListModel>>>(
            () async => _hilalDataSource.getAllCustomerStatementList(model,code));
  }

  @override
  Future<Either<Failure, List<CustomerGroupModel>>> getPromotionCustomerGroupList(String? code) {
    return repoExecute< List<CustomerGroupModel>>(
            () async => _hilalDataSource.getPromotionCustomerGroupList(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postChannelSave(ChannelCreateModel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postChannelSave(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> getPdfView(String invoiceId,String type) {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.getPdfView(invoiceId,type));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<RecommendationCallCenterModel>>>> getFrequentlyRecommendationList(String element, String id) {
    return repoExecute< PaginatedResponse< List<RecommendationCallCenterModel>>>(
            () async => _hilalDataSource.getFrequentlyRecommendationList(element,id));
  }

  @override
  Future<Either<Failure, List<DeliverySlotResultModel>>> getDeliverySlot() {
    return repoExecute<List<DeliverySlotResultModel>>(() async => _hilalDataSource.getDeliverySlot());
  }

  @override
  Future<Either<Failure, DoubleResponse>> getCaptcha() {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.getCaptcha());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCaptcha(String captchaId, String captchaText) {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.postCaptcha(captchaId,captchaText));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<HubResponseModel>>>> getHubList(String variantCode, String element) {
    return repoExecute< PaginatedResponse< List<HubResponseModel>>>(
            () async => _hilalDataSource.getHubList(variantCode,element));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<WishListModel>>>> getWishList(String element) {
    return repoExecute< PaginatedResponse< List<WishListModel>>>(
            () async => _hilalDataSource.getWishList(element));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postWhisList(String variantId, String variantCode) {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.postWhisList(variantId,variantCode));
  }

  @override
  Future<Either<Failure, DoubleResponse>> deleteWhisList(String variantId) {
    return repoExecute<DoubleResponse>(() async => _hilalDataSource.deleteWhisList(variantId));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postCreateCart(CreateCartModel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postCreateCart(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<CartListModel>>>> getCArtOrderList(String element) {
    // TODO: implement getCArtOrderList
    return repoExecute< PaginatedResponse< List<CartListModel>>>(
            () async => _hilalDataSource.getCArtOrderList(element));;
  }

  @override
  Future<Either<Failure, DoubleResponse>> postAdminUserCreate(AdminCreationModel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postAdminUserCreate(model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postAdminUserUpdate(AdminCreationModel model) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postAdminUserUpdate(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<GeneralRoleModel>>>> roleTypeList(String type, String next) {
    return repoExecute< PaginatedResponse< List<GeneralRoleModel>>>(
            () async => _hilalDataSource.roleTypeList(type,next));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<DesignationListModel>>>> designationList(String next) {
    return repoExecute< PaginatedResponse< List<DesignationListModel>>>(
            () async => _hilalDataSource.designationList(next));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<UserEmployeeListModel>>>> adminEmployeeList(String next) {
    return repoExecute< PaginatedResponse< List<UserEmployeeListModel>>>(
            () async => _hilalDataSource.adminEmployeeList(next));
  }

  @override
  Future<Either<Failure, AdminUserReadModel>> getAdminUserReadRead(String code) {
    return repoExecute<AdminUserReadModel>(() async => _hilalDataSource.getAdminUserReadRead(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> deleteAdminUser(String code) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.deleteAdminUser(code));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ChannelListModel>>>> adminChannelList(String next) {
    return repoExecute< PaginatedResponse< List<ChannelListModel>>>(
            () async => _hilalDataSource.adminChannelList(next));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postAdminCahnnelCreate(AdminChannelCreateModel model) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postAdminCahnnelCreate(model));
  }

  @override
  Future<Either<Failure, AdminChannelReadModel>> getAdminChannlReadRead(String code) {
    return repoExecute<AdminChannelReadModel>(() async => _hilalDataSource.getAdminChannlReadRead(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> changePasswordEmployee(String userName, String password) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.changePasswordEmployee(userName,password));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postAdminChannelUpdate(String code, AdminChannelCreateModel model) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postAdminChannelUpdate(code,model));
  }

  @override
  Future<Either<Failure, DoubleResponse>> deleteAdminCahnnel(String code) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.deleteAdminCahnnel(code));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postApproveOrderCreate(ApproveOrderModel model) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postApproveOrderCreate(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ApproveListModel>>>> getApproveList(String next) {
    return repoExecute< PaginatedResponse< List<ApproveListModel>>>(
            () async => _hilalDataSource.getApproveList(next));
  }

  @override
  Future<Either<Failure, DoubleResponse>> postApproveCart(ApproveCartModel model) {

    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postApproveCart(model));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ApproveCartListModel>>>> getApproveCartList(String next) {
    return repoExecute< PaginatedResponse< List<ApproveCartListModel>>>(
            () async => _hilalDataSource.getApproveCartList(next));
  }

  @override
  Future<Either<Failure, ApproveCartReadModel>> getApproveCartRead(int orderId) {
    return repoExecute<ApproveCartReadModel>(() async => _hilalDataSource.getApproveCartRead(orderId));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<ApproveListModel>>>> getApproveListByType(String next) {
    return repoExecute< PaginatedResponse< List<ApproveListModel>>>(
            () async => _hilalDataSource.getApproveListByType(next));
  }

  @override
  Future<Either<Failure, PaginatedResponse<List<RecommendationCallCenterModel>>>> getPurchaseRecommendationList(String element, String id) {
    return repoExecute< PaginatedResponse< List<RecommendationCallCenterModel>>>(
            () async => _hilalDataSource.getPurchaseRecommendationList(element,id));;
  }

  @override
  Future<Either<Failure, ChannelUserCountModel>> getAdminUserCount() {
    return repoExecute<ChannelUserCountModel>(() async => _hilalDataSource.getAdminUserCount());
  }

  @override
  Future<Either<Failure, ChannelUserCountModel>> getAdminChannelCount() {
    return repoExecute<ChannelUserCountModel>(() async => _hilalDataSource.getAdminChannelCount());
  }

  @override
  Future<Either<Failure, DoubleResponse>> postDefaultDeliverAdrress({String? userCode, int? addressId, bool? isDefault}) {
    return repoExecute<DoubleResponse>(
            () async => _hilalDataSource.postDefaultDeliverAdrress(userCode,addressId,isDefault));
  }
}