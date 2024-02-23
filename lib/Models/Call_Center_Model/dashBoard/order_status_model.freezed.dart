// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatus _$OrderStatusFromJson(Map<String, dynamic> json) {
  return _OrderStatus.fromJson(json);
}

/// @nodoc
mixin _$OrderStatus {
  int? get id => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusCopyWith<OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
  @useResult
  $Res call(
      {int? id,
      double? total,
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "order_satus") String? orderStats});
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? orderedDate = freezed,
    Object? customerName = freezed,
    Object? orderStats = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStats: freezed == orderStats
          ? _value.orderStats
          : orderStats // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatusCopyWith<$Res>
    implements $OrderStatusCopyWith<$Res> {
  factory _$$_OrderStatusCopyWith(
          _$_OrderStatus value, $Res Function(_$_OrderStatus) then) =
      __$$_OrderStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? total,
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "order_satus") String? orderStats});
}

/// @nodoc
class __$$_OrderStatusCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$_OrderStatus>
    implements _$$_OrderStatusCopyWith<$Res> {
  __$$_OrderStatusCopyWithImpl(
      _$_OrderStatus _value, $Res Function(_$_OrderStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? orderedDate = freezed,
    Object? customerName = freezed,
    Object? orderStats = freezed,
  }) {
    return _then(_$_OrderStatus(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStats: freezed == orderStats
          ? _value.orderStats
          : orderStats // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatus implements _OrderStatus {
  const _$_OrderStatus(
      {this.id,
      this.total,
      @JsonKey(name: "ordered_date") this.orderedDate,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "order_satus") this.orderStats});

  factory _$_OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusFromJson(json);

  @override
  final int? id;
  @override
  final double? total;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderedDate;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStats;

  @override
  String toString() {
    return 'OrderStatus(id: $id, total: $total, orderedDate: $orderedDate, customerName: $customerName, orderStats: $orderStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.orderedDate, orderedDate) ||
                other.orderedDate == orderedDate) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.orderStats, orderStats) ||
                other.orderStats == orderStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, total, orderedDate, customerName, orderStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatusCopyWith<_$_OrderStatus> get copyWith =>
      __$$_OrderStatusCopyWithImpl<_$_OrderStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusToJson(
      this,
    );
  }
}

abstract class _OrderStatus implements OrderStatus {
  const factory _OrderStatus(
      {final int? id,
      final double? total,
      @JsonKey(name: "ordered_date") final String? orderedDate,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "order_satus") final String? orderStats}) = _$_OrderStatus;

  factory _OrderStatus.fromJson(Map<String, dynamic> json) =
      _$_OrderStatus.fromJson;

  @override
  int? get id;
  @override
  double? get total;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderedDate;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStats;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusCopyWith<_$_OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

NewOrderListModel _$NewOrderListModelFromJson(Map<String, dynamic> json) {
  return _NewOrderListModel.fromJson(json);
}

