// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Payment_Model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentOptions _$PaymentOptionsFromJson(Map<String, dynamic> json) {
  return _PaymentOptions.fromJson(json);
}

/// @nodoc
mixin _$PaymentOptions {
  @JsonKey(name: "tittle")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_value")
  PaymentValue? get paymentValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentOptionsCopyWith<PaymentOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOptionsCopyWith<$Res> {
  factory $PaymentOptionsCopyWith(
          PaymentOptions value, $Res Function(PaymentOptions) then) =
      _$PaymentOptionsCopyWithImpl<$Res, PaymentOptions>;
  @useResult
  $Res call(
      {@JsonKey(name: "tittle") String? title,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "payment_value") PaymentValue? paymentValue});

  $PaymentValueCopyWith<$Res>? get paymentValue;
}

/// @nodoc
class _$PaymentOptionsCopyWithImpl<$Res, $Val extends PaymentOptions>
    implements $PaymentOptionsCopyWith<$Res> {
  _$PaymentOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? notes = freezed,
    Object? icon = freezed,
    Object? code = freezed,
    Object? paymentValue = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentValue: freezed == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as PaymentValue?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentValueCopyWith<$Res>? get paymentValue {
    if (_value.paymentValue == null) {
      return null;
    }

    return $PaymentValueCopyWith<$Res>(_value.paymentValue!, (value) {
      return _then(_value.copyWith(paymentValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentOptionsCopyWith<$Res>
    implements $PaymentOptionsCopyWith<$Res> {
  factory _$$_PaymentOptionsCopyWith(
          _$_PaymentOptions value, $Res Function(_$_PaymentOptions) then) =
      __$$_PaymentOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tittle") String? title,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "payment_value") PaymentValue? paymentValue});

  @override
  $PaymentValueCopyWith<$Res>? get paymentValue;
}

/// @nodoc
class __$$_PaymentOptionsCopyWithImpl<$Res>
    extends _$PaymentOptionsCopyWithImpl<$Res, _$_PaymentOptions>
    implements _$$_PaymentOptionsCopyWith<$Res> {
  __$$_PaymentOptionsCopyWithImpl(
      _$_PaymentOptions _value, $Res Function(_$_PaymentOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? notes = freezed,
    Object? icon = freezed,
    Object? code = freezed,
    Object? paymentValue = freezed,
  }) {
    return _then(_$_PaymentOptions(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentValue: freezed == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as PaymentValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentOptions implements _PaymentOptions {
  const _$_PaymentOptions(
      {@JsonKey(name: "tittle") this.title,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "icon") this.icon,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "payment_value") this.paymentValue});

  factory _$_PaymentOptions.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentOptionsFromJson(json);

  @override
  @JsonKey(name: "tittle")
  final String? title;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "icon")
  final String? icon;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "payment_value")
  final PaymentValue? paymentValue;

  @override
  String toString() {
    return 'PaymentOptions(title: $title, notes: $notes, icon: $icon, code: $code, paymentValue: $paymentValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentOptions &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.paymentValue, paymentValue) ||
                other.paymentValue == paymentValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, notes, icon, code, paymentValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentOptionsCopyWith<_$_PaymentOptions> get copyWith =>
      __$$_PaymentOptionsCopyWithImpl<_$_PaymentOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentOptionsToJson(
      this,
    );
  }
}

abstract class _PaymentOptions implements PaymentOptions {
  const factory _PaymentOptions(
          {@JsonKey(name: "tittle") final String? title,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "icon") final String? icon,
          @JsonKey(name: "code") final String? code,
          @JsonKey(name: "payment_value") final PaymentValue? paymentValue}) =
      _$_PaymentOptions;

  factory _PaymentOptions.fromJson(Map<String, dynamic> json) =
      _$_PaymentOptions.fromJson;

  @override
  @JsonKey(name: "tittle")
  String? get title;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "icon")
  String? get icon;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "payment_value")
  PaymentValue? get paymentValue;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentOptionsCopyWith<_$_PaymentOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentValue _$PaymentValueFromJson(Map<String, dynamic> json) {
  return _PaymentValue.fromJson(json);
}

/// @nodoc
mixin _$PaymentValue {
  @JsonKey(name: "upid")
  String? get upId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentValueCopyWith<PaymentValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentValueCopyWith<$Res> {
  factory $PaymentValueCopyWith(
          PaymentValue value, $Res Function(PaymentValue) then) =
      _$PaymentValueCopyWithImpl<$Res, PaymentValue>;
  @useResult
  $Res call({@JsonKey(name: "upid") String? upId});
}

/// @nodoc
class _$PaymentValueCopyWithImpl<$Res, $Val extends PaymentValue>
    implements $PaymentValueCopyWith<$Res> {
  _$PaymentValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upId = freezed,
  }) {
    return _then(_value.copyWith(
      upId: freezed == upId
          ? _value.upId
          : upId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentValueCopyWith<$Res>
    implements $PaymentValueCopyWith<$Res> {
  factory _$$_PaymentValueCopyWith(
          _$_PaymentValue value, $Res Function(_$_PaymentValue) then) =
      __$$_PaymentValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "upid") String? upId});
}

/// @nodoc
class __$$_PaymentValueCopyWithImpl<$Res>
    extends _$PaymentValueCopyWithImpl<$Res, _$_PaymentValue>
    implements _$$_PaymentValueCopyWith<$Res> {
  __$$_PaymentValueCopyWithImpl(
      _$_PaymentValue _value, $Res Function(_$_PaymentValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upId = freezed,
  }) {
    return _then(_$_PaymentValue(
      upId: freezed == upId
          ? _value.upId
          : upId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentValue implements _PaymentValue {
  const _$_PaymentValue({@JsonKey(name: "upid") this.upId});

  factory _$_PaymentValue.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentValueFromJson(json);

  @override
  @JsonKey(name: "upid")
  final String? upId;

  @override
  String toString() {
    return 'PaymentValue(upId: $upId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentValue &&
            (identical(other.upId, upId) || other.upId == upId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentValueCopyWith<_$_PaymentValue> get copyWith =>
      __$$_PaymentValueCopyWithImpl<_$_PaymentValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentValueToJson(
      this,
    );
  }
}

abstract class _PaymentValue implements PaymentValue {
  const factory _PaymentValue({@JsonKey(name: "upid") final String? upId}) =
      _$_PaymentValue;

  factory _PaymentValue.fromJson(Map<String, dynamic> json) =
      _$_PaymentValue.fromJson;

  @override
  @JsonKey(name: "upid")
  String? get upId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentValueCopyWith<_$_PaymentValue> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentProcessList _$PaymentProcessListFromJson(Map<String, dynamic> json) {
  return _PaymentProcessList.fromJson(json);
}

/// @nodoc
mixin _$PaymentProcessList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_code")
  String? get userCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_code")
  String? get transactionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  String? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  String? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "acess_site")
  String? get accessSite => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "legal_code")
  String? get legalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "business_code")
  String? get businessCode => throw _privateConstructorUsedError;
  @JsonKey(name: "post_response")
  PostResponse? get postResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentProcessListCopyWith<PaymentProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentProcessListCopyWith<$Res> {
  factory $PaymentProcessListCopyWith(
          PaymentProcessList value, $Res Function(PaymentProcessList) then) =
      _$PaymentProcessListCopyWithImpl<$Res, PaymentProcessList>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_code") String? userCode,
      @JsonKey(name: "order") String? orderId,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "transaction_code") String? transactionCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created") String? created,
      @JsonKey(name: "updated") String? updated,
      @JsonKey(name: "acess_site") String? accessSite,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "legal_code") String? legalCode,
      @JsonKey(name: "business_code") String? businessCode,
      @JsonKey(name: "post_response") PostResponse? postResponse});

  $PostResponseCopyWith<$Res>? get postResponse;
}

/// @nodoc
class _$PaymentProcessListCopyWithImpl<$Res, $Val extends PaymentProcessList>
    implements $PaymentProcessListCopyWith<$Res> {
  _$PaymentProcessListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userCode = freezed,
    Object? orderId = freezed,
    Object? paymentMethod = freezed,
    Object? transactionCode = freezed,
    Object? customerCode = freezed,
    Object? totalAmount = freezed,
    Object? paymentStatus = freezed,
    Object? notes = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? accessSite = freezed,
    Object? channelCode = freezed,
    Object? legalCode = freezed,
    Object? businessCode = freezed,
    Object? postResponse = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      accessSite: freezed == accessSite
          ? _value.accessSite
          : accessSite // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      legalCode: freezed == legalCode
          ? _value.legalCode
          : legalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      businessCode: freezed == businessCode
          ? _value.businessCode
          : businessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postResponse: freezed == postResponse
          ? _value.postResponse
          : postResponse // ignore: cast_nullable_to_non_nullable
              as PostResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostResponseCopyWith<$Res>? get postResponse {
    if (_value.postResponse == null) {
      return null;
    }

    return $PostResponseCopyWith<$Res>(_value.postResponse!, (value) {
      return _then(_value.copyWith(postResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentProcessListCopyWith<$Res>
    implements $PaymentProcessListCopyWith<$Res> {
  factory _$$_PaymentProcessListCopyWith(_$_PaymentProcessList value,
          $Res Function(_$_PaymentProcessList) then) =
      __$$_PaymentProcessListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_code") String? userCode,
      @JsonKey(name: "order") String? orderId,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "transaction_code") String? transactionCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "created") String? created,
      @JsonKey(name: "updated") String? updated,
      @JsonKey(name: "acess_site") String? accessSite,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "legal_code") String? legalCode,
      @JsonKey(name: "business_code") String? businessCode,
      @JsonKey(name: "post_response") PostResponse? postResponse});

  @override
  $PostResponseCopyWith<$Res>? get postResponse;
}

/// @nodoc
class __$$_PaymentProcessListCopyWithImpl<$Res>
    extends _$PaymentProcessListCopyWithImpl<$Res, _$_PaymentProcessList>
    implements _$$_PaymentProcessListCopyWith<$Res> {
  __$$_PaymentProcessListCopyWithImpl(
      _$_PaymentProcessList _value, $Res Function(_$_PaymentProcessList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userCode = freezed,
    Object? orderId = freezed,
    Object? paymentMethod = freezed,
    Object? transactionCode = freezed,
    Object? customerCode = freezed,
    Object? totalAmount = freezed,
    Object? paymentStatus = freezed,
    Object? notes = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? accessSite = freezed,
    Object? channelCode = freezed,
    Object? legalCode = freezed,
    Object? businessCode = freezed,
    Object? postResponse = freezed,
  }) {
    return _then(_$_PaymentProcessList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      accessSite: freezed == accessSite
          ? _value.accessSite
          : accessSite // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      legalCode: freezed == legalCode
          ? _value.legalCode
          : legalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      businessCode: freezed == businessCode
          ? _value.businessCode
          : businessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postResponse: freezed == postResponse
          ? _value.postResponse
          : postResponse // ignore: cast_nullable_to_non_nullable
              as PostResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentProcessList implements _PaymentProcessList {
  const _$_PaymentProcessList(
      {this.id,
      @JsonKey(name: "user_code") this.userCode,
      @JsonKey(name: "order") this.orderId,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "transaction_code") this.transactionCode,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "updated") this.updated,
      @JsonKey(name: "acess_site") this.accessSite,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "legal_code") this.legalCode,
      @JsonKey(name: "business_code") this.businessCode,
      @JsonKey(name: "post_response") this.postResponse});

  factory _$_PaymentProcessList.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentProcessListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_code")
  final String? userCode;
  @override
  @JsonKey(name: "order")
  final String? orderId;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "transaction_code")
  final String? transactionCode;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "created")
  final String? created;
  @override
  @JsonKey(name: "updated")
  final String? updated;
  @override
  @JsonKey(name: "acess_site")
  final String? accessSite;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "legal_code")
  final String? legalCode;
  @override
  @JsonKey(name: "business_code")
  final String? businessCode;
  @override
  @JsonKey(name: "post_response")
  final PostResponse? postResponse;

  @override
  String toString() {
    return 'PaymentProcessList(id: $id, userCode: $userCode, orderId: $orderId, paymentMethod: $paymentMethod, transactionCode: $transactionCode, customerCode: $customerCode, totalAmount: $totalAmount, paymentStatus: $paymentStatus, notes: $notes, created: $created, updated: $updated, accessSite: $accessSite, channelCode: $channelCode, legalCode: $legalCode, businessCode: $businessCode, postResponse: $postResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentProcessList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.accessSite, accessSite) ||
                other.accessSite == accessSite) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.legalCode, legalCode) ||
                other.legalCode == legalCode) &&
            (identical(other.businessCode, businessCode) ||
                other.businessCode == businessCode) &&
            (identical(other.postResponse, postResponse) ||
                other.postResponse == postResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userCode,
      orderId,
      paymentMethod,
      transactionCode,
      customerCode,
      totalAmount,
      paymentStatus,
      notes,
      created,
      updated,
      accessSite,
      channelCode,
      legalCode,
      businessCode,
      postResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentProcessListCopyWith<_$_PaymentProcessList> get copyWith =>
      __$$_PaymentProcessListCopyWithImpl<_$_PaymentProcessList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentProcessListToJson(
      this,
    );
  }
}

