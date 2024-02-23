

import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesCallCenter {
  Future<bool> saveUser(CustomerList user) async {
    print("prefs.getString(username) in Saving :");
    print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setInt("userId", user.userId);
    prefs.setString('customerUserCode', user?.customerUserCode??"");
    prefs.setString('customerName', user?.customerName??"");
    prefs.setInt('id', user.id??0);
    prefs.setInt('customerId', user.customerId??0);
    prefs.setBool('isActive', user?.isActive??false);
    prefs.setBool('isDelete', user?.isDelete??false);
    prefs.setString('mobile', user?.mobile??"");
    prefs.setString('email', user?.email??"");
    // prefs.setString('businessData', user?.businessData??"");
    prefs.setString('businessUnit', user?.businessUnit??"");
    prefs.setString('legalUnit', user?.legalUnit??"");
    prefs.setString('dateJoined', user?.dateJoined??"");
    prefs.setBool("isLoggedIn", true);
    return prefs.commit();
  }


  Future<bool> deleteUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setInt("userId", user.userId);
    prefs.remove('customerUserCode');
    prefs.remove('id');
    prefs.remove('customerId');
    prefs.remove('isActive',);
    prefs.remove('isDelete',);
    prefs.remove('mobile',);
    prefs.remove('email', );
    // prefs.setString('businessData', user?.businessData??"");
    prefs.remove('businessUnit',);
    prefs.remove('legalUnit',);
    prefs.remove('dateJoined',);
    // prefs.remove("isLoggedIn",);
    return prefs.commit();
  }





  Future<bool> saveBuisnessData(BusinessData user,BusinessMeta meta) async {
    print("prefs.getString(username) in Saving :");
    print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setInt("userId", user.userId);
    prefs.setInt('custId', user?.custId??0);
    prefs.setInt('id', user.id??0);
    prefs.setString('taxId', user.taxId??"");
    prefs.setString('businessName', user.businessName??"");
    prefs.setString('businessMode', user.businessMode??"");
    prefs.setString('designation', user.designation??"");
    prefs.setString('impEmpCode', user.impEmpCode??"");
    // prefs.setString('impEmpCode', user.impEmpCode??"");
    prefs.setString('zone', meta.zone??"");
    prefs.setString('area', meta.area??"");
    prefs.setString('city', meta.city??"");
    prefs.setString('street', meta.street??"");
    prefs.setString('country', meta.country??"");
    prefs.setString('landmark', meta.landmark??"");
    prefs.setString('facebook', meta.facebook??"");
    prefs.setString('fullname', meta.fullname??"");
    prefs.setString('snapchat', meta.snapchat??"");
    prefs.setString('whatsapp', meta.whatsapp??"");
    prefs.setString('altEmail', meta.altEmail??"");
    prefs.setString('altMobile', meta.altMobile??"");


    return prefs.commit();
  }
  Future<BusinessMeta> getMetaData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String?  zone = prefs.getString("zone");
    String?  area = prefs.getString("area");
    String?  city = prefs.getString("city");
    String?  street = prefs.getString("street");
    String?  country = prefs.getString("country");
    String?  landmark = prefs.getString("landmark");
    String?  facebook = prefs.getString("facebook");
    String?  fullname = prefs.getString("fullname");
    String?  snapchat = prefs.getString("snapchat");
    String?  whatsapp = prefs.getString("whatsapp");
    String?  altEmail = prefs.getString("altEmail");
    String?  altMobile = prefs.getString("altMobile");


    return BusinessMeta(
      zone: zone,
      area: area,
      city: city,
      street: street,
      country: country,
      landmark: landmark,
      facebook:facebook ,
      fullname:fullname ,
      snapchat:snapchat ,
      whatsapp:whatsapp ,
      altEmail:altEmail ,
      altMobile:altMobile ,

    );

  }
  Future<BusinessData> getBuisnessData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int?  custId = prefs.getInt("custId");
    int?  id = prefs.getInt("id");
    String?  taxId = prefs.getString("taxId");
    String?  businessName = prefs.getString("businessName");
    String?  businessMode = prefs.getString("businessMode");
    String?  designation = prefs.getString("designation");
    String?  impEmpCode = prefs.getString("impEmpCode");


    return BusinessData(
      taxId: taxId,
      custId: custId,
      businessName: businessName,
      businessMode: businessMode,
      designation: designation,
      impEmpCode: impEmpCode,
      id:id ,
    );

  }


  Future<CustomerList> getCaUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String?  customerUserCode = prefs.getString("customerUserCode");
    String?  mobile = prefs.getString("mobile");
    String?  email = prefs.getString("email");
    String?  businessUnit = prefs.getString("businessUnit");
    String?  legalUnit = prefs.getString("legalUnit");
    String?  dateJoined = prefs.getString("dateJoined");
    String?  customerName = prefs.getString("customerName");
    int?  id = prefs.getInt("id");
    int?  customerId = prefs.getInt("customerId");
    bool?  isActive = prefs.getBool("isActive");
    bool?  isDelete = prefs.getBool("isDelete");

    return CustomerList(
      customerUserCode: customerUserCode,
      mobile: mobile,
      businessUnit: businessUnit,
      legalUnit: legalUnit,
      dateJoined: dateJoined,
      email: email,
      id:id ,
      customerId:customerId ,
      isActive:isActive ,
      isDelete:isDelete ,
      customerName: customerName
    );

  }

  //
  //
  //
  // Future<bool> saveInventoryList(InventoryListModel model) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   print("############################");
  //
  //   prefs.setString('contact', model?.contact?.primary??"");
  //   prefs.setString('addressOne', model?.addressOne??"");
  //   prefs.setString('addressTwo', model?.addressTwo??"");
  //   prefs.setString('landmark', model?.landMark??"");
  //   prefs.setString('name', model?.name??"");
  //   prefs.setString('inventoryEmail', model?.email??"");
  //   prefs.setString('companylogo', model?.companyLogo??"");
  //   prefs.setString('storeLogo', model?.storeLogo??"");
  //   prefs.setBool("isInventoryListExist", true);
  //
  //
  //   return prefs.commit();
  //
  // }
  // Future<InventoryListModel> getInventoryList() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   print("############################");
  //
  //   String?  contact = prefs.getString("contact");
  //   String?  companyLogo = prefs.getString("companylogo");
  //   String?  storeLogo = prefs.getString("storeLogo");
  //
  //   String?  addressOne = prefs.getString("addressOne");
  //   String?  addressTwo = prefs.getString("addressTwo");
  //   String?  landMark = prefs.getString("landmark");
  //   String?  name = prefs.getString("name");
  //   String?  inventoryEmail = prefs.getString("inventoryEmail");
  //   bool?  inventoryExist = prefs.getBool("isInventoryListExist");
  //
  //   return InventoryListModel(
  //
  //       addressOne: addressOne,
  //       addressTwo: addressTwo,
  //       landMark: landMark,
  //       companyLogo:companyLogo ,
  //       storeLogo: storeLogo,
  //
  //       email: inventoryEmail,
  //       isInventoryExist:inventoryExist,
  //       name: name
  //
  //
  //
  //   );
  //
  // }

}


