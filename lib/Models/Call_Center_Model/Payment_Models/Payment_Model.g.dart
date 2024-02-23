// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Payment_Model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentOptions _$$_PaymentOptionsFromJson(Map<String, dynamic> json) =>
    _$_PaymentOptions(
      title: json['tittle'] as String?,
      notes: json['notes'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as String?,
      paymentValue: json['payment_value'] == null
          ? null
          : PaymentValue.fromJson(
              json['payment_value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentOptionsToJson(_$_PaymentOptions instance) =>
    <String, dynamic>{
      'tittle': instance.title,
      'notes': instance.notes,
      'icon': instance.icon,
      'code': instance.code,
      'payment_value': instance.paymentValue,
    };

_$_PaymentValue _$$_PaymentValueFromJson(Map<String, dynamic> json) =>
    _$_PaymentValue(
      upId: json['upid'] as String?,
    );

Map<String, dynamic> _$$_PaymentValueToJson(_$_PaymentValue instance) =>
    <String, dynamic>{
      'upid': instance.upId,
    };

_$_PaymentProcessList _$$_PaymentProcessListFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentProcessList(
      id: json['id'] as int?,
      userCode: json['user_code'] as String?,
      orderId: json['order'] as String?,
      paymentMethod: json['payment_method'] as String?,
      transactionCode: json['transaction_code'] as String?,
      customerCode: json['customer_code'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      paymentStatus: json['payment_status'] as String?,
      notes: json['notes'] as String?,
      created: json['created'] as String?,
      updated: json['updated'] as String?,
      accessSite: json['acess_site'] as String?,
      channelCode: json['channel_code'] as String?,
      legalCode: json['legal_code'] as String?,
      businessCode: json['business_code'] as String?,
      postResponse: json['post_response'] == null
          ? null
          : PostResponse.fromJson(
              json['post_response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentProcessListToJson(
        _$_PaymentProcessList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_code': instance.userCode,
      'order': instance.orderId,
      'payment_method': instance.paymentMethod,
      'transaction_code': instance.transactionCode,
      'customer_code': instance.customerCode,
      'total_amount': instance.totalAmount,
      'payment_status': instance.paymentStatus,
      'notes': instance.notes,
      'created': instance.created,
      'updated': instance.updated,
      'acess_site': instance.accessSite,
      'channel_code': instance.channelCode,
      'legal_code': instance.legalCode,
      'business_code': instance.businessCode,
      'post_response': instance.postResponse,
    };

_$_PostResponse _$$_PostResponseFromJson(Map<String, dynamic> json) =>
    _$_PostResponse(
      status: json['status'] as String?,
      contact: json['contact'] as String?,
      orderId: json['order_id'] as String?,
      processId: json['process_id'] as int?,
      methodCode: json['method_code'] as String?,
      total: (json['total_amount'] as num?)?.toDouble(),
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      transactionCode: json['transaction_code'] as String?,
    );

Map<String, dynamic> _$$_PostResponseToJson(_$_PostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'contact': instance.contact,
      'order_id': instance.orderId,
      'process_id': instance.processId,
      'method_code': instance.methodCode,
      'total_amount': instance.total,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'transaction_code': instance.transactionCode,
    };
