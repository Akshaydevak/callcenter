// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Recent_Customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentCustomers _$$_RecentCustomersFromJson(Map<String, dynamic> json) =>
    _$_RecentCustomers(
      id: json['id'] as int?,
      userName: json['username'] as String?,
      email: json['email'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      profilePic: json['profile_pic'] as String?,
      isActive: json['is_active'] as bool?,
      dateJoined: json['date_joined'] as String?,
    );

Map<String, dynamic> _$$_RecentCustomersToJson(_$_RecentCustomers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'email': instance.email,
      'customer_usercode': instance.customerUserCode,
      'profile_pic': instance.profilePic,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined,
    };
