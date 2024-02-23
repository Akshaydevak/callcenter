import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class AdminCreationModel with _$AdminCreationModel{
  const factory AdminCreationModel({
    final String? email,
    final String? gender,
    final String? nationality,
    final String? department,
    final String? password,
    final String? designation,
    final bool? loading,
    @JsonKey(name: "first_name")final String? fistName,
    @JsonKey(name: "employee_code")final String? employeeCode,
    @JsonKey(name: "last_name")final String? lastName,
    @JsonKey(name: "phone_number")final String? phoneNumber,
    @JsonKey(name: "business_code")final String? buinessCode,
    @JsonKey(name: "official_role")final int? officialRole,
    @JsonKey(name: "additional_roles")final List<int>? additonalRole,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,



  })=_AdminCreationModel;
  factory AdminCreationModel.fromJson(Map<String,dynamic>json)=>
      _$AdminCreationModelFromJson(json);
}
@freezed
class GeneralRoleModel with _$GeneralRoleModel{
  const factory GeneralRoleModel({
    final int? id,
    final String? code,
    final String? role,
    final String? description,

    @JsonKey(name: "role_type")final String? roleType,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,




  })=_GeneralRoleModel;
  factory GeneralRoleModel.fromJson(Map<String,dynamic>json)=>
      _$GeneralRoleModelFromJson(json);
}
@freezed
class DesignationListModel with _$DesignationListModel{
  const factory DesignationListModel({
    final int? id,
    final String? code,
    final String? title,
    final String? description,
    final int? organization,

    @JsonKey(name: "department_code")final String? departmentCode,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,




  })=_DesignationListModel;
  factory DesignationListModel.fromJson(Map<String,dynamic>json)=>
      _$DesignationListModelFromJson(json);
}
@freezed
class AdminUserReadModel with _$AdminUserReadModel{
  const factory AdminUserReadModel({
    final int? id,
    final String? mobile,
    final String? fname,
    final String? lname,
    final String? gender,
    final String? email,
    final String? country,
    final String? designation,
    final String? role,

    @JsonKey(name: "employee_code")final String? employeeCode,
    @JsonKey(name: "mobile_code")final String? mobilecode,
    @JsonKey(name: "country_name")final String? countryName,
    @JsonKey(name: "mobile_country")final String? mobileCountry,
    @JsonKey(name: "role_id")final int? roleId,
    @JsonKey(name: "additional_roles",)final List<AdditionalRole>? additionalRole,




  })=_AdminUserReadModel;
  factory AdminUserReadModel.fromJson(Map<String,dynamic>json)=>
      _$AdminUserReadModelFromJson(json);
}
@freezed
class AdditionalRole with _$AdditionalRole{
  const factory AdditionalRole({
    final int? uid,

    final String? name,





  })=_AdditionalRole;
  factory AdditionalRole.fromJson(Map<String,dynamic>json)=>
      _$AdditionalRoleFromJson(json);
}

@freezed
class ChannelListModel with _$ChannelListModel{
  const factory ChannelListModel({
    final int? id,

    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "search_name")final String? searchName,
    @JsonKey(name: "display_name")final String? diaplayName,
    @JsonKey(name: "name")final String? channelName,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "channel_address")final ChannelAdress? channelAdress,






  })=_ChannelListModel;
  factory ChannelListModel.fromJson(Map<String,dynamic>json)=>
      _$ChannelListModelFromJson(json);
}

@freezed
class ChannelAdress with _$ChannelAdress{
  const factory ChannelAdress({
    final int? id,
    final String? state,
    final String? country,
    final String? email,
    final String? contacts,
    // final AdminContact? contact,


    @JsonKey(name: "address_one")final String? addressone,
    @JsonKey(name: "address_two")final String? addresstwo,
    @JsonKey(name: "city_or_town")final String? cityOrTown,







  })=_ChannelAdress;
  factory ChannelAdress.fromJson(Map<String,dynamic>json)=>
      _$ChannelAdressFromJson(json);
}
@freezed
class AdminContact with _$AdminContact{
  const factory AdminContact({
    final int? id,
    final String? primary,








  })=_AdminContact;
  factory AdminContact.fromJson(Map<String,dynamic>json)=>
      _$AdminContactFromJson(json);
}

