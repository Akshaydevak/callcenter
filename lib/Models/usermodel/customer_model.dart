import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';
@freezed
class UserCustomerStatementPostModel with _$UserCustomerStatementPostModel{
  const factory UserCustomerStatementPostModel({
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "start_date")final String? startDate,
    @JsonKey(name: "end_date")final String? endDate,

  })=_UserCustomerStatementPostModel;
  factory UserCustomerStatementPostModel.fromJson(Map<String,dynamic>json)=>
      _$UserCustomerStatementPostModelFromJson(json);
}

@freezed
class UserCustomerStatementListModel with _$UserCustomerStatementListModel{
  const factory UserCustomerStatementListModel({
    final int? id,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "channel_details_id")final int? channelDetailsId,
    @JsonKey(name: "invoice_code")final String? invoiceCode,
    @JsonKey(name: "invoiced_date")final String? invoiceDate,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "total_amount")final double? totalAmount,

  })=_UserCustomerStatementListModel;
  factory UserCustomerStatementListModel.fromJson(Map<String,dynamic>json)=>
      _$UserCustomerStatementListModelFromJson(json);
}