abstract class _PaymentProcessList implements PaymentProcessList {
  const factory _PaymentProcessList(
          {final int? id,
          @JsonKey(name: "user_code") final String? userCode,
          @JsonKey(name: "order") final String? orderId,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "transaction_code") final String? transactionCode,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "created") final String? created,
          @JsonKey(name: "updated") final String? updated,
          @JsonKey(name: "acess_site") final String? accessSite,
          @JsonKey(name: "channel_code") final String? channelCode,
          @JsonKey(name: "legal_code") final String? legalCode,
          @JsonKey(name: "business_code") final String? businessCode,
          @JsonKey(name: "post_response") final PostResponse? postResponse}) =
      _$_PaymentProcessList;

  factory _PaymentProcessList.fromJson(Map<String, dynamic> json) =
      _$_PaymentProcessList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user_code")
  String? get userCode;
  @override
  @JsonKey(name: "order")
  String? get orderId;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "transaction_code")
  String? get transactionCode;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "created")
  String? get created;
  @override
  @JsonKey(name: "updated")
  String? get updated;
  @override
  @JsonKey(name: "acess_site")
  String? get accessSite;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "legal_code")
  String? get legalCode;
  @override
  @JsonKey(name: "business_code")
  String? get businessCode;
  @override
  @JsonKey(name: "post_response")
  PostResponse? get postResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentProcessListCopyWith<_$_PaymentProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return _PostResponse.fromJson(json);
}

