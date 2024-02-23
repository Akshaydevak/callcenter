import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/OrderInvoice/OrderInvoice.dart';
import 'package:salesapp/Callcenter_Screens/common/focus_node.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/svg/leftmenu_svg.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Invoice_Orders_Cubit/read_invoice_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Orders_Cubit/read_orders_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/frequently_recommendation/frequently_recommendation_cubit.dart';
import 'package:salesapp/Cubit/deliver_slot/delivery_slot_cubit.dart';
import 'package:salesapp/Cubit/hub_cubit/hub_list_cubit.dart';
import 'package:salesapp/Cubit/negotiation/negotiation_post_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import 'package:salesapp/Models/Call_Center_Model/hub_model/hub_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/main.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Widgets/popupinputfield.dart';
import '../../utils/variables.dart';
import '../OrderHistoryScreen/Table_Order_History.dart';
import '../dashboard/screens/popUps/PopUp10.dart';
import 'CallCenterTabScreen.dart';
import 'SecondHead.dart';

class ThirdHead extends StatefulWidget {
  final Function (List<ReadVarriant>)? table;
  final Function (double qty,double total,double discount,double totalPricee,double priceTotal,double vatTotal,double deliveryCharge)? totalValue;
  final TextEditingController productName;
  final TextEditingController? stock;
  final TextEditingController? allCostemerId;
  final TextEditingController price;
  final TextEditingController uom;
  final TextEditingController qty;
  final TextEditingController vat;
  final TextEditingController discount;
  final TextEditingController vatable;
  final TextEditingController total;
  final TextEditingController negotationText;
  final bool editOrder;
  final bool isHold;
  final bool invoiceOrder;
  final Function(bool) historyEnable;
  final TextEditingController? barcode;
  final TextEditingController? selectedProductName;
  final TextEditingController? allHistId;
   NegotiationOutPutModel negotiationObject;
  final Function refresh;


   ThirdHead({Key? key,
    required this.productName,
    required this.price,
    required this.uom,
    required this.qty,
    this.stock,
    required this.vat,
    required this.discount,
    required this.vatable,
    required this.total, this.table,  this.editOrder=false,  this.invoiceOrder=false, this.totalValue, this.allCostemerId, this.barcode, this.selectedProductName, this.allHistId, required this.isHold,required this.historyEnable, required this.negotationText, required this.negotiationObject, required this.refresh,
  }) : super(key: key);

  @override
  State<ThirdHead> createState() => ThirdHeadState();
}

class ThirdHeadState extends State<ThirdHead> {
  bool checkbox=false;
  bool editing=false;
  bool isAddButtonLoading=false;
  FocusNode priceFocusNode=FocusNode();
  FocusNode countFocusNode=FocusNode();
  TextEditingController discountType=TextEditingController();
  int? tableIndex=0;
  int? selectedRow;
  ReadVarriant variant =  const ReadVarriant();
  LinesCallcenter readdata =  const LinesCallcenter();
  LinesInvoiceCallcenter invoiceData =   LinesInvoiceCallcenter();
  List<LinesCallcenter> orderLineRead=List.from([]);
  List<LinesInvoiceCallcenter> invoiceOrder=List.from([]);
  List multipleSelected = [];
  TextEditingController vatablePrize=TextEditingController();
  double pricetotal=0;
  // NegotiationOutPutModel negotationObject=NegotiationOutPutModel();
  List<HubResponseModel> hubresponseList=List.from([]);
  String hubCode="";
  String hubNAme="";
  ReadVarriant? readData;
  int invoiceselectedRow = -1;
FocusNode thirdHeardActiveFocusNode=FocusNode();
editchage(){
 setState(() {
   editing=false;
   selectedRow=-1;
 });

}

prizeDatachage( String val){
 setState(() {
   widget.price.text=val;
 });

}