/// @nodoc
mixin _$NewOrderListModel {
  int? get id => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  double? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "today_sales")
  double? get todaysSale => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewOrderListModelCopyWith<NewOrderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderListModelCopyWith<$Res> {
  factory $NewOrderListModelCopyWith(
          NewOrderListModel value, $Res Function(NewOrderListModel) then) =
      _$NewOrderListModelCopyWithImpl<$Res, NewOrderListModel>;
  @useResult
  $Res call(
      {int? id,
      double? total,
      double? data,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "today_sales") double? todaysSale,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$NewOrderListModelCopyWithImpl<$Res, $Val extends NewOrderListModel>
    implements $NewOrderListModelCopyWith<$Res> {
  _$NewOrderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? data = freezed,
    Object? variantName = freezed,
    Object? sellingPrice = freezed,
    Object? unitCost = freezed,
    Object? totalAmount = freezed,
    Object? todaysSale = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      todaysSale: freezed == todaysSale
          ? _value.todaysSale
          : todaysSale // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewOrderListModelCopyWith<$Res>
    implements $NewOrderListModelCopyWith<$Res> {
  factory _$$_NewOrderListModelCopyWith(_$_NewOrderListModel value,
          $Res Function(_$_NewOrderListModel) then) =
      __$$_NewOrderListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? total,
      double? data,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "today_sales") double? todaysSale,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$_NewOrderListModelCopyWithImpl<$Res>
    extends _$NewOrderListModelCopyWithImpl<$Res, _$_NewOrderListModel>
    implements _$$_NewOrderListModelCopyWith<$Res> {
  __$$_NewOrderListModelCopyWithImpl(
      _$_NewOrderListModel _value, $Res Function(_$_NewOrderListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? data = freezed,
    Object? variantName = freezed,
    Object? sellingPrice = freezed,
    Object? unitCost = freezed,
    Object? totalAmount = freezed,
    Object? todaysSale = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_NewOrderListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      todaysSale: freezed == todaysSale
          ? _value.todaysSale
          : todaysSale // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewOrderListModel implements _NewOrderListModel {
  const _$_NewOrderListModel(
      {this.id,
      this.total,
      this.data,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "today_sales") this.todaysSale,
      @JsonKey(name: "image") this.image});

  factory _$_NewOrderListModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewOrderListModelFromJson(json);

  @override
  final int? id;
  @override
  final double? total;
  @override
  final double? data;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "today_sales")
  final double? todaysSale;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'NewOrderListModel(id: $id, total: $total, data: $data, variantName: $variantName, sellingPrice: $sellingPrice, unitCost: $unitCost, totalAmount: $totalAmount, todaysSale: $todaysSale, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewOrderListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.todaysSale, todaysSale) ||
                other.todaysSale == todaysSale) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, total, data, variantName,
      sellingPrice, unitCost, totalAmount, todaysSale, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewOrderListModelCopyWith<_$_NewOrderListModel> get copyWith =>
      __$$_NewOrderListModelCopyWithImpl<_$_NewOrderListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewOrderListModelToJson(
      this,
    );
  }
}

abstract class _NewOrderListModel implements NewOrderListModel {
  const factory _NewOrderListModel(
      {final int? id,
      final double? total,
      final double? data,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "total_amount") final double? totalAmount,
      @JsonKey(name: "today_sales") final double? todaysSale,
      @JsonKey(name: "image") final String? image}) = _$_NewOrderListModel;

  factory _NewOrderListModel.fromJson(Map<String, dynamic> json) =
      _$_NewOrderListModel.fromJson;

  @override
  int? get id;
  @override
  double? get total;
  @override
  double? get data;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "today_sales")
  double? get todaysSale;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_NewOrderListModelCopyWith<_$_NewOrderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StateList _$StateListFromJson(Map<String, dynamic> json) {
  return _StateList.fromJson(json);
}

/// @nodoc
mixin _$StateList {
  int? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateListCopyWith<StateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateListCopyWith<$Res> {
  factory $StateListCopyWith(StateList value, $Res Function(StateList) then) =
      _$StateListCopyWithImpl<$Res, StateList>;
  @useResult
  $Res call({int? code, String? name});
}

/// @nodoc
class _$StateListCopyWithImpl<$Res, $Val extends StateList>
    implements $StateListCopyWith<$Res> {
  _$StateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateListCopyWith<$Res> implements $StateListCopyWith<$Res> {
  factory _$$_StateListCopyWith(
          _$_StateList value, $Res Function(_$_StateList) then) =
      __$$_StateListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? name});
}