@freezed
class AdminChannelCreateModel with _$AdminChannelCreateModel{
  const factory AdminChannelCreateModel({
    final int? id,
    final String? location,
    final String? email,
    final String? country,
    final String? state,

    final String? postalcode,
    final String? name,
    final String? description,

    @JsonKey(name: "address_one")final String? addressOne,
    @JsonKey(name: "city_town")final String? cityTown,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "user_id")final String? userId,
    @JsonKey(name: "phone_number")final String? phoneNumber,
    @JsonKey(name: "search_name")final String? searchName,
    @JsonKey(name: "land_mark")final String? landmark,
    @JsonKey(name: "display_name")final String? displayName,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "daily_gp_target")final double? dailyGpTarget,
    @JsonKey(name: "weekly_targeted_gp")final double? weeklyTargetGp,
    @JsonKey(name: "yearly_targeted_gp")final double? yearlyTargetGp,
    @JsonKey(name: "monthly_targeted_gp")final double? monthlyTargetGp,






  })=_AdminChannelCreateModel;
  factory AdminChannelCreateModel.fromJson(Map<String,dynamic>json)=>
      _$AdminChannelCreateModelFromJson(json);
}

@freezed
class AdminChannelReadModel with _$AdminChannelReadModel{
  const factory AdminChannelReadModel({
    final int? id,
    final String? location,
    final String? email,
    final String? country,
    final String? state,

    final String? postalcode,
    final String? name,
    final String? description,

    @JsonKey(name: "address_one")final String? addressOne,
    @JsonKey(name: "city_town")final String? cityTown,
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "channel_name")final String? channelName,
    @JsonKey(name: "channel_id")final int? channelId,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "user_id")final String? userId,
    @JsonKey(name: "phone_number")final String? phoneNumber,
    @JsonKey(name: "search_name")final String? searchName,
    @JsonKey(name: "land_mark")final String? landmark,
    @JsonKey(name: "display_name")final String? displayName,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "daily_gp_target")final double? dailyGpTarget,
    @JsonKey(name: "weekly_targeted_gp")final double? weeklyTargetGp,
    @JsonKey(name: "yearly_targeted_gp")final double? yearlyTargetGp,
    @JsonKey(name: "monthly_targeted_gp")final double? monthlyTargetGp,






  })=_AdminChannelReadModel;
  factory AdminChannelReadModel.fromJson(Map<String,dynamic>json)=>
      _$AdminChannelReadModelFromJson(json);
}

@freezed
class UserEmployeeListModel with _$UserEmployeeListModel{
  const factory UserEmployeeListModel({
    final int? id,
    final int? role,
    final String? fname,
    final String? lname,
    final String? gender,
    final String? country,
    final String? designation,


    @JsonKey(name: "primary_mail")final String? primaryMail,
    @JsonKey(name: "primary_mobile")final String? primaryMobile,
    @JsonKey(name: "profile_pic")final String? profilePic,
    @JsonKey(name: "date_joined")final String? dateJoined,
    @JsonKey(name: "role_name")final String? roleName,
    @JsonKey(name: "employee_code")final String? employeeCode,
    @JsonKey(name: "organization_type")final String? organizationType,
    @JsonKey(name: "organization_code")final String? organizationCode,
    @JsonKey(name: "alternative_mobile_no")final String? alternativeMobileNumber,
    @JsonKey(name: "alternative_email")final String? alternativeEmail,
    @JsonKey(name: "legalentity_code")final String? legalengtityCode,
    @JsonKey(name: "acess_site")final String? accessSite,
    @JsonKey(name: "user_name")final String? userName,
    @JsonKey(name: "user_login")final int? userLogin,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,




  })=_UserEmployeeListModel;
  factory UserEmployeeListModel.fromJson(Map<String,dynamic>json)=>
      _$UserEmployeeListModelFromJson(json);
}
@freezed
class ChannelUserCountModel with _$ChannelUserCountModel{
  const factory ChannelUserCountModel({



    final int? channels,
    final int? employees,
    final int? directores,





  })=_ChannelUserCountModel;
  factory ChannelUserCountModel.fromJson(Map<String,dynamic>json)=>
      _$ChannelUserCountModelFromJson(json);
}


