import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/SignUp_Model/SignUp.dart';

class UserPreferences {
  Future<bool> saveUser(SignUpData user) async {
    print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('fname', user.firstName??"");
    prefs.setString('token', user.token??"");
    prefs.setString('organizationCode', user.orgCode??"");
    prefs.setString('legal_entiry', user.legalEntity??"");


    prefs.setBool("isLoggedIn", true);

    return prefs.commit();
  }

  Future<bool> saveInventoryList(InventoryListModel model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('addressOne', model?.addressOne??"");
    prefs.setString('description', model?.description??"");
    prefs.setString('phoneNumber', model?.address?.contact?.primary??"");
    prefs.setString('addressTwo', model?.addressTwo??"");
    prefs.setString('landmark', model?.landMark??"");
    prefs.setString('name', model?.name??"");
    prefs.setString('inventoryEmail', model?.address?.email??"");
    prefs.setString('company_display_name', model?.companyDisplayName??"");
    prefs.setString('countryName', model?.address?.countryName??"");
    prefs.setString('city_or_town', model?.address?.cityz??"");
    prefs.setString('states', model?.address?.state??"");

    prefs.setString('companylogo', model?.companyLogo??"");
    prefs.setString('storeLogo', model?.storeLogo??"");
    prefs.setBool("isInventoryListExist", true);
    print(prefs.getBool("isInventoryListExist"));


    return prefs.commit();

  }
  Future<bool> saveCustomerGroupDatas(CustomerGroupModel model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('customerGroupCode', model?.code??"");
    prefs.setString('customerGroupName', model?.name??"");
    return prefs.commit();

  }
  Future<InventoryListModel> getInventoryList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    String?  companyLogo = prefs.getString("companylogo");
    String?  storeLogo = prefs.getString("storeLogo");
    String?  contact = prefs.getString("phoneNumber");
    String?  description = prefs.getString("description");

    String?  addressOne = prefs.getString("addressOne");
    String?  addressTwo = prefs.getString("addressTwo");
    String?  landMark = prefs.getString("landmark");
    String?  name = prefs.getString("name");
    String?  inventoryEmail = prefs.getString("inventoryEmail");
    String?  companyName = prefs.getString("company_display_name");
    String?  states = prefs.getString("states");
    String?  city = prefs.getString("city_or_town");
    String?  countryName = prefs.getString("countryName");
    bool?  inventoryExist = prefs.getBool("isInventoryListExist");

    return InventoryListModel(

        addressOne: addressOne,
        addressTwo: addressTwo,

        primary: contact,
        landMark: landMark,
        companyDisplayName: companyName,
        countryName:countryName ,
        cityz: city,
        state: states,
        description: description,


        companyLogo:companyLogo ,
        storeLogo: storeLogo,


        email: inventoryEmail,
        isInventoryExist:inventoryExist,
        name: name



    );

  }

}







  Future<SignUpData> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String?  username = prefs.getString("fname");
    String?  token = prefs.getString("token");
    bool?  isLoggedIn = prefs.getBool("isLoggedIn");


    return SignUpData(
      firstName: username,
      token: token,
      isLoggedIn: isLoggedIn



    );

  }

