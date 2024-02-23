//for live : http://bakendapi.souqrawabi.com  for staging : http://stagingapi.souqrawabi.com/
// ignore_for_file: constant_identifier_names

const basesalesapp = "https://api-sales-application.hilalcart.com/";
const baseSalesreturn="https://api-salesapp-salesreturn.hilalcart.com/";

const userLiveBaseUrl="https://api-uat-user.sidrabazar.com/";
// const userLiveBaseUrl="https://api-rgc-user.hilalcart.com/";

// const inventoryLiveUrl="https://api-rgc-inventory.hilalcart.com/";
const inventoryLiveUrl="https://api-uat-inventory.sidrabazar.com/";

const paymentLiveUrl="https://api-uat-payments.sidrabazar.com/";
// const paymentLiveUrl="https://api-rgc-payments.hilalcart.com/";

// const callCenterLiveUrl="https://api-salesapp-callcenter.hilalcart.com/";
const callCenterLiveUrl="https://api-uat-sales-call-center.sidrabusiness.com/";

// const promotionLiveUrl="https://rgc-promotion.hilalcart.com/";
const promotionLiveUrl="https://api-uat-promotion.sidrabusiness.com/";

const deliveyLiveUrl="https://api-uat-delivery-management.sidrabusiness.com/";
// const deliveyLiveUrl="https://api-rgc-deliverymanage.hilalcart.com/";

const cartAndCheckoutLiveUrl="https://api-uat-cart-checkout.sidrabazar.com/";
// const cartAndCheckoutLiveUrl="https://api-rgc-cartcheckout.hilalcart.com /";

const organizationLiveUrl="https://api-uat-organization.sidrabusiness.com/";
// const organizationLiveUrl="https://api-rgc-organization.hilalcart.com";



const signupUrl =userLiveBaseUrl+"user-customer_customerusersignup/salesapp";
const otpUrl =userLiveBaseUrl+"user-customer_customerusersignupvarify/salesapp";
const loginUrl=userLiveBaseUrl+"user-employee_employeeuserorglogin/sidracart";

const organizationLiveApiApi = "${organizationLiveUrl}legalunit/user-business-list?business_unit_code=";
const listSalesgenaral="${basesalesapp}sales-order/list-sales-order/";
const readSalesGenaral ="${basesalesapp}sales-order/read-sales-order/";
const readSalesInvoice ="${basesalesapp}sales-invoice/read-sales-order-for-invoice/";
const createSalesInvoice = "${basesalesapp}sales-invoice/create-sales-invoice";
const assigntoList = userLiveBaseUrl+"user-customer_customeruser";

const salesReturnList="${baseSalesreturn}sales-return/list-sales-return/";
const readSalesReturn="${baseSalesreturn}sales-return/read-sales-return/";
const invoiceCodeList="${basesalesapp}sales-invoice/list-sales-invoice/";
const readSalesReturnInvoice="${baseSalesreturn}sales-return-invoice/read-sales-return-for-return-invoice/";
const createReturnInvoice="${baseSalesreturn}sales-return-invoice/create-sales-invoice";
const assOrgList=userLiveBaseUrl+"user-employee_employeeuser";
const businessDataRead="${organizationLiveUrl}legalunit/business-unit-list?is_inventory=True&business_unit_code=";
//////DASHBOARD
const latestOrders="${basesalesapp}sales-display/latest-orders";
const recentCustomer=userLiveBaseUrl+"user-account_recent-customers";
const customerCount=userLiveBaseUrl+"user-account_total-customers";
const orderCount="https://api-sales-application.hilalcart.com/sales-display/order-count";
const orderPercent="https://api-sales-application.hilalcart.com/sales-display/order-per";
const newlyCount="https://api-sales-application.hilalcart.com/sales-display/new-products";
const orderPercentGP="https://api-sales-application.hilalcart.com/sales-display/new-products-gp";