/// @nodoc
mixin _$PostResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "contact")
  String? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "process_id")
  int? get processId => throw _privateConstructorUsedError;
  @JsonKey(name: "method_code")
  String? get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_code")
  String? get transactionCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostResponseCopyWith<PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResponseCopyWith<$Res> {
  factory $PostResponseCopyWith(
          PostResponse value, $Res Function(PostResponse) then) =
      _$PostResponseCopyWithImpl<$Res, PostResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "contact") String? contact,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "process_id") int? processId,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "total_amount") double? total,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "transaction_code") String? transactionCode});
}

/// @nodoc
class _$PostResponseCopyWithImpl<$Res, $Val extends PostResponse>
    implements $PostResponseCopyWith<$Res> {
  _$PostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? contact = freezed,
    Object? orderId = freezed,
    Object? processId = freezed,
    Object? methodCode = freezed,
    Object? total = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? transactionCode = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      processId: freezed == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostResponseCopyWith<$Res>
    implements $PostResponseCopyWith<$Res> {
  factory _$$_PostResponseCopyWith(
          _$_PostResponse value, $Res Function(_$_PostResponse) then) =
      __$$_PostResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "contact") String? contact,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "process_id") int? processId,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "total_amount") double? total,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "transaction_code") String? transactionCode});
}

