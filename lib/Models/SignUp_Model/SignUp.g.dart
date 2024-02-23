// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SignUp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpData _$$_SignUpDataFromJson(Map<String, dynamic> json) =>
    _$_SignUpData(
      firstName: json['fname'] as String?,
      lastName: json['lname'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      mobile: json['mobile'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
      legalEntity: json['legal_entiry'] as String?,
      orgCode: json['organization_code'] as String?,
      acessSite: json['acess_site'] as String?,
      isLoggedIn: json['isLoggedIn'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SignUpDataToJson(_$_SignUpData instance) =>
    <String, dynamic>{
      'fname': instance.firstName,
      'lname': instance.lastName,
      'gender': instance.gender,
      'country': instance.country,
      'mobile': instance.mobile,
      'password': instance.password,
      'email': instance.email,
      'token': instance.token,
      'legal_entiry': instance.legalEntity,
      'organization_code': instance.orgCode,
      'acess_site': instance.acessSite,
      'isLoggedIn': instance.isLoggedIn,
    };

_$_SignInData _$$_SignInDataFromJson(Map<String, dynamic> json) =>
    _$_SignInData(
      userName: json['user_name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_SignInDataToJson(_$_SignInData instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'password': instance.password,
    };