///////////CALL CENTER
const createCustomer=userLiveBaseUrl+"user-customer_admin-customeruser";
const updateCustomer=userLiveBaseUrl+"user-customer_update-customer";
const customerListUrl=userLiveBaseUrl+"user-customer_list-customer/sidracart";
const channelListUrl="${organizationLiveUrl}channel/list-channel?channel_type=Callcenter";
const recommendationListUrl="${inventoryLiveUrl}inventory-product/get-popular-recommendation-variants-for-call-canter";
const purchasRecommendationListUrl="${inventoryLiveUrl}inventory-product/get-purchase-history-based-recommendation-for-call-canter";
const frequentlyRecommendationListUrl="${inventoryLiveUrl}inventory-product/get-frequenly-bought-together-for-call-canter";
const offerListUrl="${promotionLiveUrl}display/list-common-offer-for-call-center/";
const offerListPersonaizedUrl="${promotionLiveUrl}display/list-personalised-offer-for-call-center/";
const readWarrantyUrl="${inventoryLiveUrl}display/get-warranty-details-by-variant/";
const postChannelSaveApi="${callCenterLiveUrl}call-center/create-channel-details";
const invoicePdfviewApi="${callCenterLiveUrl}call-center/download-invoice-pdf/";
const deliverySlotApi="${deliveyLiveUrl}delivery-manage/delivery-options/all";
const hubListApi="${inventoryLiveUrl}inventory-stock/list-hub-stock-by-inventory-variant";
const wishListApi="${cartAndCheckoutLiveUrl}wishlist/admin/wish-list-by-customer/default?domain=callcenter&customer_code=";
const cartListApi="${callCenterLiveUrl}call-center/display-cart/";
const postWishListApi="${cartAndCheckoutLiveUrl}wishlist/create-wish-list/admin?domain=callcenter";
const deleteWishListApi="${cartAndCheckoutLiveUrl}wishlist/delete-wishlist-varient/admin/";



const createChannel="${callCenterLiveUrl}call-center/create-channel-details";
const customerStatementListApi="${callCenterLiveUrl}call-center/customer-statement";
const createOrganisation="${organizationLiveUrl}legalunit/find-organization-entity";

// const variantListUrl="https://api-uat-inv-inventory.sidrabusiness.com/inventory-stock/list-variants-by-channel-id/";
const variantListUrl=inventoryLiveUrl+"inventory-product/list-variants-by-inventory-id/";
// const readVarriant="https://api-uat-inv-inventory.sidrabusiness.com/inventory-stock/read-variants-for-call-canter/";
const readVarriant=inventoryLiveUrl+"inventory-product/read-variants-for-call-canter/";

const createOrder="${callCenterLiveUrl}call-center/create-channel-order";
const orderTypes="${callCenterLiveUrl}call-center/create-channel-order";
const allCustomer="${callCenterLiveUrl}call-center/List-order-line-by-variant/";
const customer="${callCenterLiveUrl}call-center/list-customer-order-line-by-variant/";
const gpCard="${callCenterLiveUrl}call-center/get-gp/";
const allOrders="${callCenterLiveUrl}call-center/list-all-orders-by-channel/";
const holdedOrder="${callCenterLiveUrl}call-center/list-holded-orders-by-channel/";
const successOrder="${callCenterLiveUrl}call-center/list-success-orders-by-channel/";
const readOrders="${callCenterLiveUrl}call-center/read-patch-channel-order/";
const invoiceList="${callCenterLiveUrl}call-center/list-orders-for-invoice/";
const invoiceRead="${callCenterLiveUrl}call-center/read-orders-for-invoice/";
const invoiceCreate="${callCenterLiveUrl}call-center/create-invoice";
const cartCreateApi="${callCenterLiveUrl}call-center/create-cart";
const  orderStatusApi="${callCenterLiveUrl}call-center/latest-order-status/";
const  newOrderListApi="${callCenterLiveUrl}call-center/new-orders/";
const listDeliveryAddress=userLiveBaseUrl+"user-general_admin_address?customer_id=";
const createAddressUrl=userLiveBaseUrl+"user-general_admin_address/create";
const todaysSaletotalApi=callCenterLiveUrl+"call-center/today-sales/";
const todaysSaletotalAdminApi=callCenterLiveUrl+"call-center/total-orders-for-admin-dashboard/";
const totalOrdersApi=callCenterLiveUrl+"call-center/total-orders/";
const totalHoldingApi=callCenterLiveUrl+"call-center/total-holdings/";
const averageBasketValueApi=callCenterLiveUrl+"call-center/average-basket-value/";
const defaultDeliveryAdrressApi=userLiveBaseUrl+"user-general_admin_address";
const negotiattionPostApi=promotionLiveUrl+"negotiation/get-negotiation-to-cart";
const negotiationCheckPostApi=promotionLiveUrl+"negotiation/check-negotiation-in-cart";
const negotiattionListApi=promotionLiveUrl+"negotiation/list-negotiation-product-to-call-center/";