/// @nodoc
class __$$_StateListCopyWithImpl<$Res>
    extends _$StateListCopyWithImpl<$Res, _$_StateList>
    implements _$$_StateListCopyWith<$Res> {
  __$$_StateListCopyWithImpl(
      _$_StateList _value, $Res Function(_$_StateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StateList(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateList implements _StateList {
  const _$_StateList({this.code, this.name});

  factory _$_StateList.fromJson(Map<String, dynamic> json) =>
      _$$_StateListFromJson(json);

  @override
  final int? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'StateList(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateList &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateListCopyWith<_$_StateList> get copyWith =>
      __$$_StateListCopyWithImpl<_$_StateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateListToJson(
      this,
    );
  }
}

abstract class _StateList implements StateList {
  const factory _StateList({final int? code, final String? name}) =
      _$_StateList;

  factory _StateList.fromJson(Map<String, dynamic> json) =
      _$_StateList.fromJson;

  @override
  int? get code;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StateListCopyWith<_$_StateList> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryListModel _$InventoryListModelFromJson(Map<String, dynamic> json) {
  return _InventoryListModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryListModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get primary => throw _privateConstructorUsedError;
  bool? get isInventoryExist => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_offline", defaultValue: false)
  bool? get isOffline => throw _privateConstructorUsedError;
  @JsonKey(name: "country_name")
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: "business_unit_code")
  String? get businessUnitCode => throw _privateConstructorUsedError;
  @JsonKey(name: "address_one")
  String? get addressOne => throw _privateConstructorUsedError;
  @JsonKey(name: "address_two")
  String? get addressTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "land_mark")
  String? get landMark => throw _privateConstructorUsedError;
  @JsonKey(name: "company_logo")
  String? get companyLogo => throw _privateConstructorUsedError;
  @JsonKey(name: "store_logo")
  String? get storeLogo => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "city_or_town")
  String? get cityz => throw _privateConstructorUsedError;
  @JsonKey(name: "company_display_name")
  String? get companyDisplayName => throw _privateConstructorUsedError;
  @JsonKey(name: "business_addres")
  int? get businessAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryListModelCopyWith<InventoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryListModelCopyWith<$Res> {
  factory $InventoryListModelCopyWith(
          InventoryListModel value, $Res Function(InventoryListModel) then) =
      _$InventoryListModelCopyWithImpl<$Res, InventoryListModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      Address? address,
      int? id,
      bool? status,
      String? state,
      String? email,
      String? primary,
      bool? isInventoryExist,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_offline", defaultValue: false) bool? isOffline,
      @JsonKey(name: "country_name") String? countryName,
      @JsonKey(name: "business_unit_code") String? businessUnitCode,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "address_two") String? addressTwo,
      @JsonKey(name: "land_mark") String? landMark,
      @JsonKey(name: "company_logo") String? companyLogo,
      @JsonKey(name: "store_logo") String? storeLogo,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "city_or_town") String? cityz,
      @JsonKey(name: "company_display_name") String? companyDisplayName,
      @JsonKey(name: "business_addres") int? businessAddress});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$InventoryListModelCopyWithImpl<$Res, $Val extends InventoryListModel>
    implements $InventoryListModelCopyWith<$Res> {
  _$InventoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? email = freezed,
    Object? primary = freezed,
    Object? isInventoryExist = freezed,
    Object? isActive = freezed,
    Object? isOffline = freezed,
    Object? countryName = freezed,
    Object? businessUnitCode = freezed,
    Object? addressOne = freezed,
    Object? addressTwo = freezed,
    Object? landMark = freezed,
    Object? companyLogo = freezed,
    Object? storeLogo = freezed,
    Object? userId = freezed,
    Object? cityz = freezed,
    Object? companyDisplayName = freezed,
    Object? businessAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      isInventoryExist: freezed == isInventoryExist
          ? _value.isInventoryExist
          : isInventoryExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOffline: freezed == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessUnitCode: freezed == businessUnitCode
          ? _value.businessUnitCode
          : businessUnitCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      addressTwo: freezed == addressTwo
          ? _value.addressTwo
          : addressTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLogo: freezed == storeLogo
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityz: freezed == cityz
          ? _value.cityz
          : cityz // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDisplayName: freezed == companyDisplayName
          ? _value.companyDisplayName
          : companyDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessAddress: freezed == businessAddress
          ? _value.businessAddress
          : businessAddress // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InventoryListModelCopyWith<$Res>
    implements $InventoryListModelCopyWith<$Res> {
  factory _$$_InventoryListModelCopyWith(_$_InventoryListModel value,
          $Res Function(_$_InventoryListModel) then) =
      __$$_InventoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      Address? address,
      int? id,
      bool? status,
      String? state,
      String? email,
      String? primary,
      bool? isInventoryExist,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_offline", defaultValue: false) bool? isOffline,
      @JsonKey(name: "country_name") String? countryName,
      @JsonKey(name: "business_unit_code") String? businessUnitCode,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "address_two") String? addressTwo,
      @JsonKey(name: "land_mark") String? landMark,
      @JsonKey(name: "company_logo") String? companyLogo,
      @JsonKey(name: "store_logo") String? storeLogo,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "city_or_town") String? cityz,
      @JsonKey(name: "company_display_name") String? companyDisplayName,
      @JsonKey(name: "business_addres") int? businessAddress});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_InventoryListModelCopyWithImpl<$Res>
    extends _$InventoryListModelCopyWithImpl<$Res, _$_InventoryListModel>
    implements _$$_InventoryListModelCopyWith<$Res> {
  __$$_InventoryListModelCopyWithImpl(
      _$_InventoryListModel _value, $Res Function(_$_InventoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? email = freezed,
    Object? primary = freezed,
    Object? isInventoryExist = freezed,
    Object? isActive = freezed,
    Object? isOffline = freezed,
    Object? countryName = freezed,
    Object? businessUnitCode = freezed,
    Object? addressOne = freezed,
    Object? addressTwo = freezed,
    Object? landMark = freezed,
    Object? companyLogo = freezed,
    Object? storeLogo = freezed,
    Object? userId = freezed,
    Object? cityz = freezed,
    Object? companyDisplayName = freezed,
    Object? businessAddress = freezed,
  }) {
    return _then(_$_InventoryListModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      isInventoryExist: freezed == isInventoryExist
          ? _value.isInventoryExist
          : isInventoryExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOffline: freezed == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessUnitCode: freezed == businessUnitCode
          ? _value.businessUnitCode
          : businessUnitCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      addressTwo: freezed == addressTwo
          ? _value.addressTwo
          : addressTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLogo: freezed == storeLogo
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityz: freezed == cityz
          ? _value.cityz
          : cityz // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDisplayName: freezed == companyDisplayName
          ? _value.companyDisplayName
          : companyDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessAddress: freezed == businessAddress
          ? _value.businessAddress
          : businessAddress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventoryListModel implements _InventoryListModel {
  const _$_InventoryListModel(
      {this.name,
      this.description,
      this.address,
      this.id,
      this.status,
      this.state,
      this.email,
      this.primary,
      this.isInventoryExist,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_offline", defaultValue: false) this.isOffline,
      @JsonKey(name: "country_name") this.countryName,
      @JsonKey(name: "business_unit_code") this.businessUnitCode,
      @JsonKey(name: "address_one") this.addressOne,
      @JsonKey(name: "address_two") this.addressTwo,
      @JsonKey(name: "land_mark") this.landMark,
      @JsonKey(name: "company_logo") this.companyLogo,
      @JsonKey(name: "store_logo") this.storeLogo,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "city_or_town") this.cityz,
      @JsonKey(name: "company_display_name") this.companyDisplayName,
      @JsonKey(name: "business_addres") this.businessAddress});

  factory _$_InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryListModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final Address? address;
  @override
  final int? id;
  @override
  final bool? status;
  @override
  final String? state;
  @override
  final String? email;
  @override
  final String? primary;
  @override
  final bool? isInventoryExist;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_offline", defaultValue: false)
  final bool? isOffline;
  @override
  @JsonKey(name: "country_name")
  final String? countryName;
  @override
  @JsonKey(name: "business_unit_code")
  final String? businessUnitCode;
  @override
  @JsonKey(name: "address_one")
  final String? addressOne;
  @override
  @JsonKey(name: "address_two")
  final String? addressTwo;
  @override
  @JsonKey(name: "land_mark")
  final String? landMark;
  @override
  @JsonKey(name: "company_logo")
  final String? companyLogo;
  @override
  @JsonKey(name: "store_logo")
  final String? storeLogo;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "city_or_town")
  final String? cityz;
  @override
  @JsonKey(name: "company_display_name")
  final String? companyDisplayName;
  @override
  @JsonKey(name: "business_addres")
  final int? businessAddress;

  @override
  String toString() {
    return 'InventoryListModel(name: $name, description: $description, address: $address, id: $id, status: $status, state: $state, email: $email, primary: $primary, isInventoryExist: $isInventoryExist, isActive: $isActive, isOffline: $isOffline, countryName: $countryName, businessUnitCode: $businessUnitCode, addressOne: $addressOne, addressTwo: $addressTwo, landMark: $landMark, companyLogo: $companyLogo, storeLogo: $storeLogo, userId: $userId, cityz: $cityz, companyDisplayName: $companyDisplayName, businessAddress: $businessAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryListModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.isInventoryExist, isInventoryExist) ||
                other.isInventoryExist == isInventoryExist) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.businessUnitCode, businessUnitCode) ||
                other.businessUnitCode == businessUnitCode) &&
            (identical(other.addressOne, addressOne) ||
                other.addressOne == addressOne) &&
            (identical(other.addressTwo, addressTwo) ||
                other.addressTwo == addressTwo) &&
            (identical(other.landMark, landMark) ||
                other.landMark == landMark) &&
            (identical(other.companyLogo, companyLogo) ||
                other.companyLogo == companyLogo) &&
            (identical(other.storeLogo, storeLogo) ||
                other.storeLogo == storeLogo) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cityz, cityz) || other.cityz == cityz) &&
            (identical(other.companyDisplayName, companyDisplayName) ||
                other.companyDisplayName == companyDisplayName) &&
            (identical(other.businessAddress, businessAddress) ||
                other.businessAddress == businessAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        description,
        address,
        id,
        status,
        state,
        email,
        primary,
        isInventoryExist,
        isActive,
        isOffline,
        countryName,
        businessUnitCode,
        addressOne,
        addressTwo,
        landMark,
        companyLogo,
        storeLogo,
        userId,
        cityz,
        companyDisplayName,
        businessAddress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryListModelCopyWith<_$_InventoryListModel> get copyWith =>
      __$$_InventoryListModelCopyWithImpl<_$_InventoryListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryListModelToJson(
      this,
    );
  }
}

