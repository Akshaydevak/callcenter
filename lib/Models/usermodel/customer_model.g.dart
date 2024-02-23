// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCustomerStatementPostModel _$$_UserCustomerStatementPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserCustomerStatementPostModel(
      channelCode: json['channel_code'] as String?,
      customerCode: json['customer_code'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$$_UserCustomerStatementPostModelToJson(
        _$_UserCustomerStatementPostModel instance) =>
    <String, dynamic>{
      'channel_code': instance.channelCode,
      'customer_code': instance.customerCode,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

_$_UserCustomerStatementListModel _$$_UserCustomerStatementListModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserCustomerStatementListModel(
      id: json['id'] as int?,
      orderId: json['order_id'] as int?,
      channelDetailsId: json['channel_details_id'] as int?,
      invoiceCode: json['invoice_code'] as String?,
      invoiceDate: json['invoiced_date'] as String?,
      orderType: json['order_type'] as String?,
      customerName: json['customer_name'] as String?,
      customerCode: json['customer_code'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UserCustomerStatementListModelToJson(
        _$_UserCustomerStatementListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'channel_details_id': instance.channelDetailsId,
      'invoice_code': instance.invoiceCode,
      'invoiced_date': instance.invoiceDate,
      'order_type': instance.orderType,
      'customer_name': instance.customerName,
      'customer_code': instance.customerCode,
      'invoice_status': instance.invoiceStatus,
      'total_amount': instance.totalAmount,
    };
