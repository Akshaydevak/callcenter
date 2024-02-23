import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/ApproveCartTable.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/approve_cart_list/approve_cart_list_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/cubits/read_approve_cart/read_approve_cart_cubit.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_table.dart';
import 'package:salesapp/Callcenter_Screens/common/focus_node.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/common_tabls.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/List_Delivery_Address_Cubit/delivery_address_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/ApproveList/approve_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/Callcenter_tab_approval_list/approval_list_callecentere_tab_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/approval_cubits/post_approval/approve_order_post_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/cart_list_order/list_cart_order_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/create_cart/create_cart_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/approval/approval_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Models/delivery_Address_model/Delivery_Address.dart';
import 'package:salesapp/Widgets/svg.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/FirstHeadPart.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/TableBottomHead.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/callcenter_pdf.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/invoice_pdf.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/patch_order_pdf.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderHistoryScreen/Table_Order_History.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp10.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp3.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/invoice_popup.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Invoice_Cubit/create_invoice_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Create_Order_Cubit/create_order_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Delete_Orders/delete_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Patch_Orders_Cubit/patch_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/pdf/pdf_view_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/shared_preference/shared_preference.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Cubit/Call_Center_Cubit/Order_Type_Cubit/order_type_cubit.dart';
import '../../Cubit/Call_Center_Cubit/Payment_Process_Cubit/payment_process_cubit.dart';
import '../../Cubit/Call_Center_Cubit/Payment_Status_Cubit/payment_status_post_cubit.dart';
import '../../Cubit/Call_Center_Cubit/Variant_List_By_Channel_Cubit/variant_list_cubit.dart';
import '../../Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import '../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../CallCenter_MainScreen.dart';
import '../dashboard/screens/dashboard.dart';
import '../dashboard/screens/popUps/PopUp1.dart';
import 'Info_Screen.dart';
import 'Right_Side_Screen.dart';
import 'SecondHead.dart';
import 'Tables.dart';
import 'ThirdHead.dart';
import 'approve_cart/cubits/create_cart_approve/create_approve_cart_cubit.dart';
import 'approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';

class CallCenterScreen extends StatefulWidget {
  final bool editOrder;
  final bool invoiceOrder;
  final bool isRejectOrApprove;
  final bool isRejectOrApproveCart;
  const CallCenterScreen({Key? key,  this.editOrder=false, this.isRejectOrApprove=false,this.isRejectOrApproveCart=false, this.invoiceOrder=false}) : super(key: key);

  @override
  State<CallCenterScreen> createState() => _CallCenterScreenState();
}

List<ReadVarriant>variantList=List.from([]);
List<OrderLineCallcenter> newList =[];
List<LinesCallcenter> patchList =List.from([]);
List<LinesInvoiceCallcenter> invoiceline =List.from([]);

NegotiationOutPutModel negotationObject=NegotiationOutPutModel();


class _CallCenterScreenState extends State<CallCenterScreen> {
bool select=false;
bool isHolded=false;
bool isPrintLoading=false;
bool isOldPrintLoading=false;
bool isPrintDotmatrixLoading=false;
bool iscreateMainButtonLoading=false;
bool isInvoiceLoading=false;
bool isDeleteLoading=false;
bool isCreateCartLoading=false;
bool isPopuApproveIgnore=false;
List<ApproveCartDisplayModel>? approveOrderCartList=[];
NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
List<RecommendationCallCenterModel> recommendationlist=List.from([]);
List<ApproveListModel>approveList=[];
AnimationController? _controller;
Animation<Offset>? _offsetAnimation;
String? orderId;

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

void _openDrawer() {
  _scaffoldKey.currentState?.openDrawer();
}
  void chaneTable(List<ReadVarriant> val){
    variantList=val;
    setState((){});
  }
  Future<void> onRefresh()async {
     Future.delayed(const Duration(seconds: 1),
            (){

          setState(() {

          });
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Page Refreshed")));
        }
    );
  }

final GlobalKey<ThirdHeadState> thirdHeadState = GlobalKey<ThirdHeadState>();
String name="";
double priceee=0;
String uommm="";
int qtty=0;
double discountt=0;
double vatabkle=0;
double vatt=0;
double totall=0;
double qtyytotal=0;
double dicountttotal=0;
double vatabtotal=0;
double totaltotal=0;
double priceTotal=0;
double vatTotal=0;
bool ishistoryEnable=false;
double deliveryChargdeTotal=0;
void editt(String namee,double pricee,String uomm,int qty,double discount,double vat,double vatable,double total){
  name=namee;
  priceee=pricee;
  uommm=uomm;
  qtty=qty;
  vatt=vat;
  discountt=discount;
  vatabkle=vatable;
  totall=total;
  setState((){});
  print("uuu$vat");
}

  TextEditingController productName=TextEditingController();
  TextEditingController price=TextEditingController();
  TextEditingController uom=TextEditingController();
  TextEditingController qty=TextEditingController();
  TextEditingController vat=TextEditingController();
  TextEditingController discount=TextEditingController();
  TextEditingController vatable=TextEditingController();
  TextEditingController total=TextEditingController();
  TextEditingController minGP=TextEditingController();
  TextEditingController maxGP=TextEditingController();
  TextEditingController avgGP=TextEditingController();
  TextEditingController targetGP=TextEditingController();
  TextEditingController text=TextEditingController();
  TextEditingController stock=TextEditingController();
  TextEditingController orderType=TextEditingController();

  TextEditingController orderDate=TextEditingController(text:DateFormat('dd-MM-yyyy').format(DateTime.now()));
  TextEditingController orderTime=TextEditingController(text: DateFormat("HH:mm:ss").format(DateTime.now()));
  TextEditingController trn=TextEditingController();
  TextEditingController storename=TextEditingController();
  TextEditingController oparator=TextEditingController();
  TextEditingController counter=TextEditingController();
  TextEditingController notTextEditing=TextEditingController();
  TextEditingController remarkTextEditing=TextEditingController();
  TextEditingController allCostemerId=TextEditingController();
  TextEditingController selectedBarcode=TextEditingController();
  TextEditingController selectedProductName=TextEditingController();
  TextEditingController channelCodeController=TextEditingController();
  TextEditingController customerUsercode=TextEditingController();
  TextEditingController allHistId=TextEditingController();
  TextEditingController negotiationText=TextEditingController();
 TextEditingController channelName=TextEditingController();
 TextEditingController channelId=TextEditingController();
 TextEditingController channelTypeId=TextEditingController();
 TextEditingController channelTypeCode=TextEditingController();
 TextEditingController channelStockType=TextEditingController();
 FocusNode secondHeadFocusNode=FocusNode();
List<DeliveryAddressData>addresslist=[];
FocusNode callCenterTabFocusNode=FocusNode();
 String orderIdPayment="";
// final page = Page();

