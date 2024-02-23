import 'package:freezed_annotation/freezed_annotation.dart';

part 'Payment_Model.freezed.dart';
part 'Payment_Model.g.dart';
@freezed
class PaymentOptions with _$PaymentOptions{
  const factory PaymentOptions({

    @JsonKey(name: "tittle")final String? title,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "icon")final String? icon,
    @JsonKey(name: "code")final String? code,
    @JsonKey(name: "payment_value")final PaymentValue? paymentValue,

  })=_PaymentOptions;
  factory PaymentOptions.fromJson(Map<String,dynamic>json)=>
      _$PaymentOptionsFromJson(json);
}

@freezed
class PaymentValue with _$PaymentValue{
  const factory PaymentValue({

    @JsonKey(name: "upid")final String? upId,

  })=_PaymentValue;
  factory PaymentValue.fromJson(Map<String,dynamic>json)=>
      _$PaymentValueFromJson(json);
}

@freezed
class PaymentProcessList with _$PaymentProcessList{
  const factory PaymentProcessList({

    final int? id,
    @JsonKey(name: "user_code")final String? userCode,
    @JsonKey(name: "order")final String? orderId,
    @JsonKey(name: "payment_method")final String? paymentMethod,
    @JsonKey(name: "transaction_code")final String? transactionCode,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "created")final String? created,
    @JsonKey(name: "updated")final String? updated,
    @JsonKey(name: "acess_site")final String? accessSite,
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "legal_code")final String? legalCode,
    @JsonKey(name: "business_code")final String? businessCode,
    @JsonKey(name: "post_response")final PostResponse? postResponse,

  })=_PaymentProcessList;
  factory PaymentProcessList.fromJson(Map<String,dynamic>json)=>
      _$PaymentProcessListFromJson(json);
}


@freezed
class PostResponse with _$PostResponse{
  const factory PostResponse({


    @JsonKey(name: "status")final String? status,
    @JsonKey(name: "contact")final String? contact,
    @JsonKey(name: "order_id")final String? orderId,
    @JsonKey(name: "process_id")final int? processId,
    @JsonKey(name: "method_code")final String? methodCode,
    @JsonKey(name: "total_amount")final double? total,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "transaction_code")final String? transactionCode,


  })=_PostResponse;
  factory PostResponse.fromJson(Map<String,dynamic>json)=>
      _$PostResponseFromJson(json);
}

