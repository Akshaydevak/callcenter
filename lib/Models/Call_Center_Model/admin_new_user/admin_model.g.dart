// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminCreationModel _$$_AdminCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdminCreationModel(
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      nationality: json['nationality'] as String?,
      department: json['department'] as String?,
      password: json['password'] as String?,
      designation: json['designation'] as String?,
      loading: json['loading'] as bool?,
      fistName: json['first_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      buinessCode: json['business_code'] as String?,
      officialRole: json['official_role'] as int?,
      additonalRole: (json['additional_roles'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AdminCreationModelToJson(
        _$_AdminCreationModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'gender': instance.gender,
      'nationality': instance.nationality,
      'department': instance.department,
      'password': instance.password,
      'designation': instance.designation,
      'loading': instance.loading,
      'first_name': instance.fistName,
      'employee_code': instance.employeeCode,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'business_code': instance.buinessCode,
      'official_role': instance.officialRole,
      'additional_roles': instance.additonalRole,
      'is_active': instance.isActive,
    };

_$_GeneralRoleModel _$$_GeneralRoleModelFromJson(Map<String, dynamic> json) =>
    _$_GeneralRoleModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      role: json['role'] as String?,
      description: json['description'] as String?,
      roleType: json['role_type'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GeneralRoleModelToJson(_$_GeneralRoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'role': instance.role,
      'description': instance.description,
      'role_type': instance.roleType,
      'is_active': instance.isActive,
    };

_$_DesignationListModel _$$_DesignationListModelFromJson(
        Map<String, dynamic> json) =>
    _$_DesignationListModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      organization: json['organization'] as int?,
      departmentCode: json['department_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DesignationListModelToJson(
        _$_DesignationListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'organization': instance.organization,
      'department_code': instance.departmentCode,
      'is_active': instance.isActive,
    };

_$_AdminUserReadModel _$$_AdminUserReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdminUserReadModel(
      id: json['id'] as int?,
      mobile: json['mobile'] as String?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      designation: json['designation'] as String?,
      role: json['role'] as String?,
      employeeCode: json['employee_code'] as String?,
      mobilecode: json['mobile_code'] as String?,
      countryName: json['country_name'] as String?,
      mobileCountry: json['mobile_country'] as String?,
      roleId: json['role_id'] as int?,
      additionalRole: (json['additional_roles'] as List<dynamic>?)
          ?.map((e) => AdditionalRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdminUserReadModelToJson(
        _$_AdminUserReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'fname': instance.fname,
      'lname': instance.lname,
      'gender': instance.gender,
      'email': instance.email,
      'country': instance.country,
      'designation': instance.designation,
      'role': instance.role,
      'employee_code': instance.employeeCode,
      'mobile_code': instance.mobilecode,
      'country_name': instance.countryName,
      'mobile_country': instance.mobileCountry,
      'role_id': instance.roleId,
      'additional_roles': instance.additionalRole,
    };

_$_AdditionalRole _$$_AdditionalRoleFromJson(Map<String, dynamic> json) =>
    _$_AdditionalRole(
      uid: json['uid'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AdditionalRoleToJson(_$_AdditionalRole instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
    };

_$_ChannelListModel _$$_ChannelListModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelListModel(
      id: json['id'] as int?,
      channelCode: json['channel_code'] as String?,
      searchName: json['search_name'] as String?,
      diaplayName: json['display_name'] as String?,
      channelName: json['name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      channelAdress: json['channel_address'] == null
          ? null
          : ChannelAdress.fromJson(
              json['channel_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChannelListModelToJson(_$_ChannelListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_code': instance.channelCode,
      'search_name': instance.searchName,
      'display_name': instance.diaplayName,
      'name': instance.channelName,
      'inventory_id': instance.inventoryId,
      'channel_address': instance.channelAdress,
    };

_$_ChannelAdress _$$_ChannelAdressFromJson(Map<String, dynamic> json) =>
    _$_ChannelAdress(
      id: json['id'] as int?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      contacts: json['contacts'] as String?,
      addressone: json['address_one'] as String?,
      addresstwo: json['address_two'] as String?,
      cityOrTown: json['city_or_town'] as String?,
    );

Map<String, dynamic> _$$_ChannelAdressToJson(_$_ChannelAdress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'country': instance.country,
      'email': instance.email,
      'contacts': instance.contacts,
      'address_one': instance.addressone,
      'address_two': instance.addresstwo,
      'city_or_town': instance.cityOrTown,
    };

_$_AdminContact _$$_AdminContactFromJson(Map<String, dynamic> json) =>
    _$_AdminContact(
      id: json['id'] as int?,
      primary: json['primary'] as String?,
    );

Map<String, dynamic> _$$_AdminContactToJson(_$_AdminContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'primary': instance.primary,
    };

_$_AdminChannelCreateModel _$$_AdminChannelCreateModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdminChannelCreateModel(
      id: json['id'] as int?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      postalcode: json['postalcode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      addressOne: json['address_one'] as String?,
      cityTown: json['city_town'] as String?,
      inventoryId: json['inventory_id'] as String?,
      userId: json['user_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
      searchName: json['search_name'] as String?,
      landmark: json['land_mark'] as String?,
      displayName: json['display_name'] as String?,
      trnNumber: json['trn_number'] as String?,
      dailyGpTarget: (json['daily_gp_target'] as num?)?.toDouble(),
      weeklyTargetGp: (json['weekly_targeted_gp'] as num?)?.toDouble(),
      yearlyTargetGp: (json['yearly_targeted_gp'] as num?)?.toDouble(),
      monthlyTargetGp: (json['monthly_targeted_gp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AdminChannelCreateModelToJson(
        _$_AdminChannelCreateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'email': instance.email,
      'country': instance.country,
      'state': instance.state,
      'postalcode': instance.postalcode,
      'name': instance.name,
      'description': instance.description,
      'address_one': instance.addressOne,
      'city_town': instance.cityTown,
      'inventory_id': instance.inventoryId,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'search_name': instance.searchName,
      'land_mark': instance.landmark,
      'display_name': instance.displayName,
      'trn_number': instance.trnNumber,
      'daily_gp_target': instance.dailyGpTarget,
      'weekly_targeted_gp': instance.weeklyTargetGp,
      'yearly_targeted_gp': instance.yearlyTargetGp,
      'monthly_targeted_gp': instance.monthlyTargetGp,
    };

_$_AdminChannelReadModel _$$_AdminChannelReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdminChannelReadModel(
      id: json['id'] as int?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      postalcode: json['postalcode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      addressOne: json['address_one'] as String?,
      cityTown: json['city_town'] as String?,
      channelCode: json['channel_code'] as String?,
      channelName: json['channel_name'] as String?,
      channelId: json['channel_id'] as int?,
      inventoryId: json['inventory_id'] as String?,
      userId: json['user_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
      searchName: json['search_name'] as String?,
      landmark: json['land_mark'] as String?,
      displayName: json['display_name'] as String?,
      trnNumber: json['trn_number'] as String?,
      dailyGpTarget: (json['daily_gp_target'] as num?)?.toDouble(),
      weeklyTargetGp: (json['weekly_targeted_gp'] as num?)?.toDouble(),
      yearlyTargetGp: (json['yearly_targeted_gp'] as num?)?.toDouble(),
      monthlyTargetGp: (json['monthly_targeted_gp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AdminChannelReadModelToJson(
        _$_AdminChannelReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'email': instance.email,
      'country': instance.country,
      'state': instance.state,
      'postalcode': instance.postalcode,
      'name': instance.name,
      'description': instance.description,
      'address_one': instance.addressOne,
      'city_town': instance.cityTown,
      'channel_code': instance.channelCode,
      'channel_name': instance.channelName,
      'channel_id': instance.channelId,
      'inventory_id': instance.inventoryId,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'search_name': instance.searchName,
      'land_mark': instance.landmark,
      'display_name': instance.displayName,
      'trn_number': instance.trnNumber,
      'daily_gp_target': instance.dailyGpTarget,
      'weekly_targeted_gp': instance.weeklyTargetGp,
      'yearly_targeted_gp': instance.yearlyTargetGp,
      'monthly_targeted_gp': instance.monthlyTargetGp,
    };

_$_UserEmployeeListModel _$$_UserEmployeeListModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserEmployeeListModel(
      id: json['id'] as int?,
      role: json['role'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      designation: json['designation'] as String?,
      primaryMail: json['primary_mail'] as String?,
      primaryMobile: json['primary_mobile'] as String?,
      profilePic: json['profile_pic'] as String?,
      dateJoined: json['date_joined'] as String?,
      roleName: json['role_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      organizationType: json['organization_type'] as String?,
      organizationCode: json['organization_code'] as String?,
      alternativeMobileNumber: json['alternative_mobile_no'] as String?,
      alternativeEmail: json['alternative_email'] as String?,
      legalengtityCode: json['legalentity_code'] as String?,
      accessSite: json['acess_site'] as String?,
      userName: json['user_name'] as String?,
      userLogin: json['user_login'] as int?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserEmployeeListModelToJson(
        _$_UserEmployeeListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'fname': instance.fname,
      'lname': instance.lname,
      'gender': instance.gender,
      'country': instance.country,
      'designation': instance.designation,
      'primary_mail': instance.primaryMail,
      'primary_mobile': instance.primaryMobile,
      'profile_pic': instance.profilePic,
      'date_joined': instance.dateJoined,
      'role_name': instance.roleName,
      'employee_code': instance.employeeCode,
      'organization_type': instance.organizationType,
      'organization_code': instance.organizationCode,
      'alternative_mobile_no': instance.alternativeMobileNumber,
      'alternative_email': instance.alternativeEmail,
      'legalentity_code': instance.legalengtityCode,
      'acess_site': instance.accessSite,
      'user_name': instance.userName,
      'user_login': instance.userLogin,
      'is_active': instance.isActive,
    };

_$_ChannelUserCountModel _$$_ChannelUserCountModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelUserCountModel(
      channels: json['channels'] as int?,
      employees: json['employees'] as int?,
      directores: json['directores'] as int?,
    );

Map<String, dynamic> _$$_ChannelUserCountModelToJson(
        _$_ChannelUserCountModel instance) =>
    <String, dynamic>{
      'channels': instance.channels,
      'employees': instance.employees,
      'directores': instance.directores,
    };