const paymrntOptionsUrl="${paymentLiveUrl}payment-general/payment-methods";
const paymentProcesListUrl="${paymentLiveUrl}payment-general/payment-transaction-list";
const postProcessPayUrl="${paymentLiveUrl}payment-general/payment-transaction";
const putPaymentProcessUrl="${paymentLiveUrl}payment-general/payment-transaction";
const paymentStatusUrl="${callCenterLiveUrl}call-center/order-edit-after-payment";

//admin
const adminUserUpdateApi="${userLiveBaseUrl}user-employee_admin-update";
const adminUserCreateApi="${userLiveBaseUrl}user-employee_admin-add?acess_site=cluster&business_code=";
const adminRoleListApi="${userLiveBaseUrl}user-general_role?role_type=";
const adminDesignationListApi="${organizationLiveUrl}legalunit/";
const adminEmployeeListApi="${userLiveBaseUrl}user-employee_employeeuser";
const adminEmployeeReadApi="${userLiveBaseUrl}user-employee_admin-update/";
const adminChannelListApi="${callCenterLiveUrl}call-center/list-channel-by-inventory/";
const adminChannelCreateApi="${callCenterLiveUrl}call-center/create-channel-details";
const adminChannelReadApi="${callCenterLiveUrl}call-center/read-update-channel-details/";
const changePasswordApi="${userLiveBaseUrl}user-accountpassword-reset/admin";
const adminUserCountApi="${userLiveBaseUrl}user-employeedashbord/admin";
const adminChannelCountApi="${organizationLiveUrl}channel/dashbord/admin";
//approve
const createApproveOrderApi="${callCenterLiveUrl}call-center/approve-order";
const listApproveOrderApi="${callCenterLiveUrl}call-center/list-need-approval-orders-by-channel/";
const sortinglistApproveOrderApi="${callCenterLiveUrl}call-center/list-approved-orders-by-channel/";

//Approve cart
const cartCreateApproveApi="${callCenterLiveUrl}call-center/approve-cart";
const approveCartListApi="${callCenterLiveUrl}call-center/list-cart-to-approve/";
const readApproveCart="${callCenterLiveUrl}call-center/read-cart-to-approve/";




//INVENTORY
const baseURLInventory="https://api-uat-inv-sales-order.sidrabusiness.com/";
const basereturnURLInventory="https://api-uat-inv-sales-return.sidrabusiness.com/";

const salesOrderInv="${baseURLInventory}sales-order/list-sales-order/";
const readOrderInv="${baseURLInventory}sales-order/read-sales-order/";
const readInvoiceInv="${baseURLInventory}sales-invoice/read-sales-order-for-invoice/";
const returnlistUrlInv="${basereturnURLInventory}sales-return/list-sales-return-by-inventory/";
const readReturnUrlInv="${basereturnURLInventory}sales-return/read-sales-return/";
const readreaturnInvoiceInv="${basereturnURLInventory}sales-return-invoice/read-sales-return-for-invoice/";