  ReadVarriant? readData;
  ReadOrderCallCenter? readOrders;
  InvoiceOrderCallCenter? invoiceRead;
  List<LinesCallcenter>? lineCall=[];
  List<LinesInvoiceCallcenter>? lineInvoice=[];

changeHistoryEnable(va){
  setState(() {
    ishistoryEnable=va;
  });

}
addPatchInvoiceFunction() async {



  // addPatchInvoiceFunction();
  String deliverAddress= "${listCustomer?.deliveryAddressModel?.fullname},${listCustomer?.deliveryAddressModel?.street},${listCustomer?.deliveryAddressModel?.area},${listCustomer?.deliveryAddressModel?.state},${listCustomer?.deliveryAddressModel?.country}";
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? channelCode = prefs.getString('channel_code');
  String? createdBy = prefs.getString('username');
  String? customerGroupCode = prefs.getString('customerGroupCode');

  if(!iscreateMainButtonLoading){
    if(widget.isRejectOrApprove==true){


      List<ApproveLinesModel>list=[];
      if(patchList.any((element) => element.needApproval==true)){
        context.showSnackBarError("Please choose the approval status");
      }
      else{
        setState(() {
          iscreateMainButtonLoading=true;
        });
        if(patchList.isNotEmpty==true){

          for(var item in patchList){
            list.add(ApproveLinesModel(
              lineId: item.id,
              sellingPrice: item?.sellingPrice??0,
              unitCost: item.unitcost??0,
              amount: item.sellingPrice??0,
              vatableAmount: item.vatableAmount??0,
              vat:item.vat,
              totalAmount: item.totalAmount,
              reasonApprovalObject: item.reasonOfApprovalReject??"",
              isApproved: item.isApproved,
              isActive: true,
              variantName: item.variantName,
              variantId: item.variantId,
              approvalStatus: item.approvalStatus,
              quantity: item.quantity??0,
              oldQuantity: item.oldQty??0,
            ));

          }
        }
        ApproveOrderModel model=ApproveOrderModel(
          orderId: readOrders?.id,
          vatableAmount: vatabtotal,
          vat: vatTotal,
          total: totaltotal,
          unitCost: readOrders?.unitCost,
          sellingPrice:priceTotal,
          reasonApprovalObject: "",
          lines: list??[],
        );
        print("Searching model$model");
        context.read<ApproveOrderPostCubit>().postApproveOrderCreate(model);
      }


    }
    else if(widget.isRejectOrApproveCart){

      List<ApproveCartLinesModel>list=[];
      if(approveOrderCartList!.any((element) => element.needApproval==true)){
        context.showSnackBarError("Please choose the approval status");
      }
      else{
        setState(() {
          iscreateMainButtonLoading=true;
        });
        print("approval Status$approveOrderCartList");
        if(approveOrderCartList?.isNotEmpty==true){


          for(var item in approveOrderCartList!){
            list.add(ApproveCartLinesModel(

              isApproved: item.isApproved,
              isActive: true,
              approvalStatus: item.approvalStatus,
              quantity: item.quantity??0,
              price: item.price,
              cartId: item.id,

              needApproval: false,
              approvedby: "",reasonOfApprovalReject: item.reasonApprovalObject,
            ));

          }
        }
        SharedPreferences pref = await SharedPreferences.getInstance();

        var   fullName = pref.getString("username")??"";
        ApproveCartModel model=ApproveCartModel(
          cartHeadId:Variable.cartHeadId,
          lines: list??[],
          approvedBy: fullName,
        );
        print(model);
        context.read<CreateApproveCartCubit>().postApproveCart(model);
      }

    }

    else{


      if(invoicePage==true){
        invoiceRead?.invoiceData!=null?
        showDailogPopUp(
          context,
          TenthPopUp(
            processId: invoiceRead?.invoiceData?.id,
            amountTotal: totaltotal.toString(),
            orderId: orderIdPayment,
          ),
        ):context.showSnackBarError("Please Invoice The Order");



      }
      else{
        if(addresslist.isEmpty){
          context.showSnackBarError("Please create a deleivery address");
        }
        else if(Variable.shippingId==null){
          context.showSnackBarError("Please Select delivery address");
        }
        else if(createOrPatch==true){
          setState(() {
            iscreateMainButtonLoading=true;
          });
          final double unitCostTotal=patchList.fold(0, (sum, element) {
            return sum +=  double.tryParse(element.unitcost.toString())??0;
          });
          ReadOrderCallCenter patch=ReadOrderCallCenter(
              shippingId: Variable.shippingId,
              billingId: Variable.shippingId,
              discount: dicountttotal,
              vatableAmount: vatabtotal,
              customerPhoneNumber: listCustomer?.customerMeta?.whatsapp?.isNotEmpty==true? listCustomer?.customerMeta?.whatsapp:listCustomer?.phoneNumber,
              vat: vatTotal,
              total: totaltotal,
              customerGroupCode: customerGroupCode,
              unitCost: unitCostTotal,
              sellingPrice: priceTotal,
              notes: notTextEditing.text,
              remarks: remarkTextEditing.text,
              isHolded: isHolded,
              deliveryCharge: deliveryChargdeTotal,
              deliveryAddress: deliverAddress,
              deliveryAddressFullData: listCustomer?.deliveryAddressModel,
              createdBy: createdBy,

              patchOrderLines: patchList,
              needApproval: patchList.any((item)=>item.needApproval==true &&item.isActive==true)

          );
          print("patch model$patch");



          context.read<PatchOrdersCubit>().postOrderPatch(Variable.callOrderId,patch);

        }
        else if(createOrPatch!=true && invoicePage!=true){
          setState(() {
            iscreateMainButtonLoading=true;
          });
          channelId.text = prefs.getString('channelId')??"";
          channelTypeCode.text = prefs.getString('channelTypeCode')??"";
          channelTypeId.text = prefs.getString('channelTypeId')??"";
          channelStockType.text = prefs.getString('channelStockType')??"";
          channelName.text = prefs.getString('channelName')??"";
          channelCodeController.text = prefs.getString('channel_code')??"";
          String? inventoryId = prefs.getString('invId');
          var taxNum = prefs.getString('taxNum')??"";
          final double unitCostTotal=newList.fold(0, (sum, element) {
            return sum +=  double.tryParse(element.unitCost.toString())??0;
          });
          CreateOrder create = CreateOrder(
              total: totaltotal,
              vat: vatTotal,
              customerGroupCode: customerGroupCode,
              deliveryCharge: deliveryChargdeTotal,
              // vatTotal,
              vatableAmount: vatabtotal,

              remarks: remarkTextEditing.text,
              notes: notTextEditing.text,
              sellingPrice: priceTotal,
              channelCode: channelCodeController.text,
              channelTypeId: channelTypeId.text,
              channelTypeCode: channelTypeCode.text,
              channelName: channelName.text,
              channelId: channelId.text,
              trnNumber: taxNum,
              customerPhoneNumber: listCustomer?.customerMeta?.whatsapp?.isNotEmpty==true? listCustomer?.customerMeta?.whatsapp:listCustomer?.phoneNumber,
              channelStockType: channelStockType.text,
              discount: dicountttotal,
              inventoryId: inventoryId,
              needApproval:newList.any((item)=>item.needApproval==true),

              customerCode: listCustomer?.customerUserCode,
              customerMailId: listCustomer?.email,
              orderType: orderType.text.toLowerCase(),
              customerName: listCustomer?.customerName,
              customerTrnNumber: trn.text,
              isHolded: isHolded,
              unitCost:unitCostTotal??0,
              createdBy: createdBy,
              shippingAddressId: Variable.shippingId,
              billingAddressId: Variable.shippingId,
              deliveryAddress: deliverAddress,
              deliveryAddressFullData: listCustomer?.deliveryAddressModel,
              orderLinesCallcenter: newList);
          print("model$create");   context.read<CreateOrderCubit>().postCreateOrder(create);
        }
      }


    }
  }


}

editChange(){

 thirdHeadState.currentState?.editchage();
}
priceDataChange( String val){

 thirdHeadState.currentState?.prizeDatachage(val);
}

void printOldFormatOntap(){
  if(!isOldPrintLoading){
    setState(() {
      isOldPrintLoading=true;

    });
    context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","old_format");
  }
}void printDotMatrixOntap(){
    if(!isPrintDotmatrixLoading){
      setState(() {
        isPrintDotmatrixLoading=true;

      });
      context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","dotmatrix");
    }
}Future<void> printNormalOntap() async {



    setState(() {
      isPrintLoading=true;
    });

    InventoryListModel model=InventoryListModel();
    UserPreferences userPref = UserPreferences();
    await userPref.getInventoryList().then((user) {
      print("entereeeeeeeeeeeeeeeeeeed");
      print(user.isInventoryExist);
      if (user.isInventoryExist == true) {
        model=user;
        print("existing");
        print(model.name);
        // prefs.setString('token', user?.token ?? "");
      } else {
      }
    });

    widget.invoiceOrder?print("invoice"):widget.editOrder?print("patch"):print("read");
    invoicePage?context.read<PdfViewCubit>().getPdfView(invoiceRead?.invoiceData?.id.toString()??"","new_format")
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) =>
    //       CallCenterInvoicePrintScreen(
    //         model: model,
    //         taxableAmount: vatabtotal,
    //
    //         note:notTextEditing.text,
    //         select: select,
    //         vendorCode:listCustomer?.customerUserCode??"",
    //         orderCode:invoiceRead?.invoiceData?.invoiceCode??"",
    //         orderDate: invoiceRead?.invoiceData?.invoiceDate??"",
    //         table:invoiceline??[],
    //         vat: invoiceRead?.vat,
    //         totalPrice:totaltotal,
    //         discount:dicountttotal ,
    //         remarks:remarkTextEditing.text??"",
    //       )
    //   ),
    // ):
        :
    widget.editOrder?Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>
          CallCenterInvoicePrintScreen
            (
            taxableAmount: readOrders?.vatableAmount,
            note: notTextEditing.text,
            select: select,
            pageName: " ORDER HISTORY",
            vendorCode:listCustomer?.customerUserCode??"",
            model: model,
            orderCode:readOrders?.orderCode??"" ,
            orderDate: readOrders?.orderdDate??"",
            table:patchList??[],
            vat: readOrders?.vat,
            totalPrice:totaltotal,
            discount:dicountttotal ,
            remarks:remarkTextEditing.text,
          )
      ),
    ):
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>
          CallCenterInvoicePrintScreen(
            model: model,
            pageName: "ORDER",
            taxableAmount: vatabtotal,
            note: notTextEditing.text,
            select: select,
            vendorCode:listCustomer?.customerUserCode??"",
            orderCode:"" ,
            orderDate: DateTime.now().toIso8601String().split("T")[0],
            table:variantList,
            vat: vatTotal,
            totalPrice:totaltotal,
            discount:dicountttotal ,
            remarks:remarkTextEditing.text,
          )
      ),
    );
}
clearFunction(){
  setState(() {

  qtyytotal=0;
  deliveryChargdeTotal=0;
  vatabtotal=0;
  dicountttotal=0;
  totaltotal=0;
  priceTotal=0;
  vatTotal=0;
  productName.text="";
  price.text="";
  uom.text="";
  qty.text="";
  discount.text="";
  vatable.text="";
  negotiationText.clear();

  total.text="";
  orderType.text="";
  deliveryslot.text="";
  productNameDisplaySecondSectionController.clear();
  deliverySlotObject==deliverySlotObject.copyWith(
    deliveryCharge:0,
    id:null,
  );
  // channelCodeController.clear();
  Variable.channelCode="";
  notTextEditing.text="";
  remarkTextEditing.text="";
  isHolded=false;allCostemerId.clear();
  invoicePage=false;
  createOrPatch=false;
  variantList=List.from([]);
 newList =List.from([]);
 patchList =List.from([]);
   invoiceline =List.from([]);
   thirdHeadState.currentState?.clear();
   thirdHeadState.currentState?.clearForm();

  });


}


void calCulation(double qtyyy,double disc,double vatatota,double total,double price,double vattt,double deliveryCharges){
  print("vattt$vattt");
  qtyytotal=double.tryParse(qtyyy.toStringAsFixed(2))??0;
  vatabtotal=double.tryParse(vatatota.toStringAsFixed(2))??0;
  dicountttotal=double.tryParse(disc.toStringAsFixed(2))??0;
  totaltotal=double.tryParse(total.toStringAsFixed(2))??0;
  priceTotal=double.tryParse(price.toStringAsFixed(2))??0;
  vatTotal=double.tryParse(vattt.toStringAsFixed(2))??0;
  deliveryChargdeTotal=double.tryParse(deliveryCharges.toStringAsFixed(2))??0;
  totaltotal=double.tryParse((total+deliveryChargdeTotal).toStringAsFixed(2))??0;
  setState((){});
  print("uuu$qtyytotal");
}



