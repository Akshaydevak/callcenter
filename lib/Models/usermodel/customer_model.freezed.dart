// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCustomerStatementPostModel _$UserCustomerStatementPostModelFromJson(
    Map<String, dynamic> json) {
  return _UserCustomerStatementPostModel.fromJson(json);
}

/// @nodoc
mixin _$UserCustomerStatementPostModel {
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCustomerStatementPostModelCopyWith<UserCustomerStatementPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCustomerStatementPostModelCopyWith<$Res> {
  factory $UserCustomerStatementPostModelCopyWith(
          UserCustomerStatementPostModel value,
          $Res Function(UserCustomerStatementPostModel) then) =
      _$UserCustomerStatementPostModelCopyWithImpl<$Res,
          UserCustomerStatementPostModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class _$UserCustomerStatementPostModelCopyWithImpl<$Res,
        $Val extends UserCustomerStatementPostModel>
    implements $UserCustomerStatementPostModelCopyWith<$Res> {
  _$UserCustomerStatementPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? customerCode = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCustomerStatementPostModelCopyWith<$Res>
    implements $UserCustomerStatementPostModelCopyWith<$Res> {
  factory _$$_UserCustomerStatementPostModelCopyWith(
          _$_UserCustomerStatementPostModel value,
          $Res Function(_$_UserCustomerStatementPostModel) then) =
      __$$_UserCustomerStatementPostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class __$$_UserCustomerStatementPostModelCopyWithImpl<$Res>
    extends _$UserCustomerStatementPostModelCopyWithImpl<$Res,
        _$_UserCustomerStatementPostModel>
    implements _$$_UserCustomerStatementPostModelCopyWith<$Res> {
  __$$_UserCustomerStatementPostModelCopyWithImpl(
      _$_UserCustomerStatementPostModel _value,
      $Res Function(_$_UserCustomerStatementPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? customerCode = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_UserCustomerStatementPostModel(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCustomerStatementPostModel
    implements _UserCustomerStatementPostModel {
  const _$_UserCustomerStatementPostModel(
      {@JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate});

  factory _$_UserCustomerStatementPostModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UserCustomerStatementPostModelFromJson(json);

  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;

  @override
  String toString() {
    return 'UserCustomerStatementPostModel(channelCode: $channelCode, customerCode: $customerCode, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCustomerStatementPostModel &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channelCode, customerCode, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCustomerStatementPostModelCopyWith<_$_UserCustomerStatementPostModel>
      get copyWith => __$$_UserCustomerStatementPostModelCopyWithImpl<
          _$_UserCustomerStatementPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCustomerStatementPostModelToJson(
      this,
    );
  }
}

abstract class _UserCustomerStatementPostModel
    implements UserCustomerStatementPostModel {
  const factory _UserCustomerStatementPostModel(
          {@JsonKey(name: "channel_code") final String? channelCode,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "start_date") final String? startDate,
          @JsonKey(name: "end_date") final String? endDate}) =
      _$_UserCustomerStatementPostModel;

  factory _UserCustomerStatementPostModel.fromJson(Map<String, dynamic> json) =
      _$_UserCustomerStatementPostModel.fromJson;

  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "start_date")
  String? get startDate;
  @override
  @JsonKey(name: "end_date")
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_UserCustomerStatementPostModelCopyWith<_$_UserCustomerStatementPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

UserCustomerStatementListModel _$UserCustomerStatementListModelFromJson(
    Map<String, dynamic> json) {
  return _UserCustomerStatementListModel.fromJson(json);
}

/// @nodoc
mixin _$UserCustomerStatementListModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCustomerStatementListModelCopyWith<UserCustomerStatementListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCustomerStatementListModelCopyWith<$Res> {
  factory $UserCustomerStatementListModelCopyWith(
          UserCustomerStatementListModel value,
          $Res Function(UserCustomerStatementListModel) then) =
      _$UserCustomerStatementListModelCopyWithImpl<$Res,
          UserCustomerStatementListModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "total_amount") double? totalAmount});
}

/// @nodoc
class _$UserCustomerStatementListModelCopyWithImpl<$Res,
        $Val extends UserCustomerStatementListModel>
    implements $UserCustomerStatementListModelCopyWith<$Res> {
  _$UserCustomerStatementListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? channelDetailsId = freezed,
    Object? invoiceCode = freezed,
    Object? invoiceDate = freezed,
    Object? orderType = freezed,
    Object? customerName = freezed,
    Object? customerCode = freezed,
    Object? invoiceStatus = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelDetailsId: freezed == channelDetailsId
          ? _value.channelDetailsId
          : channelDetailsId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCustomerStatementListModelCopyWith<$Res>
    implements $UserCustomerStatementListModelCopyWith<$Res> {
  factory _$$_UserCustomerStatementListModelCopyWith(
          _$_UserCustomerStatementListModel value,
          $Res Function(_$_UserCustomerStatementListModel) then) =
      __$$_UserCustomerStatementListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "total_amount") double? totalAmount});
}

/// @nodoc
class __$$_UserCustomerStatementListModelCopyWithImpl<$Res>
    extends _$UserCustomerStatementListModelCopyWithImpl<$Res,
        _$_UserCustomerStatementListModel>
    implements _$$_UserCustomerStatementListModelCopyWith<$Res> {
  __$$_UserCustomerStatementListModelCopyWithImpl(
      _$_UserCustomerStatementListModel _value,
      $Res Function(_$_UserCustomerStatementListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? channelDetailsId = freezed,
    Object? invoiceCode = freezed,
    Object? invoiceDate = freezed,
    Object? orderType = freezed,
    Object? customerName = freezed,
    Object? customerCode = freezed,
    Object? invoiceStatus = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_$_UserCustomerStatementListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelDetailsId: freezed == channelDetailsId
          ? _value.channelDetailsId
          : channelDetailsId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCustomerStatementListModel
    implements _UserCustomerStatementListModel {
  const _$_UserCustomerStatementListModel(
      {this.id,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "channel_details_id") this.channelDetailsId,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "invoiced_date") this.invoiceDate,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "total_amount") this.totalAmount});

  factory _$_UserCustomerStatementListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UserCustomerStatementListModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "channel_details_id")
  final int? channelDetailsId;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoiceDate;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;

  @override
  String toString() {
    return 'UserCustomerStatementListModel(id: $id, orderId: $orderId, channelDetailsId: $channelDetailsId, invoiceCode: $invoiceCode, invoiceDate: $invoiceDate, orderType: $orderType, customerName: $customerName, customerCode: $customerCode, invoiceStatus: $invoiceStatus, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCustomerStatementListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.channelDetailsId, channelDetailsId) ||
                other.channelDetailsId == channelDetailsId) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      channelDetailsId,
      invoiceCode,
      invoiceDate,
      orderType,
      customerName,
      customerCode,
      invoiceStatus,
      totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCustomerStatementListModelCopyWith<_$_UserCustomerStatementListModel>
      get copyWith => __$$_UserCustomerStatementListModelCopyWithImpl<
          _$_UserCustomerStatementListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCustomerStatementListModelToJson(
      this,
    );
  }
}

abstract class _UserCustomerStatementListModel
    implements UserCustomerStatementListModel {
  const factory _UserCustomerStatementListModel(
          {final int? id,
          @JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "channel_details_id") final int? channelDetailsId,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "invoiced_date") final String? invoiceDate,
          @JsonKey(name: "order_type") final String? orderType,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "invoice_status") final String? invoiceStatus,
          @JsonKey(name: "total_amount") final double? totalAmount}) =
      _$_UserCustomerStatementListModel;

  factory _UserCustomerStatementListModel.fromJson(Map<String, dynamic> json) =
      _$_UserCustomerStatementListModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$_UserCustomerStatementListModelCopyWith<_$_UserCustomerStatementListModel>
      get copyWith => throw _privateConstructorUsedError;
}
