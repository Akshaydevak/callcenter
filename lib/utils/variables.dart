import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/model/channel_model.dart';

class Variable{
 static bool selected1=true;
 static  int selected = 0;
 static  int cartHeadId= 0;
 static  int grpValue = 0;
 static  bool isAdmin = false;
 static bool iswishListAdd=false;
 static  bool selected2=false;
 static bool selected3=false;
 static bool selected4=false;
 static  bool selected5=false;
 static  bool selected6=false;
 static bool selected7=false;
 static bool selected8=false;
  static String  errorMessege="error";
  static String  email="";
  static String  invemail="";
  static String  invcontact="";
  static String name="";
  static String invName="";
  static String  trn="";
  static String  address="";
  static String  vendorAddress="";
  static String  inventory_ID="";
  static String  customerCode="";
  static String  channelCode="";
  static String organisationCode="";
  static String  invoiceCode="";
  static String orderId="";
  static String vendorId="";
  static String invoiceId="";
  static String profileName="";
  static String customerId="";
  static String legalEntity="";
  static double? averageBasketValue=0;

  static int  tableindex=0;
  static bool  tableedit=false;
  static int? verticalid=0;
  static int? returnVerticalId=1;
  static int? invoiceListId=1;
  static bool? tableClear=false;
  static int verticalScrollIndex=0;
  static  List<int?>subIndex=[0,0,0,0,0,0,0];


  /////CALL CENTER
static String mobileNo="";
static String variantName="";
static int variantid=0;
static String  orderTypes="";
static int callOrderId=0;
static int callApproveOrderId=0;
static int indexVariantList=0;
static String? code;
static String? type;
static String? dateTypeSelection;
static int? shippingId;
static int? invoiceIdPay;
static int? paymentIdPay;
static String? orderIdPayment;
static ChannelCreateModel channelObject=ChannelCreateModel();
static double? total;
}