abstract class _InventoryListModel implements InventoryListModel {
  const factory _InventoryListModel(
      {final String? name,
      final String? description,
      final Address? address,
      final int? id,
      final bool? status,
      final String? state,
      final String? email,
      final String? primary,
      final bool? isInventoryExist,
      @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
      @JsonKey(name: "is_offline", defaultValue: false) final bool? isOffline,
      @JsonKey(name: "country_name") final String? countryName,
      @JsonKey(name: "business_unit_code") final String? businessUnitCode,
      @JsonKey(name: "address_one") final String? addressOne,
      @JsonKey(name: "address_two") final String? addressTwo,
      @JsonKey(name: "land_mark") final String? landMark,
      @JsonKey(name: "company_logo") final String? companyLogo,
      @JsonKey(name: "store_logo") final String? storeLogo,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "city_or_town") final String? cityz,
      @JsonKey(name: "company_display_name") final String? companyDisplayName,
      @JsonKey(name: "business_addres")
      final int? businessAddress}) = _$_InventoryListModel;

  factory _InventoryListModel.fromJson(Map<String, dynamic> json) =
      _$_InventoryListModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  Address? get address;
  @override
  int? get id;
  @override
  bool? get status;
  @override
  String? get state;
  @override
  String? get email;
  @override
  String? get primary;
  @override
  bool? get isInventoryExist;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_offline", defaultValue: false)
  bool? get isOffline;
  @override
  @JsonKey(name: "country_name")
  String? get countryName;
  @override
  @JsonKey(name: "business_unit_code")
  String? get businessUnitCode;
  @override
  @JsonKey(name: "address_one")
  String? get addressOne;
  @override
  @JsonKey(name: "address_two")
  String? get addressTwo;
  @override
  @JsonKey(name: "land_mark")
  String? get landMark;
  @override
  @JsonKey(name: "company_logo")
  String? get companyLogo;
  @override
  @JsonKey(name: "store_logo")
  String? get storeLogo;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "city_or_town")
  String? get cityz;
  @override
  @JsonKey(name: "company_display_name")
  String? get companyDisplayName;
  @override
  @JsonKey(name: "business_addres")
  int? get businessAddress;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryListModelCopyWith<_$_InventoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get state => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "address_one")
  String? get addressOne => throw _privateConstructorUsedError;
  @JsonKey(name: "address_two")
  String? get AddressTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "city_or_town")
  String? get cityz => throw _privateConstructorUsedError;
  @JsonKey(name: "country_name")
  String? get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? state,
      String? location,
      String? country,
      String? area,
      int? id,
      String? email,
      Contact? contact,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "address_two") String? AddressTwo,
      @JsonKey(name: "city_or_town") String? cityz,
      @JsonKey(name: "country_name") String? countryName});

  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? location = freezed,
    Object? country = freezed,
    Object? area = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? contact = freezed,
    Object? addressOne = freezed,
    Object? AddressTwo = freezed,
    Object? cityz = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      AddressTwo: freezed == AddressTwo
          ? _value.AddressTwo
          : AddressTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      cityz: freezed == cityz
          ? _value.cityz
          : cityz // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? state,
      String? location,
      String? country,
      String? area,
      int? id,
      String? email,
      Contact? contact,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "address_two") String? AddressTwo,
      @JsonKey(name: "city_or_town") String? cityz,
      @JsonKey(name: "country_name") String? countryName});

  @override
  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? location = freezed,
    Object? country = freezed,
    Object? area = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? contact = freezed,
    Object? addressOne = freezed,
    Object? AddressTwo = freezed,
    Object? cityz = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_$_Address(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      AddressTwo: freezed == AddressTwo
          ? _value.AddressTwo
          : AddressTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      cityz: freezed == cityz
          ? _value.cityz
          : cityz // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {this.state,
      this.location,
      this.country,
      this.area,
      this.id,
      this.email,
      this.contact,
      @JsonKey(name: "address_one") this.addressOne,
      @JsonKey(name: "address_two") this.AddressTwo,
      @JsonKey(name: "city_or_town") this.cityz,
      @JsonKey(name: "country_name") this.countryName});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String? state;
  @override
  final String? location;
  @override
  final String? country;
  @override
  final String? area;
  @override
  final int? id;
  @override
  final String? email;
  @override
  final Contact? contact;
  @override
  @JsonKey(name: "address_one")
  final String? addressOne;
  @override
  @JsonKey(name: "address_two")
  final String? AddressTwo;
  @override
  @JsonKey(name: "city_or_town")
  final String? cityz;
  @override
  @JsonKey(name: "country_name")
  final String? countryName;

  @override
  String toString() {
    return 'Address(state: $state, location: $location, country: $country, area: $area, id: $id, email: $email, contact: $contact, addressOne: $addressOne, AddressTwo: $AddressTwo, cityz: $cityz, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.addressOne, addressOne) ||
                other.addressOne == addressOne) &&
            (identical(other.AddressTwo, AddressTwo) ||
                other.AddressTwo == AddressTwo) &&
            (identical(other.cityz, cityz) || other.cityz == cityz) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, location, country, area,
      id, email, contact, addressOne, AddressTwo, cityz, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? state,
      final String? location,
      final String? country,
      final String? area,
      final int? id,
      final String? email,
      final Contact? contact,
      @JsonKey(name: "address_one") final String? addressOne,
      @JsonKey(name: "address_two") final String? AddressTwo,
      @JsonKey(name: "city_or_town") final String? cityz,
      @JsonKey(name: "country_name") final String? countryName}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get state;
  @override
  String? get location;
  @override
  String? get country;
  @override
  String? get area;
  @override
  int? get id;
  @override
  String? get email;
  @override
  Contact? get contact;
  @override
  @JsonKey(name: "address_one")
  String? get addressOne;
  @override
  @JsonKey(name: "address_two")
  String? get AddressTwo;
  @override
  @JsonKey(name: "city_or_town")
  String? get cityz;
  @override
  @JsonKey(name: "country_name")
  String? get countryName;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String? get primary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String? primary});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? primary});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
  }) {
    return _then(_$_Contact(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact({this.primary});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  final String? primary;

  @override
  String toString() {
    return 'Contact(primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact({final String? primary}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String? get primary;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