//invoice post method
  Future<void> invoicePostFunc() async {
    var isExistCheck=invoiceline.where((element) => element.isInvoiced==true);
    if(isExistCheck.isEmpty==true){
      context.showSnackBarError("Please select lines");
    }
    else{

      setState(() {
        isInvoiceLoading=true;
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? channelCode = prefs.getString('channel_code');
      String? createdBy = prefs.getString('username');
      List<LinesInvoiceCallcenter> invoiceline2=List.from([]);
      double unitCostTotal=0;
      if(invoiceline.isNotEmpty){
        for(var i=0;i<invoiceline.length;i++){

          invoiceline2.add(LinesInvoiceCallcenter(
            id:invoiceRead?.invoiceData==null? null:invoiceline[i].id,
            orderlineId:invoiceRead?.invoiceData==null?invoiceline[i].id: invoiceline[i].orderlineId,
            isInvoiced: invoiceline[i!].isInvoiced,
            unitcost:invoiceline[i!].unitcost ??0,
          ));
          unitCostTotal+=invoiceline[i!].isInvoiced==true?double.tryParse(invoiceline[i].unitcost.toString())??0:0;
        }
      }
      InvoiceOrderCallCenter beforeInvoice=InvoiceOrderCallCenter(
        orderId:invoiceRead?.invoiceData==null? invoiceRead?.id:invoiceRead?.invoiceData?.orderId,
        notes: notTextEditing.text,
        totalAmount: totaltotal==null?0:totaltotal,
        vat: vatTotal==null?0:vatTotal,

        deliveryCharge: deliveryChargdeTotal==null?0:deliveryChargdeTotal,
        vatableAmount: vatabtotal==null?0:vatabtotal,
        discount: dicountttotal??0,

        sellingPriceTotal: (totaltotal-deliveryChargdeTotal)==null?0:(totaltotal-deliveryChargdeTotal),

        remarks:  remarkTextEditing.text,
        createdBy:createdBy ,
        invoiceLinesCallcenter: invoiceline2,
        unitCost:unitCostTotal,
      );
      print("invoicedaaaaaaaaaaaaa$beforeInvoice");

      context.read<CreateInvoiceCubit>().postCreateInvoice(beforeInvoice);
    }}

  addToCartFunc(){
    if(isHolded){
      context.showSnackBarError("Please Press UnHold");
    }

    else{
      setState(() {
        isCreateCartLoading=true;
      });

      AddressCart address=AddressCart(
        country:listCustomer?.deliveryAddressModel?.country??"",
        state:  listCustomer?.deliveryAddressModel?.state??"",
        area: listCustomer?.deliveryAddressModel?.area??"",
        location: listCustomer?.deliveryAddressModel?.landmark??"",
        buildingNumber: listCustomer?.deliveryAddressModel?.buildingName??"",
      );

      List<CartLinesModel> cartLines=[];
      if(newList.isNotEmpty){
        for(var item in newList ){
          cartLines.add(CartLinesModel(
              image: item.image1,
              vat: item.vat,
              needApproval: item.needApproval,
              variantCode: item.variantCode,
              inventoryId: item.inventoryId,
              variantId: item.variantId,
              quantity: item.quantity,
              offerDetails: item.discountData,
              variantName: item.variantName,
              barcode: item.barcode,
              price: item.totalAmount??0/(item.quantity??1),
              totalPrice: ((item.quantity??1)*(item.sellingPrice??0)),
              isActive: true,
              deliverySlotId: item.deliverySlotId
          )) ;
        }

      }
      print("Address$address");
      print("AddressModelll$cartLines");
      context.read<CreateCartCubit>().postCreateCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,customerName:listCustomer?.customerName ,cartLinesModel: cartLines??[],address:address ));

    }
  }



  @override
   initState()  {
    newList.clear();
    variantList.clear();
    trn=TextEditingController(text: listCustomer?.taxId??"");
   if(widget.isRejectOrApprove){
     context.read<ApprovalListCallecentereTabCubit>().getApproveList();
   }
   else if(widget.isRejectOrApproveCart){
     context.read<ApproveCartListCubit>().getApproveCartList("");
   }
   else{
     if(invoicePage==true){

       context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId);
     }
     else if(createOrPatch){
       WidgetsBinding.instance?.addPostFrameCallback((_) {
         FocusScope.of(context).requestFocus(secondHeadFocusNode);
       });

       context.read<ReadOrdersCubit>().getOrdersRead(Variable.callOrderId);
     }else{
       print("the creation case");
       context.read<DeliveryAddressCubit>().getDeliveryAddressList();;}


   }



    super.initState();
  }

  refreshFunction(){

    setState(() {

    });
  }
  addressChangeFunc(List<DeliveryAddressData> addresslist){

    setState(() {

      BusinessMeta buisnessMetaObject=BusinessMeta();
      BusinessData buisnessDataObject=BusinessData();
      buisnessMetaObject=buisnessMetaObject.copyWith(

        street: addresslist[0].streetName,
        city: addresslist[0].city,

        country: addresslist[0].countryName??listCustomer?.customerMeta?.country??"",
        area:addresslist[0].streetName,
        altEmail:listCustomer?.customerMeta?.altEmail??"",
        altMobile:addresslist[Variable.grpValue].contact?? listCustomer?.customerMeta?.altMobile??"",

        facebook: listCustomer?.customerMeta?.facebook??"",
        fullname: listCustomer?.customerMeta?.fullname??"",
        instagram:listCustomer?.customerMeta?.instagram??"",
        landmark: listCustomer?.customerMeta?.landmark??"",
        snapchat: listCustomer?.customerMeta?.snapchat??"",

        whatsapp: listCustomer?.customerMeta?.whatsapp??"",
        zone: listCustomer?.customerMeta?.zone??"",
      );
      buisnessDataObject=buisnessDataObject.copyWith(
          businessMeta: buisnessMetaObject
      );
      listCustomer=listCustomer?.copyWith(
        customerMeta:buisnessMetaObject ,

        id: listCustomer?.id,
        isActive:listCustomer?.isActive,
        mobile:addresslist[0].contact??listCustomer?.mobile,
        email:listCustomer?.email,
        customerName:addresslist[0].fullName??listCustomer?.customerName,
        taxId:listCustomer?.taxId,


        businessUnit: listCustomer?.businessUnit,
        customerId: listCustomer?.customerId,
        dateJoined: listCustomer?.dateJoined,
        country: listCustomer?.country,
        isBusinessUser: listCustomer?.isBusinessUser,
        isDelete: listCustomer?.isDelete,
        legalUnit: listCustomer?.legalUnit,
        customerUserCode: listCustomer?.customerUserCode??"",


      );
    });
    print("ssssssssssssssssssss${listCustomer?.customerName}");
   refreshFunction();
  }

  Future<void> mainOntapBoolLoading()async{
  await Future.delayed(Duration(seconds: 1));
  setState(() {
    iscreateMainButtonLoading=false;
  });





  }

  void remarksPopupCallFunc(){
    if(isHolded){
      context.showSnackBarError("Please Press UnHold");
    }
    else{
      showDailogPopUp(
        context,
        ThirdPopUp(
          notesOrRemarks: notTextEditing,
          remarkTextEditing: remarkTextEditing,
        ),
      );
    }
  }
  int tabCount=1;
  bool isCountOrdecre=false;

  rowKeyPressEvent(RawKeyEvent event){
    FocusNode? currentfocusedNode = FocusManager.instance.primaryFocus;
  int limit=invoicePage?invoiceRead?.invoiceData!=null?7:3:createOrPatch?3:4;
  int startLimit=1;

    if (event is RawKeyDownEvent) {

      if(event.logicalKey==LogicalKeyboardKey.space){

        FocusScope.of(context).requestFocus(callcenterTabGolbFocusNode);
        if(isCountOrdecre==false){

          if(tabCount!=limit){
            tabCount=++tabCount;

            if(tabCount==limit){
              isCountOrdecre=true;
            }

          }
        }
        else{
          if(tabCount!=startLimit){
            tabCount=--tabCount;
            if(tabCount==startLimit){
              if(invoicePage!=true){FocusScope.of(context).requestFocus(secondHeadFocusNode);}

              isCountOrdecre=false;}
          }



        }



        // tabCount= tabCount== limit?--tabCount:++tabCount;
        setState(() {

        });

      }
     else  if(event.logicalKey==LogicalKeyboardKey.keyR){
        remarksPopupCallFunc();

      }
     else if(event.logicalKey==LogicalKeyboardKey.arrowLeft){
        FocusNode? focusedNode = FocusScope.of(context).focusedChild;
        if (focusedNode != null) {
          print('Currently focused node: ${focusedNode}');
        }

      }
     else{
       print("Elese casedddddddddddddddddd");
        if(invoicePage==true){

          if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
            tabCount=1;setState(() {

            });


            thirdHeadState.currentState?.   changeSelectedRow(1);

            // Handle arrow down key press
            // _changeSelectedRow(1);
          } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {

            thirdHeadState.currentState?.   changeSelectedRow(-1);

            // Handle arrow up key press
            // _changeSelectedRow(-1);
          }
          else if(event.logicalKey==LogicalKeyboardKey.enter ){
            switch (tabCount) {
              case 1:

                if(thirdHeadState.currentState?. invoiceselectedRow!=-1)
                  thirdHeadState.currentState?.  invoiceCheckBoxselectionFunc( thirdHeadState.currentState?. invoiceselectedRow??-1);
                break;
              case 2:
                invoicePostFunc();
                break;
              case 3:
                remarksPopupCallFunc();
                break;
              case 4:
                printNormalOntap();
                break;
              case 5:
                printOldFormatOntap();
                break;
              case 6:
                printDotMatrixOntap();
                break;
              case 7:
                addPatchInvoiceFunction();
                break;
            }



          }


        }
        else if(createOrPatch==true){
          print(" create patch tabCount$tabCount");
          if(event.logicalKey==LogicalKeyboardKey.enter ){
            switch (tabCount) {
              case 2:
                remarksPopupCallFunc();
                break;

                case 3:
                addPatchInvoiceFunction();
                break;

            }

          }

        }
        else {
          print("createtabCount$tabCount");
          if(event.logicalKey==LogicalKeyboardKey.enter ){
            switch (tabCount) {

              case 2:
                remarksPopupCallFunc();
                break;
              case 3:
                if(invoicePage!=true && createOrPatch!=true &&widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true &&newList.isNotEmpty )
                addToCartFunc();
                break; case 4:
                addPatchInvoiceFunction();
                break;

            }
          }

        }

      }
      //invoice page keyPress Event


      //





    }

  }

  @override
  Widget build(BuildContext context) {
    print("Current focus: ${FocusManager.instance.primaryFocus}");
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => VariantListCubit()),
        // BlocProvider(create: (context) => DeliveryAddressCubit()..getDeliveryAddressList()),
        // BlocProvider(create: (context) => PdfViewCubit()),
        // BlocProvider(create: (context) => OrderTypeCubit()..getOrderTypes()),


      ],
      child: MultiBlocListener(
  listeners: [
    BlocListener<CreateOrderCubit, CreateOrderState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {
            context.showSnackBarError("Loading");
          }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {
            if (data.data1) {
        context.showSnackBarSuccess(data.data2);
              clearFunction();
        mainOntapBoolLoading();
              Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(

                      fullscreenDialog: true,builder: (context) =>
                  CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex))));
            } else {
              context.showSnackBarError(Variable.errorMessege );
              setState(() {
                iscreateMainButtonLoading=false;
              });
            }

          });
  },
),

    BlocListener<ApproveOrderPostCubit, ApproveOrderPostState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {
            context.showSnackBarError("Loading");
          }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {
            print(data.data1);
            if (data.data1) {
              context.showSnackBarSuccess(data.data2);
              clearFunction();
              Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                      fullscreenDialog: true,builder: (context) =>
                  CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex))));

            } else {
              context.showSnackBarError(Variable.errorMessege );
            }
            setState(() {
              iscreateMainButtonLoading=false;
            });
          });
  },
),
    BlocListener<CreateApproveCartCubit, CreateApproveCartState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {
            context.showSnackBarError("Loading");
          }, error: () {
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {
            print("dataaaaaaaaaaaaaa");
            if (data.data1) {
              context.showSnackBarSuccess(data.data2);
              clearFunction();
              Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                      fullscreenDialog: true,builder: (context) =>
                  CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex))));

            } else {
              context.showSnackBarError(Variable.errorMessege );
            }
            setState(() {
              iscreateMainButtonLoading=false;
            });
          });
  },
),
    BlocListener<PdfViewCubit, PdfViewState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {
            context.showSnackBarError("Loading");
          }, error: () {
            setState(() {
              isPrintLoading=false;
              isOldPrintLoading=false;
              isPrintDotmatrixLoading=false;
            });
            context.showSnackBarError(Variable.errorMessege);
          }, success: (data) async {
           if(data.data1)
             setState(() async {
               PdfUrlModel model=PdfUrlModel();
               model=data.data2;
               setState(() {
                 isPrintLoading=false;
                 isOldPrintLoading=false;
                 isPrintDotmatrixLoading=false;
               });



               await launch(model?.pdfUrl??"");
             });
          });
  },
),
    BlocListener<ApprovalListCallecentereTabCubit, ApprovalListCallecentereTabState>(
      listener: (context, state) {
        state.maybeWhen(orElse: (){
          print("erroe");
        },
            success: (data){
            approveList=data.data;
              if(approveList.isNotEmpty){
                Variable.callApproveOrderId!=0?    context.read<ReadOrdersCubit>().getOrdersRead(Variable.callApproveOrderId):
                context.read<ReadOrdersCubit>().getOrdersRead(approveList[0].id??0);
              }


            }
        );
        // TODO: implement listener
      },
    ),
    BlocListener<CreateInvoiceCubit, CreateInvoiceState>(
  listener: (context, state) {
    state.maybeWhen(orElse: () {
      // context.
      context.showSnackBarError("Loading");
    }, error: () {
      // context.showSnackBarError(Variable.errorMessege);
    }, success: (data) {
      if (data.data1) {
        Variable.invoiceIdPay=data.data2;
        context.showSnackBarSuccess("Successfully invoiced");
        context.read<ReadInvoiceCubit>().getInvoiceRead(Variable.callOrderId);
      } else {
        context.showSnackBarError(Variable.errorMessege);
      }
      setState(() {
        isInvoiceLoading=false;
      });
    });
  },
),
    BlocListener<CreateCartCubit, CreateCartState>(
  listener: (context, state) {
    state.maybeWhen(orElse: () {
      // context.
      context.showSnackBarError("Loading");
    }, error: () {
      // context.showSnackBarError(Variable.errorMessege);
    }, success: (data) {
      if (data.data1) {
        context.showSnackBarSuccess(data.data2);
        context.read<ListCartOrderCubit>().getCArtOrderList();
        Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
                fullscreenDialog: true,builder: (context) =>
                CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex))));
      } else {
        context.showSnackBarError(Variable.errorMessege);
      }
      setState(() {
        isCreateCartLoading=false;
      });
    });
  },
),
    BlocListener<ApproveCartListCubit, ApproveCartListState>(
      listener: (context, state) {
        state.maybeWhen(orElse: (){
          print("erroe");
        },
            success: (data){
              List<ApproveCartListModel>approveCartList=data.data;
              if(approveCartList.isNotEmpty){
                Variable.cartHeadId!=0?context.read<ReadApproveCartCubit>().getApproveCartRead(Variable.cartHeadId):     context.read<ReadApproveCartCubit>().getApproveCartRead(approveCartList[0].id??0);
                Variable.cartHeadId=approveCartList[0].id??0;
              }



            }
        );
        // TODO: implement listener
      },
    ),
    BlocListener<PaymentProcessCubit, PaymentProcessState>(
      listener: (context, state) {
        print("state payment$state");
        state.maybeWhen(orElse: () {
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {

          print(data.data2);
          if (data.data1) {

            Variable.paymentIdPay=data.data2;
            // context.showSnackBarSuccess("Payment Created Successfully");
            context.read<PaymentStatusPostCubit>().postPaymentStatus(Variable.invoiceIdPay??0,data.data2??0,"COD");


            // Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) =>
            //         CallCenterMain(tabValue: 0)));
          } else {
            context.showSnackBarError(Variable.errorMessege);
            setState(() {
              iscreateMainButtonLoading=false;
            });
          }
        });
      },
    ),
    BlocListener<ReadInvoiceCubit, ReadInvoiceState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read orders");
            },
            success: (data) {
              setState(() {
                invoiceRead=data;


                if(invoiceRead?.invoiceData==null){
                  lineInvoice=List.from(data.linesCallcenter??[]);
                  Variable.orderIdPayment = invoiceRead?.orderCode ?? "";
                  orderIdPayment = invoiceRead?.orderCode ?? "";
                  Variable.total = invoiceRead?.total ?? 0.0;


                  trn.text=invoiceRead?.customerTrn??"";
                  totaltotal=invoiceRead?.total??0;
                  orderType.text=data?.orderType??"";
                  vatabtotal=invoiceRead?.vatableAmount??0;
                  qtyytotal=invoiceRead?.totalLineCount??0;
                  dicountttotal=invoiceRead?.discount??0;
                  vatTotal=invoiceRead?.vat??0;
                  oparator.text=invoiceRead?.createdBy??"";
                  deliveryChargdeTotal=invoiceRead?.deliveryCharge??0;
                  // vat.text=invoiceRead?.vat.toString()??"";
                  notTextEditing.text=invoiceRead?.notes??"";
                  remarkTextEditing.text=invoiceRead?.remarks??"";
                  orderType.text=invoiceRead?.orderType??"";
                  oparator.text=invoiceRead?.createdBy??"";
                  // channelCodeController.text=invoiceRead?.channelData?.channelCode??"";
                  isHolded=invoiceRead?.isHolded??false;
                  CustomerGroupModel model=CustomerGroupModel(
                    code:invoiceRead?.customerGrouCode??"null",

                  );
                  UserPreferences().saveCustomerGroupDatas(model);

                }
                else{
                  print("data?.invoiceData?.total${data?.invoiceData?.totalAmount}");
                  lineInvoice=List.from(data.invoiceData?.linesCallcenter??[]);
                  Variable.invoiceIdPay=data.invoiceData?.id;

                  Variable.orderIdPayment = data.invoiceData?.invoiceCode ?? "";
                  orderIdPayment = data.invoiceData?.invoiceCode ?? "";
                  Variable.total = data.invoiceData?.totalAmount ?? 0.0;
                  orderType.text=data?.invoiceData?.orderType??"";
                  trn.text== data?.invoiceData?.customerTrn??"";
                  totaltotal=data?.invoiceData?.totalAmount??0;
                  vatabtotal=data?.invoiceData?.vatableAmount??0;
                  qtyytotal=data?.invoiceData?.totalLineCount??0;
                  dicountttotal=data?.invoiceData?.discount??0;
                  oparator.text=data?.invoiceData?.createdBy??"";
                  deliveryChargdeTotal=data?.invoiceData?.deliveryCharge??0;
                  vatTotal=data?.invoiceData?.vat??0;
                  // vat.text=data?.invoiceData?.vat.toString()??"";
                  notTextEditing.text=data?.invoiceData?.notes??"";
                  remarkTextEditing.text=data?.invoiceData?.remarks??"";
                  orderType.text=data?.invoiceData?.orderType??"";
                  isHolded=data?.invoiceData?.isHolded??false;
                  CustomerGroupModel model=CustomerGroupModel(
                    code:data?.invoiceData?.customerGroupcode??"null",

                  );
                  UserPreferences().saveCustomerGroupDatas(model);
                  // channelCodeController.text=invoiceRead?.invoiceData?.channelData?.channelCode??"";

                }
                context.read<CustomerListCubit>().getCustomerList(invoiceRead?.customerCode??"");

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
    BlocListener<CustomerListCubit, CustomerListState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read orders");
            },
            success: (data) {
              setState(() {
                print("the data is heereskmdkmdkmakmkam $data");
                if(data.isNotEmpty){
                  userData=true;
                  isHideTwo=true;
                  logined=true;

                  listCustomer=CustomerList(
                      customerUserCode:data?[0]?.customerUserCode,
                      id: data![0]?.id,
                      isActive:data?[0]?.isActive,
                      mobile:data?[0]?.mobile,
                      email:data?[0]?.email,
                      businessData:data?[0]?.businessData,
                      businessUnit: data?[0]?.businessUnit,
                      customerId:data?[0]?.customerId,
                      dateJoined: data?[0]?.dateJoined,
                      isBusinessUser:data?[0]?.isBusinessUser,
                      isDelete:data?[0]?.isDelete,
                      legalUnit:data?[0]?.legalUnit

                  );
                  UserPreferencesCallCenter().saveUser(listCustomer!);
                }


              });

            }
        );
      },
    ),
        BlocListener<DeliveryAddressCubit, DeliveryAddressState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {
            // context.showSnackBarError("Loading");
          }, error: () {
            // context.showSnackBarError(Variable.errorMessege);
          }, success: (data) {
            print("datas is heresssssssssss");
            addresslist=data;
            var isExist=addresslist.where((element) =>createOrPatch?element.id==Variable.shippingId: element.defaultValue==true);
            if(isExist.isNotEmpty){
              int index=addresslist.indexWhere((element) =>createOrPatch?element.id==Variable.shippingId: element.defaultValue==true);
              Variable.grpValue=index;
              Variable.shippingId=data[index].id;
              DeliveryAddressModel addreesModel=DeliveryAddressModel(
                fullname:addresslist[index].fullName ,
                street: addresslist[index].streetName,
                city:  addresslist[index].city,
                state: addresslist[index].state,
                buildingNo:addresslist[index].buildingNo ,
                buildingName:addresslist[index].buildingName  ,
                latitude: addresslist[index].latitude,
                longitude:addresslist[index].longitude ,

                landmark:addresslist[index].landMark ,
                country: addresslist[index].countryName,
                area:addresslist[Variable.grpValue].streetName,



              );
              listCustomer=listCustomer?.copyWith(
                  deliveryAddressModel:addreesModel

              );
              print("SHIPPING${Variable.shippingId}");
              setState(() {

              });
            }

          });
  },
),


        // BlocListener<DeliveryAddressCubit, DeliveryAddressState>(
        //     listener: (context, state) {
        //       state.maybeWhen(
        //           orElse: () {},
        //           error: () {
        //             print("error..read Customer");
        //           },
        //           success: (data) async {
        //             print("deliveri adressssssssssssssssss");
        //             if (data.isNotEmpty) {
        //               print("data${data[0]}");
        //               Variable.shippingId=data[0].id;
        //               // addressChangeFunc(data);
        //             }
        //             setState(() {
        //
        //             });
        //
        //           });
        //     }),



    BlocListener<PaymentStatusPostCubit, PaymentStatusPostState>(
      listener: (context, state) {
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
;
            clearFunction();
context.showSnackBarSuccess("Payment Created Successfully");

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>
                    CallCenterMain(tabValue:pages.indexWhere((data)=>1==data.fixedIndex))));
          } else {
            context.showSnackBarError(Variable.errorMessege);
          }
        });
      },

    ),
        BlocListener<PatchOrdersCubit, PatchOrdersState>(
            listener: (context, state) {

              state.maybeWhen(orElse: () {
                // context.
                context.showSnackBarError("Loading");
              }, error: () {
                context.showSnackBarError(Variable.errorMessege);
              }, success: (data) {
                print("SUCSESS patch");
                if (data.data1) {
                  // context.showSnackBarSuccess(data.data2);
                  clearFunction();
                  mainOntapBoolLoading();
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          fullscreenDialog: true,builder: (context) =>
                          CallCenterMain(tabValue:Variable.isAdmin?1: 0)));

                } else {
                  context.showSnackBarError(Variable.errorMessege);
                  setState(() {
                    iscreateMainButtonLoading=false;
                  });
                }


              });
            },),
    BlocListener<CustomerListCubit,CustomerListState>(
        listener: (context,state){
          state.maybeWhen(
              orElse: () {},
              error: () {
                context.showSnackBarError("error !");
              },
              loading: () {
                context.showSnackBarNormal("Loading");
              },
              success: (data) {


                List<CustomerList> customerList=data;
                if(customerList.isNotEmpty){

                  // Variable.shippingId=data[0].id;
                  listCustomer=CustomerList(
                      customerUserCode:data?[0]?.customerUserCode,
                      id: data?[0]?.id,
                      isActive:data?[0]?.isActive,
                      mobile:data?[0]?.mobile,
                      email:data?[0]?.email,
                      customerName:data?[0].customerName,
                      taxId:data?[0].taxId,
                      businessData:data?[0]?.businessData,
                      customerMeta:data?[0]?.customerMeta,
                      businessUnit: data?[0]?.businessUnit,
                      customerId:data?[0]?.customerId,
                      dateJoined: data?[0]?.dateJoined,
                      isBusinessUser:data?[0]?.isBusinessUser,
                      isDelete:data?[0]?.isDelete,
                      legalUnit:data?[0]?.legalUnit

                  );
                  UserPreferencesCallCenter().saveUser(listCustomer!);
                  context.read<DeliveryAddressCubit>().getDeliveryAddressList();



                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(builder: (context) =>
                  //         CallCenterMain(tabValue: 1,)
                  //     ));
                  logined=true;
                  setState(() {

                  });

                }




              }
          );} ),

        BlocListener<ReadVariantCubit, ReadVariantState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read Variant");
                  },
                  success: (data) {
                    setState(() {
                      readData=data;


                      setState(() {
                      });
                    });
                  }
              );

            },),

        BlocListener<ReadOrdersCubit, ReadOrdersState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read orders");
                  },
                  success: (data) {

                    setState(() {
                      readOrders=data;
                      data?.linesCallcenter!= null
                          ? patchList = List.from(data?.linesCallcenter?? [])
                          : patchList = List.from([]);
                      lineCall=data.linesCallcenter;


                      for(var i=0;i<lineCall!.length;i++) {
                        setState(() {


                          // productName.text=lineCall![i].variantName?.toString().toTitleCase()??"";
                          // price.text=readOrders?.linesCallcenter![i].sellingPrice.toString()??"";
                          // uom.text=readOrders?.linesCallcenter![i].uomName.toString().toTitleCase()??"";
                          //
                          // qty.text=readOrders?.linesCallcenter![i].quantity.toString()??"";
                          // discount.text=readOrders?.linesCallcenter![i].discount.toString()??"";
                          // vatable.text=readOrders?.linesCallcenter![i].vatableAmount.toString()??"";
                          //
                          // total.text=readOrders?.linesCallcenter![i].totalAmount.toString()??"";


                        });
                      }
                      Variable.orderTypes=readOrders?.orderType??"";
                      Variable.shippingId=readOrders?.shippingId;
                      // channelCodeController.text=readOrders?.channelData?.channelCode??"";
                      orderTime.text=readOrders?.orderTime??"";
                      orderDate.text=readOrders?.orderdDate??"";
                      trn.text=readOrders?.customerTrn??"";
                      deliveryChargdeTotal=readOrders?.deliveryCharge??0;
                      totaltotal=readOrders?.total??0;
                      oparator.text=readOrders?.createdBy??'';
                      priceTotal=readOrders?.sellingPrice??0;
                      vatabtotal=readOrders?.vatableAmount??0;
                      qtyytotal=readOrders?.totalLineCount??0;
                      dicountttotal=readOrders?.discount??0;
                      customerUsercode.text=readOrders?.customerCode??"";
                      vatTotal=readOrders?.vat??0;

                      // vat.text=readOrders?.vat.toString()??"";
                      notTextEditing.text=readOrders?.notes??"";
                      remarkTextEditing.text=readOrders?.remarks??"";
                      orderType.text=readOrders?.orderType??"";
                      isHolded=readOrders?.isHolded??false;
                      orderId=readOrders?.orderCode??"";
                      CustomerGroupModel model=CustomerGroupModel(
                        code: readOrders?.customerGroupCode??"null",

                      );
                      UserPreferences().saveCustomerGroupDatas(model);
                      context.read<CustomerListCubit>().getCustomerList(customerUsercode.text);

                    });

                  }
              );

            },),
        BlocListener<ReadApproveCartCubit, ReadApproveCartState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read orders");
                  },
                  success: (data) {
                    print("Cart Read Approval ${data}");
                    setState(() {

                      data?.lines!= null
                          ? approveOrderCartList = List.from(data?.lines?? [])
                          : approveOrderCartList = List.from([]);
                      totaltotal=data.totalCartValue??0;
                      qtyytotal=approveOrderCartList?.length.toDouble()??0;
                      orderId=readOrders?.orderCode??"";
                      context.read<CustomerListCubit>().getCustomerList(data?.customerCode??'');

                    });

                  }
              );

            },),

        BlocListener<DeleteOrdersCubit, DeleteOrdersState>(
            listener: (context, state) {

              state.maybeWhen(
                  orElse: () {
                    context.showSnackBarError("Loading");
                  }, error: () {

              }, success: (data) {

                if (data.data1) {
                  context.showSnackBarSuccess(data.data2);
                  variantList.clear();
                  setState(() {
                    isDeleteLoading=false;
                  });
                  Navigator.pushReplacement(

                      context,
                      CupertinoPageRoute(
                          fullscreenDialog: true,builder: (context) =>
                       CallCenterMain(tabValue:Variable.isAdmin?1: 0)
                      ));


                } else {
                  context.showSnackBarError(Variable.errorMessege);
                  setState(() {
                    isDeleteLoading=false;
                  });
                }



              });

            }),

            ],


  child: RefreshIndicator(

    onRefresh:onRefresh ,
    child: Scaffold(

            body: RawKeyboardListener(
              autofocus: true,
              focusNode:callcenterTabGolbFocusNode,
              onKey: (RawKeyEvent event) {
                print("pressinggggggggggggggggggggg call center tab"
                    "${event.logicalKey}");

                rowKeyPressEvent(event);


              },
              child: Container(

                color: const Color(0xffE1E7ED),
              child: Stack(
                children: [

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin:widget.isRejectOrApprove ||widget.isRejectOrApproveCart? EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal * 1, ):EdgeInsets.zero,
                          child: Column(
                            children: [
                              FirstHead(
                                isRejectOrApproveCart:widget.isRejectOrApproveCart ||widget.isRejectOrApprove?true:false ,
                                orderType: orderType,
                                orderDate: orderDate,
                                counter: counter,
                                operator: oparator,
                                trn: trn,
                                onFocusModeChange: (){
                                  FocusScope.of(context).requestFocus(secondHeadFocusNode);
                                },
                                orderTime: orderTime,
                                storeName: storename,
                                channelCode: channelCodeController, refresh: refreshFunction, channelName: channelName,
                                channelId: channelId,
                                channelStockType: channelStockType,
                                channelTypeCode: channelTypeCode,
                                channelTypeId: channelTypeId,
                              ),
                              SizedBox(height: context.blockSizeVertical*0.5,),
                              if(invoicePage!=true && widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true)  SecondHead(ishold: isHolded,seconHeadFocusNode: secondHeadFocusNode,rrefreshFunction:refreshFunction,orderTypeValue: orderType.text??"",allCustomerId: allCostemerId,editChange: editChange),
                              if(invoicePage!=true && widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true ) SizedBox(height: context.blockSizeVertical*0.2,),
                              widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true?    Expanded(
                                child: ThirdHead(
                                  refresh: refreshFunction,

                                  negotiationObject: negotationObject,
                                  historyEnable: changeHistoryEnable,
                                  negotationText: negotiationText,

                                  isHold: isHolded,
                                  selectedProductName: selectedProductName,
                                  barcode: selectedBarcode,
                                  allCostemerId: allCostemerId,
                                  totalValue: calCulation,
                                  editOrder: widget.editOrder,
                                  invoiceOrder: widget.invoiceOrder,
                                  table: chaneTable,
                                  vat: vat,
                                  stock: stock,
                                  discount: discount,
                                  price: price,
                                  productName: productName,
                                  qty: qty,
                                  total: total,
                                  uom: uom,
                                  vatable: vatable,
                                  key: thirdHeadState,
                                ),
                              ):widget.isRejectOrApprove?Expanded(
                                child: ApproveTable(
                                  refresh: refreshFunction,
                                  allCostemerId: allCostemerId,
                                 totalValue:  calCulation,
                                  orderLineRead: patchList, historyEnable:changeHistoryEnable,
                                ),
                              ):Expanded(
                                child: ApproveCartTable(
                                  refresh: refreshFunction,
                                  allCostemerId: allCostemerId,
                                 totalValue:  calCulation,
                                  orderLineRead: approveOrderCartList??[], historyEnable:changeHistoryEnable,
                                ),
                              ),

                              // Spacer(),
                              Visibility(
                                visible:widget.isRejectOrApprove==true?approveList.isEmpty?false:patchList.isEmpty?false:true:createOrPatch==true?patchList.isEmpty?false:true:widget.isRejectOrApproveCart?approveOrderCartList?.isEmpty==true?false:true:invoicePage?invoiceline.isEmpty?false:true:true,
                                child: TableBottomHead(
                                  tabActiveCount: tabCount,
                                  approveOrderCartLis: approveOrderCartList??[],

                                  refresh: refreshFunction,
                                  totalValue: calCulation,
                                  isRejectOrApproveCart: widget.isRejectOrApproveCart,
                                  isRejectOrApprove: widget.isRejectOrApprove,
                                  isInvoiceLoading: isInvoiceLoading,
                                  deliveryChargdeTotal:deliveryChargdeTotal.toString(),
                                  isholded: isHolded,
                                  invoiceOrder: widget.invoiceOrder,
                                  editOrder: widget.editOrder,
                                  orderId: orderId??"",
                                  invoicebuttonLabel:invoiceRead?.invoiceData!=null?"INVOICED":"INVOICE THE ORDER" ,
                                  totalDiscount: dicountttotal.toString()??"",
                                  totalQty: qtyytotal.toString()??"",
                                  totalVatable: vatabtotal.toString()??"",
                                  totalPrice: totaltotal.toString()??"",
                                  notesOrRemark: notTextEditing,
                                    remarkTextEditing:remarkTextEditing,
                                  onTapInvoice: () {
                                    invoicePostFunc();
                                  },

                                ),
                              ),
                              SizedBox(height: context.blockSizeVertical*8.3,),
                            ],
                          ),
                        ),
                        // SizedBox(width: context.blockSizeHorizontal*1,),

                        SizedBox(
                          height: context.blockSizeVertical*85,
                          width: context.blockSizeHorizontal*19.4,
                          child:  AbsorbPointer(
                         absorbing:    isPopuApproveIgnore,
                            child: RightSideScreen(
                              isRejectOrApproveCart: widget.isRejectOrApproveCart,
                              isRejectOrApprove: widget.isRejectOrApprove,
                              totalValue: calCulation,
                              ordrType: orderType,

                              negotiationObject: negotationObject,
                              addPatchInvoiceFunction:addPatchInvoiceFunction,
                              totaCArtValue: totaltotal,
                              editChange: editChange,
                              negotationText: negotiationText,
                              priceDataChange: priceDataChange,


                              allCostemerId: allCostemerId,
                              stock: stock,
                              isChangeAllHistory:isHolded?false:ishistoryEnable,
                              customerUsercode: customerUsercode,
                              productName: selectedProductName,
                              barcode: selectedBarcode,
                              controller1: minGP,
                              controller2: avgGP,
                              controller3: maxGP,
                              controller4: targetGP,
                              text: text,
                            ),
                          )
                        ),
                      ],
                    ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: widget.isRejectOrApprove ||widget.isRejectOrApproveCart? EdgeInsets.only(left: context.blockSizeHorizontal * 1, ):EdgeInsets.zero,
                      height: context.blockSizeVertical*6.5,

                      // color: const Color(0xffF8F9FA),
                      child: Row(
                        children: [
                          Expanded(

                            child: Container(
                              padding:EdgeInsets.symmetric(horizontal:   context.blockSizeHorizontal*1,),
                              color: const Color(0xffF8F9FA),
                              child: Row(
                                children: [

                                  if(invoicePage!=true && widget.isRejectOrApproveCart!=true && widget.isRejectOrApprove!=true )
                                    CommonButtonGradiant(
                                    // isHold: isHolded,
                                    margin: EdgeInsets.zero,
                                    width: context.blockSizeHorizontal*6,
                                    height: context.blockSizeVertical*5,
                                    label:isHolded==true?"UNHOLD":"HOLD" ,
                                    onTap: (){
                                      setState(() {

                                        isHolded=!isHolded;
                                      });

                                    },

                                  ),

                                  // ButtonTextOnly(
                                  //   onTap: (){
                                  //     isHolded=true;
                                  //     print("isHold${notsOrRemarks.text}");
                                  //   },
                                  //     width: context.blockSizeHorizontal*6,
                                  //     height: context.blockSizeVertical*5,
                                  //     text: "HOLD", color1: 0xffFFFFFF, color2: 0xff6B7B96),
                                  SizedBox(width: context.blockSizeHorizontal*.27,),
                                  if(invoicePage!=true && widget.isRejectOrApproveCart!=true && widget.isRejectOrApprove!=true )       CommonButtonGradiant(
                                    margin: EdgeInsets.zero,
                                    isInActive: isHolded,
                                    isIndiactor: isDeleteLoading,
                                    width: context.blockSizeHorizontal*6,
                                    height: context.blockSizeVertical*5,
                                    label:  createOrPatch?"DELETE":"CLEAR" ,
                                    onTap: (){
                                      if(isHolded){
                                        context.showSnackBarError("Please Press UnHold");
                                      }else{


                                        showDailogPopUp(
                                            context,
                                            //     AdminCreationUser()
                                            LogoutPopup(
                                              message:createOrPatch? "Are you sure you want to delete the order?":"Are you sure you want to clear the order",
                                              // table:table,
                                              // clear:clear(),

                                              onPressed:()  {
                                                if( createOrPatch==true)
                                                {

                                                  setState(() {
                                                    isDeleteLoading=true;
                                                  });
                                                  context.read<DeleteOrdersCubit>().deleteOrders(Variable.callOrderId);
                                                }
                                                else{
                                                  clearFunction();
                                                }

                                              },



                                            ));




                                      }


                                    },

                                  ),
                                  // ButtonTextOnly(
                                  //     width: context.blockSizeHorizontal*6,
                                  //     height: context.blockSizeVertical*5,
                                  //     text: "CLEAR", color1: 0xffFFFFFF, color2: 0xff6B7B96,
                                  // onTap: (){
                                  //   context.read<DeleteOrdersCubit>().deleteOrders(Variable.callOrderId);
                                  //   print("deleted ${Variable.callOrderId}");
                                  // },),
                                  SizedBox(width: context.blockSizeHorizontal*.27,),

                                  const Spacer(),
                        if(invoicePage==true )          CommonButtonGradiant(
                          isFocus: tabCount==3?true:false,
                          margin: EdgeInsets.zero,
                                    // margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                                    label:"Remarks" ,
                                    isInActive:isHolded ,
                          width:context.blockSizeHorizontal*9,
                          height: context.blockSizeVertical*5.2,
                                    onTap: (){
                                      remarksPopupCallFunc();


                                      // if(isHolded){
                                      //   context.showSnackBarError("Please Press UnHold");
                                      // }
                                      // else{
                                      //   showDailogPopUp(
                                      //     context,
                                      //     ThirdPopUp(
                                      //       notesOrRemarks: notTextEditing,
                                      //       remarkTextEditing: remarkTextEditing,
                                      //     ),
                                      //   );
                                      // }
                                    },

                                  ),
                                  SizedBox(width: context.blockSizeHorizontal*.27,),

                              if(  invoicePage &&   invoiceRead?.invoiceData!=null)...[
                                CommonButtonGradiant(
                                  isFocus: tabCount==4?true:false,
                                  isIndiactor:isPrintLoading,

                                  margin: EdgeInsets.zero,
                                  onTap: () async {
                                    printNormalOntap();
                                  },
                                  width:context.blockSizeHorizontal*9,
                                  height: context.blockSizeVertical*5.2,
                                  label: "PRINT",),
                                SizedBox(width: context.blockSizeHorizontal*.27,),
                                CommonButtonGradiant(
                                  isFocus: tabCount==5?true:false,
                                  isIndiactor:isOldPrintLoading,

                                  margin: EdgeInsets.zero,
                                  onTap: () async {
                                    printOldFormatOntap();

                                  },
                                  width:context.blockSizeHorizontal*9,
                                  height: context.blockSizeVertical*5.2,
                                  label: "PRINT OLD FORMAT",), SizedBox(width: context.blockSizeHorizontal*.27,),

                                CommonButtonGradiant(
                                  isFocus: tabCount==6?true:false,
                                  isIndiactor:isPrintDotmatrixLoading,

                                  margin: EdgeInsets.zero,
                                  onTap: () async {

                                    printDotMatrixOntap();

                                  },
                                  width:context.blockSizeHorizontal*9,
                                  height: context.blockSizeVertical*5.2,
                                  label: "PRINT DOT MATRIX",),
                              ],


                                  SizedBox(width: context.blockSizeHorizontal*.27,),


                                  if(invoicePage!=true && createOrPatch!=true &&widget.isRejectOrApprove!=true && widget.isRejectOrApproveCart!=true &&newList.isNotEmpty )
                                    CommonButtonGradiant(
                                      isFocus: tabCount==3?true:false,
                                    isIndiactor: isCreateCartLoading,
                                    margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                                    label:"ADD TO CART" ,
                                    isInActive:isHolded ,
                                    height: context.blockSizeVertical*4.5,
                                    width: context.blockSizeHorizontal*8.5 ,
                                    onTap: (){
                                      if(isHolded){
                                        context.showSnackBarError("Please Press UnHold");
                                      }

                                      else{
                                        setState(() {
                                          isCreateCartLoading=true;
                                        });

                                        AddressCart address=AddressCart(
                                          country:listCustomer?.deliveryAddressModel?.country??"",
                                          state:  listCustomer?.deliveryAddressModel?.state??"",
                                          area: listCustomer?.deliveryAddressModel?.area??"",
                                          location: listCustomer?.deliveryAddressModel?.landmark??"",
                                          buildingNumber: listCustomer?.deliveryAddressModel?.buildingName??"",
                                        );

                                        List<CartLinesModel> cartLines=[];
                                        if(newList.isNotEmpty){
                                          for(var item in newList ){
                                            cartLines.add(CartLinesModel(
                                              image: item.image1,
                                              vat: item.vat,
                                              needApproval: item.needApproval,
                                              variantCode: item.variantCode,
                                              inventoryId: item.inventoryId,
                                              variantId: item.variantId,
                                              quantity: item.quantity,
                                              offerDetails: item.discountData,
                                                variantName: item.variantName,
                                                barcode: item.barcode,
                                                price: item.totalAmount??0/(item.quantity??1),
                                              totalPrice: ((item.quantity??1)*(item.sellingPrice??0)),
                                              isActive: true,
                                              deliverySlotId: item.deliverySlotId
                                            )) ;
                                          }

                                        }
                                        print("Address$address");
                                        print("AddressModelll$cartLines");
                                        context.read<CreateCartCubit>().postCreateCart(CreateCartModel(customerCode: listCustomer?.customerUserCode,customerName:listCustomer?.customerName ,cartLinesModel: cartLines??[],address:address ));

                                      }
                                    },

                                  ),
                               if(widget.isRejectOrApprove ||widget.isRejectOrApproveCart )                      Visibility(
                                 visible:widget.isRejectOrApprove==true ?patchList.isEmpty?false:true:widget.isRejectOrApproveCart?approveOrderCartList?.isEmpty==true?false:true:true,
                                 child: CommonButtonGradiant(
                                      isIndiactor: isCreateCartLoading,
                                      margin: EdgeInsets.only(top: context.blockSizeVertical*.75),
                                      label:"Reset" ,
                                     isHold: widget.isRejectOrApprove==true ?patchList.isEmpty?true:false:widget.isRejectOrApproveCart?approveOrderCartList?.isEmpty==true?true:false:false ,
                                     width: context.blockSizeHorizontal*6,
                                      height: context.blockSizeVertical*5,
                                      onTap: (){
                                      if(widget.isRejectOrApprove==true ?patchList.isEmpty?false:true:widget.isRejectOrApproveCart?approveOrderCartList?.isEmpty==true?false:true:true)  {
                                        if(widget.isRejectOrApprove){
                                          createOrPatch=true;invoicePage=false;
                                          Variable.callOrderId=int.tryParse(readOrders?.id.toString()??"")??0;
                                          context.read<ReadOrdersCubit>().getOrdersRead(readOrders?.id??0);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>
                                                  CallCenterMain(tabValue:pages.indexWhere((data)=>2==data.fixedIndex),editOrder: true,isRejectOrApprove: true,)
                                              ));
                                        }
                                        else if(widget.isRejectOrApproveCart ){
                                          createOrPatch=false;invoicePage=false;
                                          context.read<ReadApproveCartCubit>().getApproveCartRead(Variable.cartHeadId);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>
                                                  CallCenterMain(tabValue:pages.indexWhere((data)=>3==data.fixedIndex),editOrder: false,isRejectOrApprove: false,isRejectOrApproveCart: true,)
                                              ));

                                        }
                                      }



                                      },

                                    ),
                               ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: context.blockSizeHorizontal*1,),

                   if(widget.isRejectOrApprove==true?patchList.isEmpty?false:true:widget.isRejectOrApproveCart?approveOrderCartList?.isEmpty==true?false:true:true) ...[//this condition fpr removing the button in order approve and cart approve when thei list is empty
                     AbsorbPointer(
                       absorbing:    isPopuApproveIgnore,
                       child: CommonButtonGradiant(isIndiactor: iscreateMainButtonLoading,
                           isFocus: invoicePage?tabCount==7?true:false:createOrPatch?tabCount==3?true:false:tabCount==4?true:false,

                           margin: EdgeInsets.zero,
                           width: context.blockSizeHorizontal*19.2,
                           height: context.blockSizeVertical*6,
                           isHold:widget.isRejectOrApprove?patchList.any((element) => element.needApproval==true)?true:false:widget.isRejectOrApproveCart?approveOrderCartList!.any((element) => element.needApproval==true)?true:false:invoicePage? invoiceRead?.invoiceData!=null?false:true:false,

                           label:createOrPatch?"UPDATE AND CONTINUE":invoicePage?"PAYMENT AND CONTINUE":"SAVE AND CONTINUE",onTap: ()async{

                             // addPatchInvoiceFunction();
                             String deliverAddress= "${listCustomer?.deliveryAddressModel?.fullname},${listCustomer?.deliveryAddressModel?.street},${listCustomer?.deliveryAddressModel?.area},${listCustomer?.deliveryAddressModel?.state},${listCustomer?.deliveryAddressModel?.country}";
                             SharedPreferences prefs = await SharedPreferences.getInstance();
                             String? channelCode = prefs.getString('channel_code');
                             String? createdBy = prefs.getString('username');
                             String? customerGroupCode = prefs.getString('customerGroupCode');

                             if(!iscreateMainButtonLoading){
                               if(widget.isRejectOrApprove==true){


                                 List<ApproveLinesModel>list=[];
                                 if(patchList.any((element) => element.needApproval==true)){
                                   context.showSnackBarError("Please choose the approval status");
                                 }
                                 else{
                                   setState(() {
                                     iscreateMainButtonLoading=true;
                                   });
                                   if(patchList.isNotEmpty==true){

                                     for(var item in patchList){
                                       list.add(ApproveLinesModel(
                                         lineId: item.id,
                                         sellingPrice: item?.sellingPrice??0,
                                         unitCost: item.unitcost??0,
                                         amount: item.sellingPrice??0,
                                         vatableAmount: item.vatableAmount??0,
                                         vat:item.vat,
                                         totalAmount: item.totalAmount,
                                         reasonApprovalObject: item.reasonOfApprovalReject??"",
                                         isApproved: item.isApproved,
                                         isActive: true,
                                         variantName: item.variantName,
                                         variantId: item.variantId,
                                         approvalStatus: item.approvalStatus,
                                         quantity: item.quantity??0,
                                         oldQuantity: item.oldQty??0,
                                       ));

                                     }
                                   }
                                   ApproveOrderModel model=ApproveOrderModel(
                                     orderId: readOrders?.id,
                                     vatableAmount: vatabtotal,
                                     vat: vatTotal,
                                     total: totaltotal,
                                     unitCost: readOrders?.unitCost,
                                     sellingPrice:priceTotal,
                                     reasonApprovalObject: "",
                                     lines: list??[],
                                   );
                                   print("Searching model$model");
                                   context.read<ApproveOrderPostCubit>().postApproveOrderCreate(model);
                                 }


                               }
                               else if(widget.isRejectOrApproveCart){

                                 List<ApproveCartLinesModel>list=[];
                                 if(approveOrderCartList!.any((element) => element.needApproval==true)){
                                   context.showSnackBarError("Please choose the approval status");
                                 }
                                 else{
                                   setState(() {
                                     iscreateMainButtonLoading=true;
                                   });
                                   print("approval Status$approveOrderCartList");
                                   if(approveOrderCartList?.isNotEmpty==true){


                                     for(var item in approveOrderCartList!){
                                       list.add(ApproveCartLinesModel(

                                         isApproved: item.isApproved,
                                         isActive: true,
                                         approvalStatus: item.approvalStatus,
                                         quantity: item.quantity??0,
                                         price: item.price,
                                         cartId: item.id,

                                         needApproval: false,
                                         approvedby: "",reasonOfApprovalReject: item.reasonApprovalObject,
                                       ));

                                     }
                                   }
                                   SharedPreferences pref = await SharedPreferences.getInstance();

                                   var   fullName = pref.getString("username")??"";
                                   ApproveCartModel model=ApproveCartModel(
                                     cartHeadId:Variable.cartHeadId,
                                     lines: list??[],
                                     approvedBy: fullName,
                                   );
                                   print(model);
                                   context.read<CreateApproveCartCubit>().postApproveCart(model);
                                 }

                               }

                               else{


                                 if(invoicePage==true){
                                   invoiceRead?.invoiceData!=null?
                                   showDailogPopUp(
                                     context,
                                     TenthPopUp(
                                       processId: invoiceRead?.invoiceData?.id,
                                       amountTotal: totaltotal.toString(),
                                       orderId: orderIdPayment,
                                     ),
                                   ):context.showSnackBarError("Please Invoice The Order");



                                 }
                                 else{
                                   if(addresslist.isEmpty){
                                     context.showSnackBarError("Please create a deleivery address");
                                   }
                                   else if(Variable.shippingId==null){
                                     context.showSnackBarError("Please Select delivery address");
                                   }
                                   else if(createOrPatch==true){
                                     setState(() {
                                       iscreateMainButtonLoading=true;
                                     });
                                     final double unitCostTotal=patchList.fold(0, (sum, element) {
                                       return sum +=  double.tryParse(element.unitcost.toString())??0;
                                     });
                                     ReadOrderCallCenter patch=ReadOrderCallCenter(
                                         shippingId: Variable.shippingId,
                                         billingId: Variable.shippingId,
                                         discount: dicountttotal,
                                         vatableAmount: vatabtotal,
                                         vat: vatTotal,
                                         total: totaltotal,
                                         customerPhoneNumber: listCustomer?.customerMeta?.whatsapp?.isNotEmpty==true? listCustomer?.customerMeta?.whatsapp:listCustomer?.phoneNumber,
                                         customerGroupCode: customerGroupCode,
                                         unitCost: unitCostTotal,
                                         sellingPrice: priceTotal,
                                         notes: notTextEditing.text,
                                         remarks: remarkTextEditing.text,
                                         isHolded: isHolded,
                                         deliveryCharge: deliveryChargdeTotal,
                                         deliveryAddress:  deliverAddress,
                                         deliveryAddressFullData:listCustomer?.deliveryAddressModel ,

                                         createdBy: createdBy,

                                         patchOrderLines: patchList,
                                         needApproval: patchList.any((item)=>item.needApproval==true &&item.isActive==true)

                                     );
                                     print("patch model$patch");



                                     context.read<PatchOrdersCubit>().postOrderPatch(Variable.callOrderId,patch);

                                   }
                                   else if(createOrPatch!=true && invoicePage!=true){
                                     setState(() {
                                       iscreateMainButtonLoading=true;
                                     });
                                     channelId.text = prefs.getString('channelId')??"";
                                     channelTypeCode.text = prefs.getString('channelTypeCode')??"";
                                     channelTypeId.text = prefs.getString('channelTypeId')??"";
                                     channelStockType.text = prefs.getString('channelStockType')??"";
                                     channelName.text = prefs.getString('channelName')??"";
                                     channelCodeController.text = prefs.getString('channel_code')??"";
                                     String? inventoryId = prefs.getString('invId');
                                     var taxNum = prefs.getString('taxNum')??"";
                                     final double unitCostTotal=newList.fold(0, (sum, element) {
                                       return sum +=  double.tryParse(element.unitCost.toString())??0;
                                     });
                                     CreateOrder create = CreateOrder(
                                         total: totaltotal,
                                         vat: vatTotal,
                                         customerGroupCode: customerGroupCode,
                                         deliveryCharge: deliveryChargdeTotal,
                                         // vatTotal,
                                         vatableAmount: vatabtotal,
                                         customerPhoneNumber: listCustomer?.customerMeta?.whatsapp?.isNotEmpty==true? listCustomer?.customerMeta?.whatsapp:listCustomer?.phoneNumber,

                                         remarks: remarkTextEditing.text,
                                         notes: notTextEditing.text,
                                         sellingPrice: priceTotal,
                                         channelCode: channelCodeController.text,
                                         channelTypeId: channelTypeId.text,
                                         channelTypeCode: channelTypeCode.text,
                                         channelName: channelName.text,
                                         channelId: channelId.text,
                                         trnNumber: taxNum,
                                         channelStockType: channelStockType.text,
                                         discount: dicountttotal,
                                         inventoryId: inventoryId,
                                         needApproval:newList.any((item)=>item.needApproval==true),

                                         customerCode: listCustomer?.customerUserCode,
                                         customerMailId: listCustomer?.email,
                                         orderType: orderType.text.toLowerCase(),
                                         customerName: listCustomer?.customerName,
                                         customerTrnNumber: trn.text,
                                         isHolded: isHolded,
                                         unitCost:unitCostTotal??0,
                                         createdBy: createdBy,
                                         shippingAddressId: Variable.shippingId,
                                         billingAddressId: Variable.shippingId,

                                         deliveryAddress: deliverAddress,
                                         deliveryAddressFullData: listCustomer?.deliveryAddressModel,
                                         orderLinesCallcenter: newList);
                                     print("model$create");   context.read<CreateOrderCubit>().postCreateOrder(create);
                                   }
                                 }


                               }
                             }




                           }

                       ),
                     ),
                     SizedBox(width:context.blockSizeHorizontal*1,)
                   ]else...[
                     SizedBox(width: context.blockSizeHorizontal*1,),
                     Container(
                       width: context.blockSizeHorizontal*19.2,
                     )

                   ]



                        ],
                      ),
                    ),
                  ),
                  if(widget.isRejectOrApprove || widget.isRejectOrApproveCart)...[
                    Positioned(
                        top: MediaQuery.of(context).size.height/2.7,
                        left: 0,
                        child:
                        CommonButtonGradiant2(
                          quarterTurns: -1,
                          isIcon: true,
                          // image: LeftMenuSvg().downwardArrow,
                          icon: Icons.arrow_drop_down_outlined,


                          margin: EdgeInsets.zero,
                          width: context.blockSizeHorizontal*2.5,
                          height: context.blockSizeVertical*19,
                          label:"VIEW ORDERS",
                          linearGraidiant:LinearGradient(
                              colors:[ Color(0xff6F91CB),
                                Color(0xff6F91CB),

                                //add more colors for gradient
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter, //end of the gradient color
                              stops: [ 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                          ),
                          onTap:(){
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (ctx) =>  widget.isRejectOrApprove?     ApproveRejectView(onPress: (){
                                    setState(() {
                                      Navigator.pop(context);
                                      // isPopuApproveIgnore=false;
                                    });
                                  },): ApproveRejectCartView(onPress: (){
                                    setState(() {
                                      // Navigator.pop(context);
                                      // isPopuApproveIgnore=false;
                                    });
                                  },)
                              );
                              // isPopuApproveIgnore=true;
                            });
                          }






                          ,)),
                    // if(isPopuApproveIgnore)
                    //   Positioned(
                    //       top: 0 ,
                    //       left: 0,
                    //       child:ApproveRejectView(onPress: (){
                    //         setState(() {
                    //           isPopuApproveIgnore=false;
                    //         });
                    //       },)
                    //
                    //   ),
                  ]

                ],
              ),
              ),
            ),
          ),
  ),




),
    );
  }
}

// Widget tableRowTextStyle{
//   return
// }