  void changeSelectedRow(int direction) {
    setState(() {
      // Adjust the selected row based on the arrow key direction
      invoiceselectedRow = (invoiceselectedRow + direction).clamp(0, invoiceline.length - 1);
      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }

 invoiceCheckBoxselectionFunc(int selectedIndex){
   setState(() {

     widget?.allCostemerId?.text=invoiceline[selectedIndex].id.toString();
     var isInvoiced=invoiceline[selectedIndex!].isInvoiced;

     isInvoiced=!isInvoiced!;
     print(invoiceline.length);
     print(tableIndex);
     invoiceline[selectedIndex!]=invoiceline[selectedIndex!].copyWith(
         isInvoiced: isInvoiced
     );
     checkBoxClickSelectUnselct(invoiceline);

   });
   allTotalCalculation();
 }

clear(){
  orderLineRead.clear();
  invoiceOrder.clear();
  variantList.clear();
  widget.vatable.text="";
  setState(() {

  });
}
getNegotiation() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
String? token = prefs.getString('token');
String customerCode = prefs.getString('customerGroupCode') ?? "";


  List<CartLineModel> list=[];
  if(createOrPatch==true){
    if(orderLineRead.isNotEmpty==true){
      for(var i=0;i<orderLineRead.length;i++){
        list.add(CartLineModel(
          quantity:orderLineRead[i].quantity,
          actualCost: orderLineRead[i].actualCost??0,
          totalSellingPrice: orderLineRead[i].totalAmount


        ));
      }

    }


  }
  else if(createOrPatch!=true && invoicePage!=true){
    if(variantList.isNotEmpty==true){
      for(var i=0;i<variantList.length;i++){
        list.add(CartLineModel(
            quantity:variantList[i].qty,
            actualCost: variantList[i].actualCost??0,
            totalSellingPrice: variantList[i].total


        ));
      }

    }

  }
  NegotiationModel model=NegotiationModel(
    cartlineModel: list,
    customerGroupCode: customerCode,
    segmentCode: "business",
    totalCartValue: pricetotal,
  );
  context.read<NegotiationPostCubit>().postReadNegotiation(model);

}
addButtonEvent(){
 {
    if(widget.isHold==true){
      context.showSnackBarError("Please Press Unhold");
    }
    else{
      // patchList=List.from(orderLineRead);
      selectedRow=-1;
      if(widget.qty.text.isEmpty ||widget.qty.text=="0"){
        context.showSnackBarError("Please select product");
      }
      else  {

        // invoicePage==true?readOrders?.invoiceStatus!="pending"?context.showSnackBarError("Invoiced Order  Can't to be edited"):
        if(widget.productName.text!="" && readData?.stockCount!=0){
          if(createOrPatch==true){
            if(editing==true){
              showDailogPopUp(
                  context,
                  //     AdminCreationUser()
                  LogoutPopup(
                    message: "Are you sure to Update this product",
                    // table:table,
                    // clear:clear(),

                    onPressed:()  {
                      updateFormRead();
                      hubCode="";
                      hubNAme="";

                      hubresponseList.clear();
                      getNegotiation();
                      clearForm();
                      allTotalCalculation();
                      editing=false;
                      widget.historyEnable(false);
                      productNameDisplaySecondSectionController.clear();
                      // Navigator.pop(context);

                      },
                    onLeftPress: (){
                      hubCode="";
                      hubNAme="";
                      hubresponseList.clear();
                      getNegotiation();
                      clearForm();
                      allTotalCalculation();
                      editing=false;
                      widget.historyEnable(false);
                      productNameDisplaySecondSectionController.clear();
                      Navigator.pop(context);

                    },



                  ));

            }else{
              addPatchListList(readData?.id,
                  widget.productName.text,
                  int.tryParse(widget.qty.text),
                  double.tryParse(widget.total.text),
                  double.tryParse(vatablePrize.text),
                  double.tryParse(widget.vatable.text),
                  double.tryParse(widget.price.text),
                  readData?.discountData?.discountPercentagePrice,
                  widget.uom.text,
                  readData?.barcode,
                  discountType.text,
                  readData?.actualCost
              );
              hubCode="";
              hubNAme="";
              hubresponseList.clear();
              getNegotiation();
              clearForm();
              allTotalCalculation();
              editing=false;
              widget.historyEnable(false);
              productNameDisplaySecondSectionController.clear();

            }
          }
          else if(createOrPatch!=true && invoicePage!=true){
            if(editing==true){
              showDailogPopUp(
                  context,
                  //     AdminCreationUser()
                  LogoutPopup(
                      message: "Are you sure to Update this product",
                      // table:table,
                      // clear:clear(),

                      onPressed:()  {
                        updateForm();
                        hubCode="";
                        hubNAme="";
                        hubresponseList.clear();
                        getNegotiation();
                        clearForm();
                        allTotalCalculation();
                        editing=false;
                        widget.historyEnable(false);
                        productNameDisplaySecondSectionController.clear();
                        // Navigator.pop(context);
                      },
                    onLeftPress: (){
                      hubCode="";
                      hubNAme="";
                      hubresponseList.clear();
                      getNegotiation();
                      clearForm();
                      allTotalCalculation();
                      editing=false;
                      widget.historyEnable(false);
                      productNameDisplaySecondSectionController.clear();
                      Navigator.pop(context);
                    },



                  ));

            }
            else{
              addvariantToList(
                  readData?.id,
                  widget.productName.text,

                  int.tryParse(widget.qty.text),
                  double.tryParse(widget.total.text),
                  double.tryParse(vatablePrize.text),
                  double.tryParse(widget.vatable.text),
                  double.tryParse(widget.price.text),
                  readData?.discountData,
                  widget.uom.text,
                  readData?.barcode,
                  discountType.text
              );
              hubCode="";
              hubNAme="";
              hubresponseList.clear();
              getNegotiation();
              clearForm();
              allTotalCalculation();
              editing=false;
              widget.historyEnable(false);
              productNameDisplaySecondSectionController.clear();
            }
          }



        }
        // widget.productName.text!="" && readData?.stockCount!=0?editing==true?updateFormRead():
        // addPatchListList(null,
        //     widget.productName.text,
        //     int.tryParse(widget.qty.text),
        //     double.tryParse(widget.total.text),
        //     double.tryParse(vatablePrize.text),
        //     double.tryParse(widget.vatable.text),
        //     double.tryParse(widget.price.text),
        //     readData?.discountData?.discountPercentagePrice,
        //     widget.uom.text,
        //     readData?.barcode,
        //     discountType.text
        // ):
        // editing==true?updateForm():
        // widget.productName.text!="" && readData?.stockCount!=0?  addvariantToList(
        //     readData?.id,
        //     widget.productName.text,
        //
        //     int.tryParse(widget.qty.text),
        //     double.tryParse(widget.total.text),
        //     double.tryParse(vatablePrize.text),
        //     double.tryParse(widget.vatable.text),
        //     double.tryParse(widget.price.text),
        //     readData?.discountData,
        //     widget.uom.text,
        //     readData?.barcode,
        //     discountType.text
        // ):print("Aksksk");

      }
    }
  }



}

  checkBoxClickSelectUnselct(List<LinesInvoiceCallcenter>table1){

   if(table1.isNotEmpty){
     var val=table1.where((element) => element.isInvoiced==false);
     if(val.isNotEmpty){
       checkbox=false;
     }
     else{
       checkbox=true;
     }
     setState(() {

     });
   }

  }
  void updateForm() {
    print("the update field");
    print(tableIndex);
    print(variantList.length);
    print(newList.length);



    setState(() {
      if(readData?.stockCount!=0){
        variantList[tableIndex!]=variantList[tableIndex!].copyWith(
          id: readData?.id,
          deliverySlotId: deliverySlotObject.id!=null?deliverySlotObject.id:newList[tableIndex!].deliverySlotId,
          deliveryCharge: deliverySlotObject.deliveryCharge!=null?deliverySlotObject.deliveryCharge:newList[tableIndex!].deliveryCharge,
          warrantyPrice: readData?.warrantyPrice??0,
          priceData: double.tryParse(widget.price.text??""),
          salesUom: widget.uom.text??"",
          unitCost: readData?.unitCost??0,
          total: double.tryParse(widget.total.text??""),
          vat: double.tryParse(vatablePrize.text??""),
          vatable: double.tryParse(widget.vatable.text??""),
          name: widget.productName.text??"",
          discountData: readData?.discountData,
          needApproval: (double.tryParse(widget.total.text)??0/(double.tryParse(widget.qty.text??"")??0))< (readData?.approvalCapAmount??0)?true:false,
          qty: int.tryParse(widget.qty.text??"",



          ),
        );
print("readData?.discountData?.discountAppliedPrice${readData?.discountData?.discountAppliedPrice}");
        newList[tableIndex!]=newList[tableIndex!].copyWith(
          variantId: readData?.id,
          // hubCode: hubCode.isNotEmpty?hubCode:null,

          deliverySlotId: deliverySlotObject.id!=null?deliverySlotObject.id:newList[tableIndex!].deliverySlotId,
          deliveryCharge: deliverySlotObject.deliveryCharge!=null?deliverySlotObject.deliveryCharge:newList[tableIndex!].deliveryCharge,
          sellingPrice: double.tryParse(widget.price.text??"0"),
          uomName: widget.uom.text??"",
          totalAmount: double.tryParse(widget.total.text??""),
          vat: double.tryParse(vatablePrize.text??""),
          vatableAmount: double.tryParse(widget.vatable.text??""),
          variantName: widget.productName.text??"",
          uomId: int.tryParse(readData?.salesUom??"0"),
          unitCost: readData?.unitCost??0,
          actualCost: readData?.actualCost??0,
          returnTime:0,
          returnType: readData?.returnType??"",
          discount: readData?.discountData?.discountAppliedPrice??0,
          needApproval: (double.tryParse(widget.total.text)??0/(double.tryParse(widget.qty.text??"")??0))< (readData?.approvalCapAmount??0)?true:false,
          quantity: int.tryParse(widget.qty.text??"",




          ),
        );
      }
      // Code to update the list after editing


      print(variantList);
      print(newList);
      editing=false;
    });
  }
  void updateFormRead() {
  print("create patch true time");

    setState(() {
      // Code to update the list after editing

      orderLineRead[tableIndex!]=orderLineRead[tableIndex!].copyWith(

        sellingPrice: double.tryParse(widget.price.text??""),
        uomName: widget.uom.text??"",
        uomId:int.tryParse(readData?.salesUom??"0"),
        returnTime: readData?.returnTime??0,
        warrantyPrice: readData?.warrantyPrice??0,
        actualCost: readData?.actualCost??0,
        totalAmount: double.tryParse(widget.total.text??""),
        vat: double.tryParse(vatablePrize?.text??"0"),
        vatableAmount: double.tryParse(widget.vatable?.text??"0"),
        unitcost: readData?.unitCost??0,
        variantName: widget.productName.text??"",
        discount: double.tryParse(widget.discount.text??""),
        quantity: int.tryParse(widget.qty.text??"",),
        needApproval: (double.tryParse(widget.total.text)??0/(double.tryParse(widget.qty.text??"")??0))< (readData?.approvalCapAmount??0)?true:false,
        deliverySlotId: deliverySlotObject.id!=null?deliverySlotObject.id:patchList[tableIndex!].deliverySlotId,
        deliveryCharge: deliverySlotObject.deliveryCharge!=null?deliverySlotObject.deliveryCharge:patchList[tableIndex!].deliveryCharge,
      );

      patchList[tableIndex!]=patchList[tableIndex!].copyWith(
        variantId: readdata.id,
        // hubCode: hubCode.isNotEmpty?hubCode:null,
        deliverySlotId: deliverySlotObject.id!=null?deliverySlotObject.id:patchList[tableIndex!].deliverySlotId,
        deliveryCharge: deliverySlotObject.deliveryCharge!=null?deliverySlotObject.deliveryCharge:patchList[tableIndex!].deliveryCharge,
        sellingPrice: double.tryParse(widget.price.text??""),
        unitcost: readData?.unitCost??0,
        uomName: widget.uom?.text??"",
        actualCost: readData?.actualCost??0,
        returnTime: readData?.returnTime??0,
        returnType: readData?.returnType??"",
        needApproval: (double.tryParse(widget.total.text)??0/(double.tryParse(widget.qty.text??"")??0))< (readData?.approvalCapAmount??0)?true:false,
        uomId: int.tryParse(readData?.salesUom??"0"),
        totalAmount: double.tryParse(widget.total?.text??"0"),
        vat: double.tryParse(vatablePrize.text??""),
        vatableAmount: double.tryParse(widget.vatable?.text??"0"),
        variantName: widget.productName.text??"",
        discount: double.tryParse(widget.discount?.text??"0"),
        warrantyPrice: readData?.warrantyPrice??0,
        quantity: int.tryParse(widget.qty.text??"",










        ),
      );
    });
  }
   void _deleteTextControllers() {
     setState(() {
       //How to delete the list data on clicking Delete button?
       int currentIndex = variantList.indexOf(variant);

       var customerIds=int.tryParse(Variable.customerId);

       if(variantList[currentIndex].id==customerIds){
         print("entered in same case");
         Variable.customerId="";
         widget?.allCostemerId?.text="";



       }
       variantList.removeAt(currentIndex);
       newList.removeAt(currentIndex);
       clearForm();
       selectedRow=-1;
       editing=false;
       productNameDisplaySecondSectionController.clear();

     });
   }
  void _deletereadTextControllers() {
    print("deletion caseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
    setState(() {
      //How to delete the list data on clicking Delete button?
      int currentIndex = orderLineRead.indexOf(readdata);
      print("currentIndex $currentIndex");
      var customerIds=int.tryParse(Variable.customerId);

      if(orderLineRead[currentIndex].id==customerIds){
        Variable.customerId="";
        widget?.allCostemerId?.text="";

      }
    var  index= patchList.indexWhere((data)=>orderLineRead[currentIndex].variantId==data.variantId);
      orderLineRead.removeAt(currentIndex);
      patchList[index]=patchList[index].copyWith(isActive: false);
      clearForm();
      selectedRow=-1;
      editing=false;
      productNameDisplaySecondSectionController.clear();

    });
  }
   void addvariantToList( id,name, qty,total,vat,vatable,price,DiscountData? dicount,uom,barcode,disctype) {
  print((total/qty));
  print("readData?.approvalCapAmount${readData?.approvalCapAmount}");
     setState(() {
       variantList.add(
           ReadVarriant(
             id:id ,
           name: name,
           qty: qty,
           total: total,
           vat: vat,
           needApproval:(total/qty)< readData?.approvalCapAmount?true:false,
           vatable: vatable,
           priceData: price,

           discountData: dicount,
             deliveryCharge: deliverySlotObject.deliveryCharge??0,
             deliverySlotId: deliverySlotObject.id,
           salesUomName:uom=="Null"?"": uom,
           barcode: barcode,
             discountBasedOn: disctype,
               image1: readData?.image1??"",
             actualCost:  readData?.actualCost??0,
             unitCost: readData?.actualCost??0,
           ));
         newList.add(
             OrderLineCallcenter(
               variantName: name,
               variantId: id,
               variantCode: readData?.code,
               quantity: qty,

               sellingPrice: double.tryParse(widget.price.text),
               barcode: readData?.barcode,
               vatableAmount: vatable,
               vat:vat,
               needApproval:(total/qty)< readData?.approvalCapAmount?true:false,
               inventoryId:  readData?.inventoryId,
               discount: double.tryParse(widget.discount.text)  ,
               discountData: readData?.discountData  ,
               totalAmount: double.tryParse(widget.total.text),
               uomName: readData?.salesUomName,
               uomId: int.tryParse(readData?.salesUom??"0"),
                 discountBasedOn: disctype,
               image1: readData?.image1??"",
                 actualCost:  readData?.actualCost??0,
               unitCost: readData?.actualCost??0,
               returnTime:readData?.returnTime?.toInt()??0,
               returnType:readData?.returnType ,
               warrantyPrice: readData?.warrantyPrice??0,
               deliverySlotId: deliverySlotObject.id,
               deliveryCharge: deliverySlotObject.deliveryCharge??0,
               hubCode: hubCode.isNotEmpty?hubCode:null,
               hubName: hubNAme,


             ));
     });
   }

   void   addPatchListList( id,name, qty,total,vat,vatable,price,double? dicount,uom,barcode,disctype,actualCost) {
  print("enteredddddddddddddddddddddddd");
     setState(() {
       orderLineRead.add(
           LinesCallcenter(
             id:null ,
           variantName: name,
           variantCode:  readData?.code,
           quantity: qty,
           totalAmount: total,
           vat: vat,
             variantId: readData?.id,
           actualCost:actualCost??0 ,
           vatableAmount: vatable,
           sellingPrice: price??0,
           discount: dicount??0,
           uomName:uom=="Null"?"": uom,
           barcode: barcode,
             deliverySlotId: deliverySlotObject.id,
             deliveryCharge: deliverySlotObject.deliveryCharge??0,
             discountBasedOn: disctype,
             image1:  readData?.image1??"",
             isActive: true,

             warrantyPrice: readData?.warrantyPrice??0,
             unitcost: readData?.actualCost??0,
             hubCode: hubCode.isNotEmpty?hubCode:null,
           hubName: hubNAme,
           needApproval:   (total/qty)< readData?.approvalCapAmount?true:false,
           ));

         patchList.add(
             LinesCallcenter(
               id: null,
               variantName: readData?.name??"",
               variantId: readData?.id,
               variantCode: readData?.code,
               quantity: int.tryParse(widget.qty.text),
               sellingPrice: double.tryParse(widget.price?.text??"0"),
               barcode: readData?.barcode,
               vatableAmount: double.tryParse(widget.vatable?.text??"0"),
               vat: vat??0,
               actualCost: actualCost??0 ,
               warrantyPrice: readData?.warrantyPrice??0,
               discount: dicount??0  ,
               totalAmount: double.tryParse(widget.total?.text??"0"),
               uomName: readData?.salesUomName,
                 discountBasedOn: disctype,
                 image1:  readData?.image1??"",
               isActive: true,
               unitcost: readData?.actualCost??0,
               returnTime: readData?.returnTime??0,
               returnType: readData?.returnType??"",
               deliveryCharge: deliverySlotObject.deliveryCharge??0,
               deliverySlotId: deliverySlotObject.id,
               hubCode: hubCode.isNotEmpty?hubCode:null,
               needApproval:   (total/qty)< readData?.approvalCapAmount?true:false,

             ));
     });
     print("the added list$patchList");
   }
  void _updateTextControllers(ReadVarriant variant) {
    setState(() {
      widget.productName.text = variant.name??"";
      widget.qty.text = variant.qty?.toString()??"";
      widget.price.text=variant.priceData?.toString()??"";
      widget.selectedProductName?.text=variant.name??"";
      widget.total.text=variant.total?.toString()??"";
      widget.vat.text=variant.vat?.toString()??"";
      vatablePrize.text=variant.vat?.toString()??"";
      widget.vatable.text=variant.vatable?.toString()??"";
      widget?.allCostemerId?.text=variant.id.toString();
      widget.discount.text=variant.discountData?.discountPercentagePrice?.toString()??"";
      widget.uom.text=variant.salesUomName??"";
      discountType.text=variant.discountBasedOn??"";
      context.read<FrequentlyRecommendationCubit>().getFrequentlyRecommendationList(variant?.id.toString()??"0",);
    });
  }
  void _updateTextControllersRead(LinesCallcenter readdata) {
    setState(() {
      widget.productName.text = readdata.variantName??"";
      widget.qty.text = readdata.quantity?.toString()??"";
      widget.price.text=readdata.sellingPrice?.toString()??"";
      widget.total.text=readdata.totalAmount?.toString()??"";
      Variable.customerId=readdata.variantId.toString();
      widget?.allCostemerId?.text=readdata.variantId.toString();
      widget?.barcode?.text=readdata.barcode.toString();
      widget.selectedProductName?.text=readdata.variantName??"";
      widget.vat.text=readdata.vat?.toString()??"";
      vatablePrize.text=readdata.vat?.toString()??"";
      discountType.text=readdata.discountBasedOn??"";
      widget.vatable.text=readdata.vatableAmount?.toString()??"";
      widget.discount.text=readdata.discount?.toString()??"";
      widget.uom.text=readdata.uomName??  "";
      widget.historyEnable(true);
      context.read<FrequentlyRecommendationCubit>().getFrequentlyRecommendationList(readdata.variantId.toString()??"0",);
      SizedBox(height: context.blockSizeVertical*0.5,);
    });
  }
  void _updateInvoicedTextControllersRead(LinesInvoiceCallcenter invoiceData) {
    setState(() {

      widget.productName.text = invoiceData.variantName??"";
      widget.qty.text = invoiceData.quantity?.toString()??"";
      widget.price.text=invoiceData.sellingPrice?.toString()??"";
      widget.total.text=invoiceData.totalAmount?.toString()??"";
      widget.vat.text=invoiceData.vat?.toString()??"";
      vatablePrize.text=invoiceData.vat?.toString()??"";
      Variable.customerId=invoiceData.variantId.toString();
      widget?.allCostemerId?.text=invoiceData.variantId.toString();
      widget.selectedProductName?.text=invoiceData.variantName??"";
      widget.vatable.text=invoiceData.vatableAmount?.toString()??"";

      widget.discount.text=invoiceData.discount?.toString()??"";
      widget.uom.text=invoiceData.uomName??  "";
      widget.historyEnable(true);
      widget.barcode?.text=invoiceData.barcode??"";
      discountType.text=invoiceData.dicountBasedOn??"";
      selectedRow=invoiceOrder.indexOf(invoiceData);
      SizedBox(height: context.blockSizeVertical*0.5,);
    });
  }
  allTotalCalculation(){
    double totalQty = 0;
    double unitCost = 0;
    double totaldiscount = 0;
    double vatableTotal = 0;
    double totalPrice=0;
    double deliveryCharge=0;
    pricetotal=0;
    List<String> deliveryChargeList=[];
    double vatTotal=0;


    if(invoicePage==true){
      print("3rd case");
      for (var i = 0; i < invoiceline.length; i++) {
        if(invoiceline[i].isInvoiced==true){
          // totalQty =  double.tryParse((invoiceOrder[i]?.quantity??0+totalQty).toStringAsFixed(2))??0;
          totaldiscount +=  double.tryParse(invoiceline[i].discount.toString())??0;
          vatableTotal += double.tryParse(invoiceline[i].vatableAmount.toString())?? 0;
          totalPrice  +=  double.tryParse(invoiceline[i].totalAmount.toString())??0;
          pricetotal += double.tryParse(invoiceline[i].amount.toString())?? 0;
          unitCost += double.tryParse(invoiceline[i].unitcost.toString())?? 0;

          // deliveryCharge += double.tryParse(invoiceline[i].deliveryCharge.toString())?? 0;
          deliveryCharge += deliveryChargeList.contains(invoiceline[i].deliverySlotID.toString())?0:double.tryParse(invoiceline[i].deliveryCharge.toString()) ?? 0;
          vatTotal +=  double.tryParse(invoiceline[i].vat.toString())??0;
          var isContain=deliveryChargeList.where((element) => element==invoiceline[i].deliverySlotID);

          if(isContain.isEmpty==true){
            deliveryChargeList.add(invoiceline[i].deliverySlotID.toString());

          }
        }

      }
      totalQty = invoiceline.length.toDouble();
    }
    else if(createOrPatch==true){
      print("2nd case");

      for (var i = 0; i < orderLineRead.length; i++) {

        totalQty +=  double.tryParse(orderLineRead[i].quantity.toString())??0;
        totaldiscount +=  double.tryParse(orderLineRead[i].discount.toString())??0;
        vatableTotal += double.tryParse(orderLineRead[i].vatableAmount.toString())?? 0;
        totalPrice +=  double.tryParse(orderLineRead[i].totalAmount.toString())??0;
        unitCost +=  double.tryParse(orderLineRead[i].unitcost.toString())??0;
        pricetotal += double.tryParse(orderLineRead[i].amount.toString())?? 0;
        deliveryCharge += deliveryChargeList.contains(orderLineRead[i]?.deliverySlotId.toString())?0:double.tryParse(orderLineRead[i].deliveryCharge.toString()) ?? 0;
        print("deliveryCharge$deliveryCharge");
        print("orderLineRead[i].deliverySlotId${orderLineRead[i].deliverySlotId}");
        vatTotal +=  double.tryParse(orderLineRead[i].vat.toString())??0;

        var isContain=deliveryChargeList.where((element) => element==orderLineRead[i].deliverySlotId);
        print("isContain$isContain");

        if(isContain.isEmpty==true){
          deliveryChargeList.add(orderLineRead[i].deliverySlotId.toString());

        }
        print("isContain$deliveryChargeList");


      }
      totalQty = orderLineRead.length.toDouble();
    }
    else{
      print("1st case");

      for (var i = 0; i < variantList.length; i++) {

        // if(variantList[i]==true){
        totalQty += double.tryParse(variantList[i].qty.toString()) ??0;
        totaldiscount += double.tryParse(variantList[i].discountData?.discountPercentagePrice.toString()??"") ??0;
        vatableTotal += double.tryParse(variantList[i].vatable.toString()) ?? 0;
        totalPrice += double.tryParse(variantList[i].total.toString()) ??0;

        pricetotal += double.tryParse(variantList[i].priceData.toString()) ?? 0;
        deliveryCharge += deliveryChargeList.contains(variantList[i].deliverySlotId.toString())?0:double.tryParse(variantList[i].deliveryCharge.toString()) ?? 0;
        vatTotal += double.tryParse(variantList[i].vat.toString()) ??0;
        var isContain=deliveryChargeList.where((element) => element==variantList[i].deliverySlotId);

        if(isContain.isEmpty==true){
          deliveryChargeList.add(variantList[i].deliverySlotId.toString());

        }

        // }
      }
      totalQty = variantList.length.toDouble();
    }

    widget.totalValue!(totalQty,totaldiscount,vatableTotal,totalPrice,pricetotal,vatTotal,deliveryCharge);
    print("aaaaaaaaaaaaaTest");
  }
  selectUnSelect(){
    // invoiceline.clear();

    for(var i=0;i<invoiceline.length;i++){
      if(checkbox==true){
        setState(() {
          invoiceline[i]=invoiceline[i].copyWith(isInvoiced: true);
        });


      }
      else{
        setState(() {

          invoiceline[i]=invoiceline[i].copyWith(isInvoiced: false);

        });

      }
    }
    allTotalCalculation();
  }
  clearForm() {
    setState(() {
      widget.productName.clear();
      widget.selectedProductName?.clear();
      widget.barcode?.clear();
      widget.qty.clear();
      widget.price.clear();
      widget.total.clear();
      widget.vat.clear();
      widget.vatable.clear();
      widget.discount.clear();
      widget.uom.clear();
      VatAmounts=0;
      vatAmountsOrginaPrice=0;
      Total=0;
      vatablePrize.text="";
      widget.allCostemerId?.clear();
      discountType.clear();

    });
  }
  bool isSelected=false;

  DiscountData? disData;
  double VatAmounts=0.0;
  double vatAmountsOrginaPrice=0.0;
  double Total=0.0;
  allReadyExistCheck(object){
    if(createOrPatch==true){
      var isContain=orderLineRead.where((element) => element.variantId==object.id);

      if(isContain.isEmpty==true){
         isContain=orderLineRead.where((element) => element.id==object.id);

      }


      if(isContain.isNotEmpty==true){
      selectedRow=  tableIndex= orderLineRead.indexWhere((data)=>object.id==data.variantId);
      if(selectedRow==-1){
        selectedRow=  tableIndex= orderLineRead.indexWhere((data)=>object.id==data.id);
      }
        editing=true;
      setState(() {
      });
      }
      else{
        setState(() {

        });
      }

    }
    else if(createOrPatch!=true && invoicePage!=true){
      var isContain=variantList.where((element) => element.id==object.id);
      print(isContain);
      if(isContain.isNotEmpty==true){
        selectedRow=  tableIndex= variantList.indexWhere((data)=>object.id==data.id);
        editing=true;
      }
      else{
        setState(() {
        });
      }
    }

  }
  void vatableAmount(int Qty,double price,double disct,String? type){
    if (type =="price" ||type =="" ||type ==null) {
      VatAmounts =double.parse( ((price*Qty)-(disct*Qty)).toStringAsFixed(2));
      widget.vatable.text=VatAmounts.toString();
      if(readData?.isChangePrize!=true){
        vatAmountsOrginaPrice=double.parse( (((readData?.orginalPrice??0)*Qty)-(disct*Qty)).toStringAsFixed(2));
      }

    }
    else{
      double total = 0;
      total=(price*Qty);
      VatAmounts =double.parse( ((total)-(((total*disct)/100))).toStringAsFixed(2));
      widget.vatable.text=VatAmounts.toString();
      if(readData?.isChangePrize!=true){
        double total = 0;
        total=((readData?.orginalPrice??0)*Qty);
        vatAmountsOrginaPrice=double.parse( ((total)-(((total*disct)/100))).toStringAsFixed(2));
      }
    }
  }

  void vatablePrizeAmount(double Vatamounts,double vat){
    print("readData?.isChangePrize${readData?.isChangePrize}");
    if(readData?.isChangePrize!=true){
     vatablePrize.text=(((vatAmountsOrginaPrice)*vat)/100).toStringAsFixed(2);
     print("vatable Prize${vatablePrize.text}");
     setState(() {

     });
    }
    else{
      setState(() {
        vatablePrize.text=(((Vatamounts)*vat)/100).toStringAsFixed(2);
        print("vatable Prize${vatablePrize.text}");
      });
    }
    Totalprice(Vatamounts,vat);

  }
  // void vatablePrizeAmount(int Qty,double price,double vat){
  //   print("Enterde in vatable prize case");
  //   print(Qty);
  //   print(price);
  //   print(vat);
  //   setState(() {
  //     vatablePrize.text=(((price*Qty)*vat)/100).toStringAsFixed(2);
  //   });
  // }
  void Totalprice(double VatAmounts,double vat){
    // Total=VatAmounts;
    // Total = VatAmounts;
    double vatableAmount=double.tryParse(vatablePrize.text)??0;
    Total =  double.tryParse ((VatAmounts+vatableAmount).toStringAsFixed(2) )??0;
        // double.parse((VatAmounts+(double.tryParse(vatablePrize.text))));
    widget.total.text=Total.toString();

  }
  ReadOrderCallCenter? readOrders;

  InvoiceOrderCallCenter? createInvoice;

  slotPost(){
    DeliverySlotPostModel model=DeliverySlotPostModel(
      id: readData?.id,
      group: readData?.groupCode,

        segment:readData?.segmentList,
      state: "Ajman",
      // listCustomer?.state??"",
        volume:"",
        contact:"+${listCustomer?.phoneNuberCode.toString()}${listCustomer?.mobile??""}",
      country: "AE",
      // listCustomer?.customerMeta?.country??"",
        category:readData?.categoryCode,
      landmark: listCustomer?.customerMeta?.landmark??"",
        latitude: "",
      fullName: listCustomer?.customerName??"",
        longitude:"",

      address: "${listCustomer?.customerMeta?.fullname},${listCustomer?.customerMeta?.street},${listCustomer?.customerMeta?.altEmail}"  ,
      streetName: listCustomer?.customerMeta?.street??"",
      cityOrTown: listCustomer?.customerMeta?.city??"",
      varientCode: readdata.variantCode,
      buildingName: listCustomer?.buildingName??""






    );
    // context.read<DeliverySlotCubit>().getDeliverySlot(model);
  }
  @override
  void initState() {
    priceFocusNode.addListener(() { });
    // priceFocusNode.addListener(() { });

    super.initState();
  }
  bool create=false;
  @override
  Widget build(BuildContext context) {
    // widget.vatable.text=VatAmounts.toString();
    // widget.total.text=Total.toString();
    return BlocListener<ReadInvoiceCubit, ReadInvoiceState>(
    listener: (context, state) {
      state.maybeWhen(
          orElse: () {},
          error: () {
            print("error..invoice orders");
          },
          success: (data) {
            setState(() {
              createInvoice=data;
              print("invoice$createInvoice");
              // lineCall=data.linesCallcenter;
              if(createInvoice?.invoiceData==null){
                invoiceline=List.from(data.linesCallcenter??[]);
              }
              else{
                invoiceline=List.from(data.invoiceData?.linesCallcenter??[]);
              }

              setState(() {

              });
            });
          }
      );
    },
    child: BlocListener<ReadInvoiceCubit, ReadInvoiceState>(
    listener: (context, state) {
      state.maybeWhen(
          orElse: () {},
          error: () {
            print("error..invoice orders");
          },
          success: (data) {
            setState(() {
              invoiceline.clear();
              createInvoice=data;
              print("invoicedfghijodztrtfugihopztdtfyuhiodzxfjhijopfdgchj$createInvoice");
              // lineCall=data.linesCallcenter;
              if(createInvoice?.invoiceData==null){
                invoiceline=List.from(data.linesCallcenter??[]);
                Variable.orderIdPayment = createInvoice?.orderCode ?? "";
                Variable.total = createInvoice?.total ?? 0.0;

              }
              else{
                invoiceline=List.from(data.invoiceData?.linesCallcenter??[]);

                Variable.orderIdPayment = data.invoiceData?.orderCode ?? "";
                Variable.total = data.invoiceData?.total ?? 0.0;

              }
              print("invoiceline$invoiceline");
              checkBoxClickSelectUnselct(invoiceline);

              setState(() {

              });
            });
          }
      );
    },
    child: MultiBlocListener(
    listeners: [
      BlocListener<ReadOrdersCubit, ReadOrdersState>(
             listener: (context, state) {
               print("READ STATE$state");
               state.maybeWhen(
                   orElse: () {},
                   error: () {
                     print("error..read orders");
                   },
                   success: (data) {
                     setState(() {
                       readOrders=data;

                       orderLineRead=List.from(data.linesCallcenter??[]);
                       setState(() {
                         print("line$orderLineRead");
                       });

                     });

                   }
               );
    },
),
      BlocListener<HubListCubit, HubListState>(
             listener: (context, state) {
               print("READ STATE$state");
               state.maybeWhen(
                   orElse: () {},
                   error: () {
                     print("error..read orders");
                   },
                   success: (data) {
                     setState(() {
                     print("hubListStatedfzxgfhkhzerjgkhlfhzdgcjkbfzdcgj");
                     hubresponseList=data.data;
                     print(hubresponseList);

                     });

                   }
               );
    },
),
      BlocListener<DeliverySlotCubit, DeliverySlotState>(
             listener: (context, state) {
               print("READ STATE$state");
               state.maybeWhen(
                   orElse: () {},
                   error: () {
                     print("error..read orders");
                   },
                   success: (data) {
                     print("delivery slot+$data");
                     if(data.isNotEmpty){
                       deliverySlotObject=data[0];
                     }


                   }
               );
    },
),
      BlocListener<NegotiationPostCubit, NegotiationPostState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              error: () {

              },
              success: (data) {
                setState(() {
                  if(data.data1){

                    negotationObject=data.data2;

                    if(negotationObject.negotiationType=="based_on_cart_value"){


                      if(negotationObject.basedOn=="percentage"){

                    widget.negotationText .text   ="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue} % off";
                      }
                      else{

                        widget.negotationText .text ="Buy More ${negotationObject.negotiationAppliedValue.toString()} to get ${negotationObject.negotiationValue}AED off";
                      }
                    }
                    else{

                      if(negotationObject.basedOn=="percentage"){
                        widget.negotationText .text ="Buy More  to get ${negotationObject.negotiationValue} % off";
                      }
                      else{
                        widget.negotationText .text ="Buy More to get ${negotationObject.negotiationValue}AED off";
                      }
                    }

                    widget.refresh();
                  }


                });

              }
          );
        },
      ),
    ],
    child: BlocConsumer<ReadVariantCubit, ReadVariantState>(
        listener: (context, state) {
          state.maybeWhen(
            loading: (){
              // setState(() {
              //   isAddButtonLoading=true;
              // });

            },
              orElse: () {
                setState(() {
                 if(!editing) isAddButtonLoading=true;
                });
              },
              error: () {
                print("error..read Variant");
              },
              success: (data) {
                setState(() {
                  print("the added list$patchList");
                  // editing=false;
                  // selectedRow=-1;
                  readData=data;
                  FocusScope.of(context).requestFocus(countFocusNode);

                  print("readData?.priceData.toString()");
                  if(editing==false){



                    widget.qty.text=editing==false?readData?.qty?.toString()??"1":widget.qty.text;


                    widget.productName.text=readData?.name?.toString().toTitleCase()??"";
                    widget.selectedProductName?.text=readData?.name?.toString().toTitleCase()??"";
                    widget.barcode?.text=readData?.barcode?.toString().toTitleCase()??"";
                    widget.price.text=readData?.priceData?.toString()??"";
                    widget.uom.text=readData?.salesUomName.toString().toTitleCase()??"";
                    widget.vat.text=readData?.vat?.toString()??"";
                    // widget.total.text=readData?.total?.toString()??"";
                    // widget.vatable.text=readData?.vatable?.toString()??"";
                    widget.discount.text=readData?.discountData?.isDiscountHave==true?readData?.discountData?.discountPercentagePrice.toString()??"":"0";
                    discountType.text=readData?.discountData?.discountType??"";
                    widget.historyEnable(true);
                    vatableAmount(
                        int.tryParse(widget.qty.text)??0,
                        double.tryParse(widget.price.text)??0.0,
                        double.tryParse(widget.discount.text)??0.0,discountType.text);
                    vatablePrizeAmount(
                        VatAmounts,
                        double.tryParse(widget.vat.text)??0.0);
                    // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);

                    isAddButtonLoading=false;
                  }
                  print("the added list$patchList");
                  widget.vat.text=readData?.vat?.toString()??"";
                  // slotPost();
                  allReadyExistCheck(readData);
                  print("the added list$patchList");




                });

              }
          );

    },
    builder: (context, state) {
      return  Column(
        children: [
       if(invoicePage!=true)
         Container(
            height: context.blockSizeVertical*10,
            width: context.blockSizeHorizontal*73,
            color: Colors.white,
            // 0xffF8F9FA
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical:  context.blockSizeVertical*1.2,),
              child: Row(
                children: [
                  SizedBox(width: context.blockSizeHorizontal*1.2,),
                  TextContainer(
                    readOnly: true,
                    text: "Product Name",
                    filledColour: Color(0xffF2F2F2),
                    controller:widget.productName,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*17,
                  ),
                  SizedBox(width: context.blockSizeHorizontal*0.64,),
                  TextContainer(readOnly: true,
                    filledColour: Color(0xffF2F2F2),
                    text: "UOM",controller: widget.uom,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                  ),
                  SizedBox(width: context.blockSizeHorizontal*0.7,),
                  TextContainer(readOnly:   widget.isHold==true?true:false,
                    text: "Quantity",
                      formatter: true,
                      integerOnly: true,
                      focusNode: countFocusNode,
                    filledColour:  widget.isHold==true? Color(0xffF2F2F2):Colors.white,
                    controller: widget.qty,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                    onSubmit: (){
                      countFocusNode.unfocus();
                      enableKeyEvent=false;
                      FocusScope.of(context).requestFocus(priceFocusNode);

                    },
                    onChanged: (va){


                      isSelected=true;
                      setState(() {
                      });
                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      vatablePrizeAmount(
                          VatAmounts,
                          double.tryParse(widget.vat.text)??0.0);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    },),
                  SizedBox(width: context.blockSizeHorizontal*0.64,),
                  TextContainer(
                    readOnly: false,
                    text: "Price",
                    formatter: true,
                    focusNode: priceFocusNode,
                    filledColour:  widget.isHold==true? Color(0xffF2F2F2):Colors.white,
                    controller: widget.price,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                    onSubmit: (){

                      if(  hubresponseList.isNotEmpty &&editing!=true){
                        readData?.stockCount!=0?    showDailogPopUp(
                          context,
                          HubListPopUp(
                            variantCode:   readData?.code,
                            onTap: ( HubResponseModel val){
                              hubCode=val?.hubCode??"";
                              hubNAme=val.hubStockName??"";
                              addButtonEvent();
                              Navigator.pop(context);
                            },
                          ),
                        ):print("welcome");
                      }
                      else{
                        addButtonEvent();
                      }
                      ;},
                    onChanged: (va){
                      isSelected=true;
                      setState(() {
                      });
                      readData=readData?.copyWith(isChangePrize:readData?.priceData.toString()==va?false:true)       ;

                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      vatablePrizeAmount(
                          VatAmounts,
                          double.tryParse(widget.vat.text)??0.0);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    },
                  ),
                  SizedBox(width: context.blockSizeHorizontal*0.69,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reco.prize",style: TextStyle(fontWeight: FontWeight.w700,fontSize: context.blockSizeHorizontal*0.8),),
                      SizedBox(height: context.blockSizeVertical*0.5,),
                      Container(
                        height: context.blockSizeVertical*4,
                        width: context.blockSizeHorizontal*5,
                        // margin: EdgeInsets.only(top: context.blockSizeVertical*.),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          gradient:LinearGradient(
                              colors: [
                                Color(0xffcDcDcD),
                                Color(0xffcDcDcD),

                                //add more colors for gradient
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter, //end of the gradient color
                              stops: [ 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                          ),

                        ),
                        child: InkWell(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                  "Request",
                                  style: TextStyle(color: Color(0xfff4f3f3),fontSize: context.blockSizeHorizontal*0.9),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),

                  SizedBox(width: context.blockSizeHorizontal*0.7,),
                  TextContainer(readOnly: true,
                    filledColour: Color(0xffF2F2F2),
                    text: "Disc Type",controller: discountType,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                  ),
                  // SizedBox(width: context.blockSizeHorizontal*0.69,),

                  SizedBox(width: context.blockSizeHorizontal*0.69,),
                  TextContainer(
                    readOnly: true,
                    text: "Discount",
                    controller: widget.discount,
                    filledColour: Color(0xffF2F2F2),
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                    onChanged: (va){
                      isSelected=true;
                      setState(() {
                      });
                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    },),
                  SizedBox(width: context.blockSizeHorizontal*0.69,),
                  TextContainer(readOnly: true,
                    text: "Vatable", controller: widget.vatable,
                    filledColour: Color(0xffF2F2F2),
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                    onChanged: (va){
                      isSelected=true;
                      setState(() {
                      });
                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    },),
                  SizedBox(width: context.blockSizeHorizontal*0.69,),
                  TextContainer(
                    readOnly: widget.isHold==true?true:true,
                    text: "VAT",
                    controller: vatablePrize,
                    filledColour:  widget.isHold==true? Color(0xffF2F2F2):Color(0xffF2F2F2),
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*4.5,
                    onChanged: (va){
                      isSelected=true;
                      setState(() {
                      });
                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    },),
                  SizedBox(width: context.blockSizeHorizontal*0.69,),
                  TextContainer(
                    readOnly: true,
                    text: "Total",
                    filledColour: Color(0xffE3E3E3),
                    controller: widget.total,
                    height: context.blockSizeVertical*5,
                    width: context.blockSizeHorizontal*5,
                    onChanged: (va){
                      isSelected=true;
                      setState(() {
                      });
                      vatableAmount(
                          int.tryParse(widget.qty.text)??0,
                          double.tryParse(widget.price.text)??0.0,
                          double.tryParse(widget.discount.text)??0.0,discountType.text);
                      // Totalprice(VatAmounts, double.tryParse(widget.vat.text)??0.0);
                    }),
                  SizedBox(width: context.blockSizeHorizontal*0.8),
                  CommonButtonGradiant(
                    isIndiactor: isAddButtonLoading,
                    fontSize: readData?.stockCount==0?context.blockSizeHorizontal*.82:context.blockSizeHorizontal*.9,
                    label:editing?readData?.stockCount==0?"Out of Stock":"Update":readData?.stockCount==0?"Out of Stock": 'ADD',
                    margin: EdgeInsets.only(top: context.blockSizeVertical*1.7),
                    isInActive: widget.isHold==true?true:false,
                    onTap: (){
                  if(  hubresponseList.isNotEmpty &&editing!=true){
                    readData?.stockCount!=0?    showDailogPopUp(
                      context,
                      HubListPopUp(
                        variantCode:   readData?.code,
                        onTap: (HubResponseModel val){
                          hubCode=val.hubCode??"";
                          hubNAme=val.hubStockName??"";
                          addButtonEvent();
                          Navigator.pop(context);
                        },
                      ),
                    ):print("welcome");
                  }
                  else{
                    addButtonEvent();
                  }


                        setState(() {
                        });
                        print("path$orderLineRead");
                    },

                  ),

                ],
              ),
            ),
          ),
          Container(width: context.blockSizeHorizontal*75,color: Color(0xffE1E7ED),
            height: context.blockSizeVertical*1.1,),
          Container(
            // height: double.infinity,
            // height: invoicePage==true?context.blockSizeVertical*60.2:context.blockSizeVertical*42,
            width: context.blockSizeHorizontal*73,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffE3E3E3), Color(0xffF2F2F2)])),
            child: SingleChildScrollView(
              child:
              FittedBox(
                child: DataTable(
                    // dividerThickness: 2,
                  showBottomBorder: true,
                    // horizontalMargin: 0,
                  // columnSpacing: 0,/

                  // border: TableBorder.all(width: 0.2,color: Colors.black),
                  dataRowColor:MaterialStateProperty.all(const Color(0xffFFFFFF)),
                  headingRowColor: MaterialStateProperty.all(const Color(0xff6F91CB)),
                  headingRowHeight:context.blockSizeHorizontal*2.3                                      ,

                  // dataRowHeight: 50.0,




                  sortColumnIndex: 0,
                  sortAscending: true,
                  headingTextStyle:  TextStyle(color: Colors.white, fontSize:context.blockSizeHorizontal*.86),
                  dataTextStyle:  TextStyle(color: Colors.black, fontSize: context.blockSizeHorizontal*.85),
                    columns:  [
                       // DataColumn(label: Text("Sl.No",style:TextStyle(color: Colors.white, fontSize:context.blockSizeHorizontal*.86))),
                       DataColumn(label: Container(
                         width: context.blockSizeHorizontal*22,
                           child: Text("Item Name",style: TextStyle(color: Colors.white, fontSize:context.blockSizeHorizontal*.84),))),
                       DataColumn(label: Container(
                           child: Text("Price"))),
                       DataColumn(label: Container(
                           width: context.blockSizeHorizontal*5,
                           child: Text("Uom"))),
                       DataColumn(label: Text("QTY")),
                       DataColumn(label: Text("DISC.Type")),
                       DataColumn(label: Text("Discount")),
                       DataColumn(label: Text("Vatable")),
                       DataColumn(label: Text("VAT")),
                       DataColumn(label: Text("Total")),
                      DataColumn(label:invoicePage==true?
                             CheckedBoxs(
                             color:const Color(0xff6F91CB),
                              valueChanger:  this.checkbox,
                              onSelection: (bool? value ) {
                              setState(() {
                               checkbox = value!;
                               selectUnSelect();
                               });
                           },
                       ):const Text(" ")),
                    ],
                    rows:
                    invoicePage==true?
                    invoiceline.map(
                          (invoiceData) =>
                              DataRow(
                                color: MaterialStateProperty.all(invoiceselectedRow==invoiceline.indexOf(invoiceData)?Color(0xff6F91CB).withOpacity(.1):Colors.white),
                        cells: [
                          // DataCell(
                          //   Text("${invoiceline.indexOf(invoiceData)+1}"??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal)),
                          //   onTap: (){
                          //     editing=true;
                          //     context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                          //     tableIndex=invoiceline.indexOf(invoiceData);
                          //     this.invoiceData = invoiceData;
                          //     _updateInvoicedTextControllersRead(invoiceData);
                          //   },
                          // ),
                          DataCell(
                              Container(
                                width: context.blockSizeHorizontal*22,
                                  padding: EdgeInsets.all(context.blockSizeHorizontal*.3),
                                  child: Text(invoiceData.variantName.toString().toUpperCase(),style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16))),
                              onTap: () {
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                tableIndex=invoiceline.indexOf(invoiceData);
                                this.invoiceData = invoiceData;
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(

                              Text(invoiceData.sellingPrice?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                this.invoiceData = invoiceData;
                                // widget.historyEnable(true);
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.uomName?.toString().toTitleCase()??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                this.invoiceData = invoiceData;
                                // widget.historyEnable(true);
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.quantity?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                _updateInvoicedTextControllersRead(invoiceData);
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);

                                this.invoiceData = invoiceData;
                                // widget.historyEnable(true);
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.dicountBasedOn?.toString()??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                Variable.customerId=invoiceData.id.toString();
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);

                                tableIndex=invoiceline.indexOf(invoiceData);
                                this.invoiceData = invoiceData;
                                // widget.historyEnable(true);
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.discount?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                tableIndex=invoiceline.indexOf(invoiceData);
                                this.invoiceData = invoiceData;
                                // widget.historyEnable(true);
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.vatableAmount?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                tableIndex=invoiceline.indexOf(invoiceData);
                                this.invoiceData = invoiceData;
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.vat?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                                tableIndex=invoiceline.indexOf(invoiceData);
                                this.invoiceData = invoiceData;
                                _updateInvoicedTextControllersRead(invoiceData);
                              }
                          ),
                          DataCell(
                              Text(invoiceData.totalAmount?.toString()??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==invoiceline.indexOf(invoiceData)?FontWeight.bold:FontWeight.bold,fontSize: 16)),
                              onTap: (){
                            editing=true;
                            context.read<ReadVariantCubit>().getVariantRead(invoiceData.variantId??0);
                            tableIndex=invoiceline.indexOf(invoiceData);
                            this.invoiceData = invoiceData;
                            _updateInvoicedTextControllersRead(invoiceData);
                          }
                          ),
                          DataCell(
                            CheckedBoxs(
                              color:const Color(0xff6F91CB) ,
                              valueChanger:  invoiceData.isInvoiced,
                              onSelection: (bool? value) {
                                setState(() {
                                  tableIndex=invoiceline.indexOf(invoiceData);
                                  widget?.allCostemerId?.text=invoiceData.id.toString();
                                  var isInvoiced=invoiceline[tableIndex!].isInvoiced;

                                  isInvoiced=!isInvoiced!;
                                  print(invoiceline.length);
                                  print(tableIndex);
                                  invoiceline[tableIndex!]=invoiceline[tableIndex!].copyWith(
                                      isInvoiced: isInvoiced
                                  );
                                  checkBoxClickSelectUnselct(invoiceline);

                                });
                                allTotalCalculation();

                              }

                            ),
                          ),

                        ],
                      ),
                    ).toList():
                        createOrPatch?orderLineRead.map(
                          (readdata) => DataRow(
                            color: MaterialStateProperty.all(selectedRow==orderLineRead.indexOf(readdata)?Color(0xff6F91CB).withOpacity(.1):Colors.white),

                        cells: [
                          // DataCell(
                          //     Text("${orderLineRead.indexOf(readdata)+1}"??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal)),
                          //     onTap: (){
                          //       editing=true;
                          //       selectedRow=orderLineRead.indexOf(readdata);
                          //       tableIndex=orderLineRead.indexOf(readdata);
                          //       this.readdata = readdata;
                          //       context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                          //       _updateTextControllersRead(readdata);
                          //       setState(() {
                          //
                          //       });
                          //     },
                          // ),
                          DataCell(
                              Container(
                                  width: context.blockSizeHorizontal*23,
                                  padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*.1,vertical: context.blockSizeHorizontal*.3),
                                  child: Text(readdata.variantName?.toString().toUpperCase()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16))),
                              onTap: () {
                                editing=true;
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                selectedRow=orderLineRead.indexOf(readdata);
                                tableIndex=orderLineRead.indexOf(readdata);
                                this.readdata = readdata;
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Row(
                                children: [
                                  Text(readdata.sellingPrice?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16),),
                                  SizedBox(width: 10,),
                                  if(readdata.needApproval==true)...[
                                    Tooltip(
                                      message: "Need Approval",
                                      child: Container(
                                        // height: context.blockSizeHorizontal*2.4,
                                        // width: context.blockSizeHorizontal*2.4,
                                          child: SvgPicture.string(LeftMenuSvgs().approvlCapIcon,
                                            color: Color(0xffEB5757),
                                            height: context.blockSizeHorizontal*1.1,
                                            width: context.blockSizeHorizontal*1.1,
                                            // color:widget.iconColor,
                                          )),
                                    ),
                                  ]
                                ],
                              ),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                tableIndex=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                this.readdata = readdata;
                                setState(() {
                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.uomName?.toString().toTitleCase()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                tableIndex=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                this.readdata = readdata;

                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.quantity?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                tableIndex=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);

                                print("Index${variantList.indexOf(variant)}");
                                this.readdata = readdata;
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.discountBasedOn?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                tableIndex=orderLineRead.indexOf(readdata);
                                this.readdata = readdata;
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.discount?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                tableIndex=orderLineRead.indexOf(readdata);
                                this.readdata = readdata;
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),

                          DataCell(
                              Text(readdata.vatableAmount?.toString()??"",style: TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                Variable.customerId=readdata.variantId.toString();
                                selectedRow=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);

                                tableIndex=orderLineRead.indexOf(readdata);
                                this.readdata = readdata;
                                widget.historyEnable(true);
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.vat?.toString()??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16)),
                              onTap: (){
                                editing=true;
                                selectedRow=orderLineRead.indexOf(readdata);
                                context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);
                                tableIndex=orderLineRead.indexOf(readdata);
                                this.readdata = readdata;
                                setState(() {

                                });
                                _updateTextControllersRead(readdata);
                              }
                          ),
                          DataCell(
                              Text(readdata.totalAmount?.toString()??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==orderLineRead.indexOf(readdata)?FontWeight.bold:FontWeight.normal,fontSize: 16),),onTap: (){
                            editing=true;
                            selectedRow=orderLineRead.indexOf(readdata);

                            print("selectedRow$selectedRow");

                            context.read<ReadVariantCubit>().getVariantRead(readdata.variantId??0);


                            tableIndex=orderLineRead.indexOf(readdata);
                            this.readdata = readdata;
                            setState(() {

                            });
                            _updateTextControllersRead(readdata);
                          }
                          ),
                          DataCell(
                            Row(
                              children: [
                                if(orderLineRead[orderLineRead.indexOf(readdata)].hubCode?.isNotEmpty==true) Tooltip(
                                  message: orderLineRead[orderLineRead.indexOf(readdata)].hubName??orderLineRead[orderLineRead.indexOf(readdata)].hubCode??"",
                                  child: IconButton(
                                      onPressed: () {
                                        this.readdata = readdata;
                                        tableIndex=orderLineRead.indexOf(readdata);
                                        showDailogPopUp(
                                          context,
                                          HubListPopUp(
                                            isOntap: orderLineRead[orderLineRead.indexOf(readdata)].id==null?true:false,
                                            variantCode:   orderLineRead[tableIndex!].variantCode,
                                            selectedhub:  orderLineRead[tableIndex!].hubCode??"",



                                            onTap: ( HubResponseModel val){
                                              if(orderLineRead[orderLineRead.indexOf(readdata)].id==null){
                                                patchList[tableIndex!]= patchList[tableIndex!].copyWith(
                                                  hubCode: val?.hubCode?.isNotEmpty==true?val.hubCode:null,
                                                  hubName: val.hubStockName??"",
                                                );
                                              }


                                              Navigator.pop(context);


                                            },
                                          ),
                                        );
// new function here
                                      },
                                      icon:Icon(Icons.home_outlined,size: 17,)
                                    // Image.asset("asset_images/deleteIconTable.png",height: 15,width: 15,fit: BoxFit.fitHeight,)
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      if(widget.isHold){
                                        context.showSnackBarSuccess("please press unHold");
                                      }else{
                                        showDailogPopUp(
                                            context,
                                            //     AdminCreationUser()
                                            LogoutPopup(
                                              message: "Are you sure you want to delete the Product?",
                                              // table:table,
                                              // clear:clear(),

                                              onPressed:()  {

                                                this.readdata = readdata;
                                                if(readOrders?.invoiceStatus=="pending"){
                                                  print("entererd");
                                                  _deletereadTextControllers();
                                                  allTotalCalculation();/// new function here
                                                  /// c
                                                  // Navigator.pop(context);
                                                }
                                                else{
                                                  context.showSnackBarError("Invoiced Order Cant to be change");
                                                }


                                              },



                                            ));
                                      }



                                    },
                                    icon:const Icon(Icons.delete,color: Colors.red,size: 17,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                        .toList():
                    variantList
                        .map(
                          (variant) => DataRow(
                            color: MaterialStateProperty.all(selectedRow==variantList.indexOf(variant)?Color(0xff6F91CB).withOpacity(.1):Colors.white),
                        cells: [
                          // DataCell(
                          //   Container(
                          //
                          //
                          //       child: Text("${variantList.indexOf(variant)+1}"??"",style:TextStyle(color: Colors.black,fontWeight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),)),
                          //     onTap: (){
                          //       editing=true;
                          //       selectedRow=variantList.indexOf(variant);
                          //       tableIndex=variantList.indexOf(variant);
                          //       Variable.customerId=variant.id.toString();
                          //       context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                          //       this.variant = variant;
                          //       widget.historyEnable(true);
                          //       _updateTextControllers(variant);
                          //     }
                          // ),
                          DataCell(
                            Container(
                              width: context.blockSizeHorizontal*22,
                              padding: EdgeInsets.all(context.blockSizeHorizontal*.1),
                              child: Text(variant.name?.toUpperCase()??"",
                                style:tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal,
                                ),),
                            ),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                Variable.customerId=variant.id.toString();
                                tableIndex=variantList.indexOf(variant);
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                this.variant = variant;
                                widget.historyEnable(true);
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                            Row(
                              children: [
                                Text(variant.priceData?.toString()??"",style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal,),),
                                SizedBox(width: 10,),
                           if(variant.needApproval==true)...[

                             Tooltip(
                               message: "Need Approval",
                               child: Container(
                                 // height: context.blockSizeHorizontal*2.4,
                                 // width: context.blockSizeHorizontal*2.4,
                                   child: SvgPicture.string(LeftMenuSvgs().approvlCapIcon,
                                     color: Color(0xffEB5757),
                                     height: context.blockSizeHorizontal*1.1,
                                     width: context.blockSizeHorizontal*1.1,
                                     // color:widget.iconColor,
                                   )),
                             ),
                           ]

                              ],
                            ),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                tableIndex=variantList.indexOf(variant);
                                Variable.customerId=variant.id.toString();
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                this.variant = variant;
                                widget.historyEnable(true);
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                            Text(variant.salesUomName??"",style: tableRowTextStyle( fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                tableIndex=variantList.indexOf(variant);
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                this.variant = variant;
                                widget.historyEnable(true);
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                            Text(variant.qty?.toString()??"",
                              style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal,),),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                tableIndex=variantList.indexOf(variant);
                                Variable.customerId=variant.id.toString();
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                this.variant = variant;
                                widget.historyEnable(true);
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                              Text(variant.discountBasedOn?.toString()??"",style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                tableIndex=variantList.indexOf(variant);
                                Variable.customerId=variant.id.toString();
                                this.variant = variant;
                                widget.historyEnable(true);
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                            Text(variant.discountData?.discountPercentagePrice?.toString()??"",style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                tableIndex=variantList.indexOf(variant);
                                Variable.customerId=variant.id.toString();
                                widget.historyEnable(true);
                                this.variant = variant;
                                _updateTextControllers(variant);
                              }
                          ),

                          DataCell(
                            Text(variant.vatable?.toString()??"",style:tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),),
                              onTap: (){
                                editing=true;
                                selectedRow=variantList.indexOf(variant);
                                print("Index${variantList.indexOf(variant)}");
                                context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                                Variable.customerId=variant.id.toString();
                                tableIndex=variantList.indexOf(variant);
                                widget.historyEnable(true);
                                this.variant = variant;
                                _updateTextControllers(variant);
                              }
                          ),
                          DataCell(
                            Text(variant.vat?.toString()??"",style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal,),),
                            onTap: (){
                              editing=true;
                              selectedRow=variantList.indexOf(variant);
                              tableIndex=variantList.indexOf(variant);
                              context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                              Variable.customerId=variant.id.toString();
                              widget.historyEnable(true);
                              this.variant = variant;
                              _updateTextControllers(variant);
                            }
                          ),
                          DataCell(
                            Text(variant.total?.toString()??"",style: tableRowTextStyle(fontweight: selectedRow==variantList.indexOf(variant)?FontWeight.bold:FontWeight.normal),),
                              onTap: (){
                            editing=true;
                            selectedRow=variantList.indexOf(variant);
                            tableIndex=variantList.indexOf(variant);
                            context.read<ReadVariantCubit>().getVariantRead(variant.id??0);
                            Variable.customerId=variant.id.toString();
                            widget.historyEnable(true);
                            this.variant = variant;
                            _updateTextControllers(variant);
                          }
                          ),
                          DataCell(
                            Row(
                              children: [
                          if(newList[variantList.indexOf(variant)].hubCode?.isNotEmpty==true) Tooltip(
                            message: newList[variantList.indexOf(variant)].hubName??newList[variantList.indexOf(variant)].hubCode,
                            child: IconButton(
                                    onPressed: () {
                                      this.variant = variant;
                                      tableIndex=variantList.indexOf(variant);
                                      showDailogPopUp(
                                        context,
                                        HubListPopUp(
                                          variantCode:   newList[tableIndex!].variantCode,
                                          selectedhub:  newList[tableIndex!].hubCode??"",



                                          onTap: ( HubResponseModel val){

                                            newList[tableIndex!]= newList[tableIndex!].copyWith(
                                              hubCode: val?.hubCode?.isNotEmpty==true?val.hubCode:null,
                                              hubName: val.hubStockName??""
                                            );
                                            Navigator.pop(context);


                                          },
                                        ),
                                      );
// new function here
                                    },
                                    icon:Icon(Icons.home_outlined,size: 16,)
                                    // Image.asset("asset_images/deleteIconTable.png",height: 15,width: 15,fit: BoxFit.fitHeight,)
                                  ),
                          ),
                                IconButton(
                                  onPressed: () {
                                    showDailogPopUp(
                                        context,
                                        //     AdminCreationUser()
                                        LogoutPopup(
                                          message: "Are you sure you want to delete the Product?",
                                          // table:table,
                                          // clear:clear(),

                                          onPressed:()  {
                                            if(widget.isHold){
                                              context.showSnackBarSuccess("please press unHold");
                                            }else{
                                              this.variant = variant;


                                              _deleteTextControllers();
                                              allTotalCalculation();
                                            }



                                            // Navigator.pop(context);
                                            // n
                                            // ew function here
                                          },



                                        ));

                                  },
                                  icon:Icon(Icons.delete,color: Colors.red)
                                  // Image.asset("asset_images/deleteIconTable.png",height: 15,width: 15,fit: BoxFit.fitHeight,)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        .toList()
                ),
              )
            ),
          )
        ],
      );
    },
),
),
),
);
  }
}


TextStyle tableRowTextStyle ({FontWeight? fontweight}){
  return  TextStyle(color: Colors.black,fontWeight:fontweight,fontSize: 16);
}

Widget reUsableTableRow(name,BuildContext context,{TextStyle? style}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*.1,vertical: context.blockSizeHorizontal*.3),
    child: Text(name??"",style: style??TextStyle(fontSize: 17),),


  );
}