/// @nodoc
class __$$_PostResponseCopyWithImpl<$Res>
    extends _$PostResponseCopyWithImpl<$Res, _$_PostResponse>
    implements _$$_PostResponseCopyWith<$Res> {
  __$$_PostResponseCopyWithImpl(
      _$_PostResponse _value, $Res Function(_$_PostResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? contact = freezed,
    Object? orderId = freezed,
    Object? processId = freezed,
    Object? methodCode = freezed,
    Object? total = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? transactionCode = freezed,
  }) {
    return _then(_$_PostResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      processId: freezed == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostResponse implements _PostResponse {
  const _$_PostResponse(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "contact") this.contact,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "process_id") this.processId,
      @JsonKey(name: "method_code") this.methodCode,
      @JsonKey(name: "total_amount") this.total,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "transaction_code") this.transactionCode});

  factory _$_PostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "contact")
  final String? contact;
  @override
  @JsonKey(name: "order_id")
  final String? orderId;
  @override
  @JsonKey(name: "process_id")
  final int? processId;
  @override
  @JsonKey(name: "method_code")
  final String? methodCode;
  @override
  @JsonKey(name: "total_amount")
  final double? total;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "transaction_code")
  final String? transactionCode;

  @override
  String toString() {
    return 'PostResponse(status: $status, contact: $contact, orderId: $orderId, processId: $processId, methodCode: $methodCode, total: $total, customerCode: $customerCode, customerName: $customerName, transactionCode: $transactionCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.processId, processId) ||
                other.processId == processId) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      contact,
      orderId,
      processId,
      methodCode,
      total,
      customerCode,
      customerName,
      transactionCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostResponseCopyWith<_$_PostResponse> get copyWith =>
      __$$_PostResponseCopyWithImpl<_$_PostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostResponseToJson(
      this,
    );
  }
}

abstract class _PostResponse implements PostResponse {
  const factory _PostResponse(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "contact") final String? contact,
          @JsonKey(name: "order_id") final String? orderId,
          @JsonKey(name: "process_id") final int? processId,
          @JsonKey(name: "method_code") final String? methodCode,
          @JsonKey(name: "total_amount") final double? total,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "transaction_code") final String? transactionCode}) =
      _$_PostResponse;

  factory _PostResponse.fromJson(Map<String, dynamic> json) =
      _$_PostResponse.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "contact")
  String? get contact;
  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @override
  @JsonKey(name: "process_id")
  int? get processId;
  @override
  @JsonKey(name: "method_code")
  String? get methodCode;
  @override
  @JsonKey(name: "total_amount")
  double? get total;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "transaction_code")
  String? get transactionCode;
  @override
  @JsonKey(ignore: true)
  _$$_PostResponseCopyWith<_$_PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
