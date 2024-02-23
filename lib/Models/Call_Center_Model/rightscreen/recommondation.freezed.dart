// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommondation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendationCallCenterModel _$RecommendationCallCenterModelFromJson(
    Map<String, dynamic> json) {
  return _RecommendationCallCenterModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendationCallCenterModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "min_gp")
  double? get minGp => throw _privateConstructorUsedError;
  @JsonKey(name: "max_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @JsonKey(name: "price_data")
  double? get priceData => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_count")
  int? get stockCount => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountData => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationCallCenterModelCopyWith<RecommendationCallCenterModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCallCenterModelCopyWith<$Res> {
  factory $RecommendationCallCenterModelCopyWith(
          RecommendationCallCenterModel value,
          $Res Function(RecommendationCallCenterModel) then) =
      _$RecommendationCallCenterModelCopyWithImpl<$Res,
          RecommendationCallCenterModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? barcode,
      String? name,
      String? image1,
      double? vat,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "min_gp") double? minGp,
      @JsonKey(name: "max_gp") double? maxGp,
      @JsonKey(name: "targeted_gp") double? targetedGp,
      @JsonKey(name: "price_data") double? priceData,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderLimit,
      @JsonKey(name: "discount_data") DiscountDataModel? discountData,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  $DiscountDataModelCopyWith<$Res>? get discountData;
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class _$RecommendationCallCenterModelCopyWithImpl<$Res,
        $Val extends RecommendationCallCenterModel>
    implements $RecommendationCallCenterModelCopyWith<$Res> {
  _$RecommendationCallCenterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? vat = freezed,
    Object? orderdDate = freezed,
    Object? salesUom = freezed,
    Object? salesUomName = freezed,
    Object? unitCost = freezed,
    Object? minGp = freezed,
    Object? maxGp = freezed,
    Object? targetedGp = freezed,
    Object? priceData = freezed,
    Object? actualCost = freezed,
    Object? stockCount = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? discountData = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      minGp: freezed == minGp
          ? _value.minGp
          : minGp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxGp: freezed == maxGp
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: freezed == targetedGp
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      priceData: freezed == priceData
          ? _value.priceData
          : priceData // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: freezed == minSalesOrderLimit
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: freezed == maxSalesOrderLimit
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataModelCopyWith<$Res>? get discountData {
    if (_value.discountData == null) {
      return null;
    }

    return $DiscountDataModelCopyWith<$Res>(_value.discountData!, (value) {
      return _then(_value.copyWith(discountData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel {
    if (_value.buyMoreDetailsModel == null) {
      return null;
    }

    return $BuyMoreDetailsModelCopyWith<$Res>(_value.buyMoreDetailsModel!,
        (value) {
      return _then(_value.copyWith(buyMoreDetailsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecommendationCallCenterModelCopyWith<$Res>
    implements $RecommendationCallCenterModelCopyWith<$Res> {
  factory _$$_RecommendationCallCenterModelCopyWith(
          _$_RecommendationCallCenterModel value,
          $Res Function(_$_RecommendationCallCenterModel) then) =
      __$$_RecommendationCallCenterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? barcode,
      String? name,
      String? image1,
      double? vat,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "min_gp") double? minGp,
      @JsonKey(name: "max_gp") double? maxGp,
      @JsonKey(name: "targeted_gp") double? targetedGp,
      @JsonKey(name: "price_data") double? priceData,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderLimit,
      @JsonKey(name: "discount_data") DiscountDataModel? discountData,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  @override
  $DiscountDataModelCopyWith<$Res>? get discountData;
  @override
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class __$$_RecommendationCallCenterModelCopyWithImpl<$Res>
    extends _$RecommendationCallCenterModelCopyWithImpl<$Res,
        _$_RecommendationCallCenterModel>
    implements _$$_RecommendationCallCenterModelCopyWith<$Res> {
  __$$_RecommendationCallCenterModelCopyWithImpl(
      _$_RecommendationCallCenterModel _value,
      $Res Function(_$_RecommendationCallCenterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? vat = freezed,
    Object? orderdDate = freezed,
    Object? salesUom = freezed,
    Object? salesUomName = freezed,
    Object? unitCost = freezed,
    Object? minGp = freezed,
    Object? maxGp = freezed,
    Object? targetedGp = freezed,
    Object? priceData = freezed,
    Object? actualCost = freezed,
    Object? stockCount = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? discountData = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_$_RecommendationCallCenterModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      minGp: freezed == minGp
          ? _value.minGp
          : minGp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxGp: freezed == maxGp
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: freezed == targetedGp
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      priceData: freezed == priceData
          ? _value.priceData
          : priceData // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: freezed == minSalesOrderLimit
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: freezed == maxSalesOrderLimit
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendationCallCenterModel
    implements _RecommendationCallCenterModel {
  const _$_RecommendationCallCenterModel(
      {this.id,
      this.code,
      this.barcode,
      this.name,
      this.image1,
      this.vat,
      @JsonKey(name: "ordered_date") this.orderdDate,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "sales_uom_name") this.salesUomName,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "min_gp") this.minGp,
      @JsonKey(name: "max_gp") this.maxGp,
      @JsonKey(name: "targeted_gp") this.targetedGp,
      @JsonKey(name: "price_data") this.priceData,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "stock_count") this.stockCount,
      @JsonKey(name: "min_sales_order_limit") this.minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") this.maxSalesOrderLimit,
      @JsonKey(name: "discount_data") this.discountData,
      @JsonKey(name: "buy_more_details") this.buyMoreDetailsModel});

  factory _$_RecommendationCallCenterModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_RecommendationCallCenterModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? barcode;
  @override
  final String? name;
  @override
  final String? image1;
  @override
  final double? vat;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderdDate;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "sales_uom_name")
  final String? salesUomName;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "min_gp")
  final double? minGp;
  @override
  @JsonKey(name: "max_gp")
  final double? maxGp;
  @override
  @JsonKey(name: "targeted_gp")
  final double? targetedGp;
  @override
  @JsonKey(name: "price_data")
  final double? priceData;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "stock_count")
  final int? stockCount;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSalesOrderLimit;
  @override
  @JsonKey(name: "discount_data")
  final DiscountDataModel? discountData;
  @override
  @JsonKey(name: "buy_more_details")
  final BuyMoreDetailsModel? buyMoreDetailsModel;

  @override
  String toString() {
    return 'RecommendationCallCenterModel(id: $id, code: $code, barcode: $barcode, name: $name, image1: $image1, vat: $vat, orderdDate: $orderdDate, salesUom: $salesUom, salesUomName: $salesUomName, unitCost: $unitCost, minGp: $minGp, maxGp: $maxGp, targetedGp: $targetedGp, priceData: $priceData, actualCost: $actualCost, stockCount: $stockCount, minSalesOrderLimit: $minSalesOrderLimit, maxSalesOrderLimit: $maxSalesOrderLimit, discountData: $discountData, buyMoreDetailsModel: $buyMoreDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecommendationCallCenterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.orderdDate, orderdDate) ||
                other.orderdDate == orderdDate) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom) &&
            (identical(other.salesUomName, salesUomName) ||
                other.salesUomName == salesUomName) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.minGp, minGp) || other.minGp == minGp) &&
            (identical(other.maxGp, maxGp) || other.maxGp == maxGp) &&
            (identical(other.targetedGp, targetedGp) ||
                other.targetedGp == targetedGp) &&
            (identical(other.priceData, priceData) ||
                other.priceData == priceData) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.stockCount, stockCount) ||
                other.stockCount == stockCount) &&
            (identical(other.minSalesOrderLimit, minSalesOrderLimit) ||
                other.minSalesOrderLimit == minSalesOrderLimit) &&
            (identical(other.maxSalesOrderLimit, maxSalesOrderLimit) ||
                other.maxSalesOrderLimit == maxSalesOrderLimit) &&
            (identical(other.discountData, discountData) ||
                other.discountData == discountData) &&
            (identical(other.buyMoreDetailsModel, buyMoreDetailsModel) ||
                other.buyMoreDetailsModel == buyMoreDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        barcode,
        name,
        image1,
        vat,
        orderdDate,
        salesUom,
        salesUomName,
        unitCost,
        minGp,
        maxGp,
        targetedGp,
        priceData,
        actualCost,
        stockCount,
        minSalesOrderLimit,
        maxSalesOrderLimit,
        discountData,
        buyMoreDetailsModel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendationCallCenterModelCopyWith<_$_RecommendationCallCenterModel>
      get copyWith => __$$_RecommendationCallCenterModelCopyWithImpl<
          _$_RecommendationCallCenterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendationCallCenterModelToJson(
      this,
    );
  }
}

abstract class _RecommendationCallCenterModel
    implements RecommendationCallCenterModel {
  const factory _RecommendationCallCenterModel(
          {final int? id,
          final String? code,
          final String? barcode,
          final String? name,
          final String? image1,
          final double? vat,
          @JsonKey(name: "ordered_date") final String? orderdDate,
          @JsonKey(name: "sales_uom") final String? salesUom,
          @JsonKey(name: "sales_uom_name") final String? salesUomName,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "min_gp") final double? minGp,
          @JsonKey(name: "max_gp") final double? maxGp,
          @JsonKey(name: "targeted_gp") final double? targetedGp,
          @JsonKey(name: "price_data") final double? priceData,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "stock_count") final int? stockCount,
          @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderLimit,
          @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderLimit,
          @JsonKey(name: "discount_data") final DiscountDataModel? discountData,
          @JsonKey(name: "buy_more_details")
          final BuyMoreDetailsModel? buyMoreDetailsModel}) =
      _$_RecommendationCallCenterModel;

  factory _RecommendationCallCenterModel.fromJson(Map<String, dynamic> json) =
      _$_RecommendationCallCenterModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get barcode;
  @override
  String? get name;
  @override
  String? get image1;
  @override
  double? get vat;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderdDate;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "min_gp")
  double? get minGp;
  @override
  @JsonKey(name: "max_gp")
  double? get maxGp;
  @override
  @JsonKey(name: "targeted_gp")
  double? get targetedGp;
  @override
  @JsonKey(name: "price_data")
  double? get priceData;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "stock_count")
  int? get stockCount;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit;
  @override
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountData;
  @override
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendationCallCenterModelCopyWith<_$_RecommendationCallCenterModel>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountDataModel _$DiscountDataModelFromJson(Map<String, dynamic> json) {
  return _DiscountDataModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountDataModel {
  @JsonKey(name: "is_discount_have")
  bool? get isDiscountData => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_applied_price")
  double? get discountAppliedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_price")
  double? get discountPercentagePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountDataModelCopyWith<DiscountDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountDataModelCopyWith<$Res> {
  factory $DiscountDataModelCopyWith(
          DiscountDataModel value, $Res Function(DiscountDataModel) then) =
      _$DiscountDataModelCopyWithImpl<$Res, DiscountDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_discount_have") bool? isDiscountData,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount_applied_price") double? discountAppliedPrice,
      @JsonKey(name: "discount_percentage_price")
      double? discountPercentagePrice});
}

/// @nodoc
class _$DiscountDataModelCopyWithImpl<$Res, $Val extends DiscountDataModel>
    implements $DiscountDataModelCopyWith<$Res> {
  _$DiscountDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDiscountData = freezed,
    Object? discountType = freezed,
    Object? discountAppliedPrice = freezed,
    Object? discountPercentagePrice = freezed,
  }) {
    return _then(_value.copyWith(
      isDiscountData: freezed == isDiscountData
          ? _value.isDiscountData
          : isDiscountData // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAppliedPrice: freezed == discountAppliedPrice
          ? _value.discountAppliedPrice
          : discountAppliedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentagePrice: freezed == discountPercentagePrice
          ? _value.discountPercentagePrice
          : discountPercentagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountDataModelCopyWith<$Res>
    implements $DiscountDataModelCopyWith<$Res> {
  factory _$$_DiscountDataModelCopyWith(_$_DiscountDataModel value,
          $Res Function(_$_DiscountDataModel) then) =
      __$$_DiscountDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_discount_have") bool? isDiscountData,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount_applied_price") double? discountAppliedPrice,
      @JsonKey(name: "discount_percentage_price")
      double? discountPercentagePrice});
}

/// @nodoc
class __$$_DiscountDataModelCopyWithImpl<$Res>
    extends _$DiscountDataModelCopyWithImpl<$Res, _$_DiscountDataModel>
    implements _$$_DiscountDataModelCopyWith<$Res> {
  __$$_DiscountDataModelCopyWithImpl(
      _$_DiscountDataModel _value, $Res Function(_$_DiscountDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDiscountData = freezed,
    Object? discountType = freezed,
    Object? discountAppliedPrice = freezed,
    Object? discountPercentagePrice = freezed,
  }) {
    return _then(_$_DiscountDataModel(
      isDiscountData: freezed == isDiscountData
          ? _value.isDiscountData
          : isDiscountData // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAppliedPrice: freezed == discountAppliedPrice
          ? _value.discountAppliedPrice
          : discountAppliedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentagePrice: freezed == discountPercentagePrice
          ? _value.discountPercentagePrice
          : discountPercentagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountDataModel implements _DiscountDataModel {
  const _$_DiscountDataModel(
      {@JsonKey(name: "is_discount_have") this.isDiscountData,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "discount_applied_price") this.discountAppliedPrice,
      @JsonKey(name: "discount_percentage_price")
      this.discountPercentagePrice});

  factory _$_DiscountDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountDataModelFromJson(json);

  @override
  @JsonKey(name: "is_discount_have")
  final bool? isDiscountData;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "discount_applied_price")
  final double? discountAppliedPrice;
  @override
  @JsonKey(name: "discount_percentage_price")
  final double? discountPercentagePrice;

  @override
  String toString() {
    return 'DiscountDataModel(isDiscountData: $isDiscountData, discountType: $discountType, discountAppliedPrice: $discountAppliedPrice, discountPercentagePrice: $discountPercentagePrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountDataModel &&
            (identical(other.isDiscountData, isDiscountData) ||
                other.isDiscountData == isDiscountData) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountAppliedPrice, discountAppliedPrice) ||
                other.discountAppliedPrice == discountAppliedPrice) &&
            (identical(
                    other.discountPercentagePrice, discountPercentagePrice) ||
                other.discountPercentagePrice == discountPercentagePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDiscountData, discountType,
      discountAppliedPrice, discountPercentagePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountDataModelCopyWith<_$_DiscountDataModel> get copyWith =>
      __$$_DiscountDataModelCopyWithImpl<_$_DiscountDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountDataModelToJson(
      this,
    );
  }
}

abstract class _DiscountDataModel implements DiscountDataModel {
  const factory _DiscountDataModel(
      {@JsonKey(name: "is_discount_have") final bool? isDiscountData,
      @JsonKey(name: "discount_type") final String? discountType,
      @JsonKey(name: "discount_applied_price")
      final double? discountAppliedPrice,
      @JsonKey(name: "discount_percentage_price")
      final double? discountPercentagePrice}) = _$_DiscountDataModel;

  factory _DiscountDataModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountDataModel.fromJson;

  @override
  @JsonKey(name: "is_discount_have")
  bool? get isDiscountData;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "discount_applied_price")
  double? get discountAppliedPrice;
  @override
  @JsonKey(name: "discount_percentage_price")
  double? get discountPercentagePrice;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountDataModelCopyWith<_$_DiscountDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BuyMoreDetailsModel _$BuyMoreDetailsModelFromJson(Map<String, dynamic> json) {
  return _BuyMoreDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BuyMoreDetailsModel {
  @JsonKey(name: "has_buy_more")
  bool? get hasBuyMore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyMoreDetailsModelCopyWith<BuyMoreDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyMoreDetailsModelCopyWith<$Res> {
  factory $BuyMoreDetailsModelCopyWith(
          BuyMoreDetailsModel value, $Res Function(BuyMoreDetailsModel) then) =
      _$BuyMoreDetailsModelCopyWithImpl<$Res, BuyMoreDetailsModel>;
  @useResult
  $Res call({@JsonKey(name: "has_buy_more") bool? hasBuyMore});
}

/// @nodoc
class _$BuyMoreDetailsModelCopyWithImpl<$Res, $Val extends BuyMoreDetailsModel>
    implements $BuyMoreDetailsModelCopyWith<$Res> {
  _$BuyMoreDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasBuyMore = freezed,
  }) {
    return _then(_value.copyWith(
      hasBuyMore: freezed == hasBuyMore
          ? _value.hasBuyMore
          : hasBuyMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BuyMoreDetailsModelCopyWith<$Res>
    implements $BuyMoreDetailsModelCopyWith<$Res> {
  factory _$$_BuyMoreDetailsModelCopyWith(_$_BuyMoreDetailsModel value,
          $Res Function(_$_BuyMoreDetailsModel) then) =
      __$$_BuyMoreDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "has_buy_more") bool? hasBuyMore});
}

/// @nodoc
class __$$_BuyMoreDetailsModelCopyWithImpl<$Res>
    extends _$BuyMoreDetailsModelCopyWithImpl<$Res, _$_BuyMoreDetailsModel>
    implements _$$_BuyMoreDetailsModelCopyWith<$Res> {
  __$$_BuyMoreDetailsModelCopyWithImpl(_$_BuyMoreDetailsModel _value,
      $Res Function(_$_BuyMoreDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasBuyMore = freezed,
  }) {
    return _then(_$_BuyMoreDetailsModel(
      hasBuyMore: freezed == hasBuyMore
          ? _value.hasBuyMore
          : hasBuyMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuyMoreDetailsModel implements _BuyMoreDetailsModel {
  const _$_BuyMoreDetailsModel(
      {@JsonKey(name: "has_buy_more") this.hasBuyMore});

  factory _$_BuyMoreDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuyMoreDetailsModelFromJson(json);

  @override
  @JsonKey(name: "has_buy_more")
  final bool? hasBuyMore;

  @override
  String toString() {
    return 'BuyMoreDetailsModel(hasBuyMore: $hasBuyMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyMoreDetailsModel &&
            (identical(other.hasBuyMore, hasBuyMore) ||
                other.hasBuyMore == hasBuyMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasBuyMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyMoreDetailsModelCopyWith<_$_BuyMoreDetailsModel> get copyWith =>
      __$$_BuyMoreDetailsModelCopyWithImpl<_$_BuyMoreDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyMoreDetailsModelToJson(
      this,
    );
  }
}

abstract class _BuyMoreDetailsModel implements BuyMoreDetailsModel {
  const factory _BuyMoreDetailsModel(
          {@JsonKey(name: "has_buy_more") final bool? hasBuyMore}) =
      _$_BuyMoreDetailsModel;

  factory _BuyMoreDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_BuyMoreDetailsModel.fromJson;

  @override
  @JsonKey(name: "has_buy_more")
  bool? get hasBuyMore;
  @override
  @JsonKey(ignore: true)
  _$$_BuyMoreDetailsModelCopyWith<_$_BuyMoreDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

offerCallCenterModel _$offerCallCenterModelFromJson(Map<String, dynamic> json) {
  return _offerCallCenterModel.fromJson(json);
}

/// @nodoc
mixin _$offerCallCenterModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_line_id")
  int? get discountLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_lines_id")
  int? get offerLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_count")
  int? get stockCount => throw _privateConstructorUsedError;
  @JsonKey(name: "min_order_limit")
  int? get minOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_order_limit")
  int? get maxOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentageOrPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "base_uom_conversion_factor")
  double? get baseUomConversionFactor => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_conversion_factor")
  double? get salesUomConversionFactor => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_lines_code")
  String? get offerLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "data_type")
  String? get dataTYpe => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_name")
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "base_uom_name")
  String? get baseUomNamed => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_stock", defaultValue: false)
  bool? get isStock => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountData => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $offerCallCenterModelCopyWith<offerCallCenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $offerCallCenterModelCopyWith<$Res> {
  factory $offerCallCenterModelCopyWith(offerCallCenterModel value,
          $Res Function(offerCallCenterModel) then) =
      _$offerCallCenterModelCopyWithImpl<$Res, offerCallCenterModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image1,
      String? code,
      @JsonKey(name: "discount_line_id") int? discountLineId,
      @JsonKey(name: "offer_lines_id") int? offerLineId,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_order_limit") int? minOrderLimit,
      @JsonKey(name: "max_order_limit") int? maxOrderLimit,
      @JsonKey(name: "discount_percentage_or_price")
      double? discountPercentageOrPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "base_uom_conversion_factor")
      double? baseUomConversionFactor,
      @JsonKey(name: "sales_uom_conversion_factor")
      double? salesUomConversionFactor,
      @JsonKey(name: "offer_lines_code") String? offerLineCode,
      @JsonKey(name: "based_on") String? basedOn,
      @JsonKey(name: "data_type") String? dataTYpe,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "produced_country") String? producedCountry,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "base_uom_name") String? baseUomNamed,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "is_stock", defaultValue: false) bool? isStock,
      @JsonKey(name: "discount_data") DiscountDataModel? discountData,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  $DiscountDataModelCopyWith<$Res>? get discountData;
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class _$offerCallCenterModelCopyWithImpl<$Res,
        $Val extends offerCallCenterModel>
    implements $offerCallCenterModelCopyWith<$Res> {
  _$offerCallCenterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? code = freezed,
    Object? discountLineId = freezed,
    Object? offerLineId = freezed,
    Object? stockCount = freezed,
    Object? minOrderLimit = freezed,
    Object? maxOrderLimit = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? sellingPrice = freezed,
    Object? baseUomConversionFactor = freezed,
    Object? salesUomConversionFactor = freezed,
    Object? offerLineCode = freezed,
    Object? basedOn = freezed,
    Object? dataTYpe = freezed,
    Object? inventoryId = freezed,
    Object? brandName = freezed,
    Object? displayName = freezed,
    Object? producedCountry = freezed,
    Object? channelCode = freezed,
    Object? baseUomNamed = freezed,
    Object? salesUomName = freezed,
    Object? isStock = freezed,
    Object? discountData = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      discountLineId: freezed == discountLineId
          ? _value.discountLineId
          : discountLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerLineId: freezed == offerLineId
          ? _value.offerLineId
          : offerLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minOrderLimit: freezed == minOrderLimit
          ? _value.minOrderLimit
          : minOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOrderLimit: freezed == maxOrderLimit
          ? _value.maxOrderLimit
          : maxOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      baseUomConversionFactor: freezed == baseUomConversionFactor
          ? _value.baseUomConversionFactor
          : baseUomConversionFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      salesUomConversionFactor: freezed == salesUomConversionFactor
          ? _value.salesUomConversionFactor
          : salesUomConversionFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      offerLineCode: freezed == offerLineCode
          ? _value.offerLineCode
          : offerLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      dataTYpe: freezed == dataTYpe
          ? _value.dataTYpe
          : dataTYpe // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: freezed == producedCountry
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUomNamed: freezed == baseUomNamed
          ? _value.baseUomNamed
          : baseUomNamed // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      isStock: freezed == isStock
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataModelCopyWith<$Res>? get discountData {
    if (_value.discountData == null) {
      return null;
    }

    return $DiscountDataModelCopyWith<$Res>(_value.discountData!, (value) {
      return _then(_value.copyWith(discountData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel {
    if (_value.buyMoreDetailsModel == null) {
      return null;
    }

    return $BuyMoreDetailsModelCopyWith<$Res>(_value.buyMoreDetailsModel!,
        (value) {
      return _then(_value.copyWith(buyMoreDetailsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_offerCallCenterModelCopyWith<$Res>
    implements $offerCallCenterModelCopyWith<$Res> {
  factory _$$_offerCallCenterModelCopyWith(_$_offerCallCenterModel value,
          $Res Function(_$_offerCallCenterModel) then) =
      __$$_offerCallCenterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image1,
      String? code,
      @JsonKey(name: "discount_line_id") int? discountLineId,
      @JsonKey(name: "offer_lines_id") int? offerLineId,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_order_limit") int? minOrderLimit,
      @JsonKey(name: "max_order_limit") int? maxOrderLimit,
      @JsonKey(name: "discount_percentage_or_price")
      double? discountPercentageOrPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "base_uom_conversion_factor")
      double? baseUomConversionFactor,
      @JsonKey(name: "sales_uom_conversion_factor")
      double? salesUomConversionFactor,
      @JsonKey(name: "offer_lines_code") String? offerLineCode,
      @JsonKey(name: "based_on") String? basedOn,
      @JsonKey(name: "data_type") String? dataTYpe,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "produced_country") String? producedCountry,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "base_uom_name") String? baseUomNamed,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "is_stock", defaultValue: false) bool? isStock,
      @JsonKey(name: "discount_data") DiscountDataModel? discountData,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  @override
  $DiscountDataModelCopyWith<$Res>? get discountData;
  @override
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class __$$_offerCallCenterModelCopyWithImpl<$Res>
    extends _$offerCallCenterModelCopyWithImpl<$Res, _$_offerCallCenterModel>
    implements _$$_offerCallCenterModelCopyWith<$Res> {
  __$$_offerCallCenterModelCopyWithImpl(_$_offerCallCenterModel _value,
      $Res Function(_$_offerCallCenterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? code = freezed,
    Object? discountLineId = freezed,
    Object? offerLineId = freezed,
    Object? stockCount = freezed,
    Object? minOrderLimit = freezed,
    Object? maxOrderLimit = freezed,
    Object? discountPercentageOrPrice = freezed,
    Object? sellingPrice = freezed,
    Object? baseUomConversionFactor = freezed,
    Object? salesUomConversionFactor = freezed,
    Object? offerLineCode = freezed,
    Object? basedOn = freezed,
    Object? dataTYpe = freezed,
    Object? inventoryId = freezed,
    Object? brandName = freezed,
    Object? displayName = freezed,
    Object? producedCountry = freezed,
    Object? channelCode = freezed,
    Object? baseUomNamed = freezed,
    Object? salesUomName = freezed,
    Object? isStock = freezed,
    Object? discountData = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_$_offerCallCenterModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      discountLineId: freezed == discountLineId
          ? _value.discountLineId
          : discountLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      offerLineId: freezed == offerLineId
          ? _value.offerLineId
          : offerLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minOrderLimit: freezed == minOrderLimit
          ? _value.minOrderLimit
          : minOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOrderLimit: freezed == maxOrderLimit
          ? _value.maxOrderLimit
          : maxOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentageOrPrice: freezed == discountPercentageOrPrice
          ? _value.discountPercentageOrPrice
          : discountPercentageOrPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      baseUomConversionFactor: freezed == baseUomConversionFactor
          ? _value.baseUomConversionFactor
          : baseUomConversionFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      salesUomConversionFactor: freezed == salesUomConversionFactor
          ? _value.salesUomConversionFactor
          : salesUomConversionFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      offerLineCode: freezed == offerLineCode
          ? _value.offerLineCode
          : offerLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      dataTYpe: freezed == dataTYpe
          ? _value.dataTYpe
          : dataTYpe // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: freezed == producedCountry
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUomNamed: freezed == baseUomNamed
          ? _value.baseUomNamed
          : baseUomNamed // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      isStock: freezed == isStock
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_offerCallCenterModel implements _offerCallCenterModel {
  const _$_offerCallCenterModel(
      {this.id,
      this.name,
      this.image1,
      this.code,
      @JsonKey(name: "discount_line_id") this.discountLineId,
      @JsonKey(name: "offer_lines_id") this.offerLineId,
      @JsonKey(name: "stock_count") this.stockCount,
      @JsonKey(name: "min_order_limit") this.minOrderLimit,
      @JsonKey(name: "max_order_limit") this.maxOrderLimit,
      @JsonKey(name: "discount_percentage_or_price")
      this.discountPercentageOrPrice,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "base_uom_conversion_factor") this.baseUomConversionFactor,
      @JsonKey(name: "sales_uom_conversion_factor")
      this.salesUomConversionFactor,
      @JsonKey(name: "offer_lines_code") this.offerLineCode,
      @JsonKey(name: "based_on") this.basedOn,
      @JsonKey(name: "data_type") this.dataTYpe,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "brand_name") this.brandName,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "produced_country") this.producedCountry,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "base_uom_name") this.baseUomNamed,
      @JsonKey(name: "sales_uom_name") this.salesUomName,
      @JsonKey(name: "is_stock", defaultValue: false) this.isStock,
      @JsonKey(name: "discount_data") this.discountData,
      @JsonKey(name: "buy_more_details") this.buyMoreDetailsModel});

  factory _$_offerCallCenterModel.fromJson(Map<String, dynamic> json) =>
      _$$_offerCallCenterModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image1;
  @override
  final String? code;
  @override
  @JsonKey(name: "discount_line_id")
  final int? discountLineId;
  @override
  @JsonKey(name: "offer_lines_id")
  final int? offerLineId;
  @override
  @JsonKey(name: "stock_count")
  final int? stockCount;
  @override
  @JsonKey(name: "min_order_limit")
  final int? minOrderLimit;
  @override
  @JsonKey(name: "max_order_limit")
  final int? maxOrderLimit;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  final double? discountPercentageOrPrice;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "base_uom_conversion_factor")
  final double? baseUomConversionFactor;
  @override
  @JsonKey(name: "sales_uom_conversion_factor")
  final double? salesUomConversionFactor;
  @override
  @JsonKey(name: "offer_lines_code")
  final String? offerLineCode;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "data_type")
  final String? dataTYpe;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "brand_name")
  final String? brandName;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "produced_country")
  final String? producedCountry;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "base_uom_name")
  final String? baseUomNamed;
  @override
  @JsonKey(name: "sales_uom_name")
  final String? salesUomName;
  @override
  @JsonKey(name: "is_stock", defaultValue: false)
  final bool? isStock;
  @override
  @JsonKey(name: "discount_data")
  final DiscountDataModel? discountData;
  @override
  @JsonKey(name: "buy_more_details")
  final BuyMoreDetailsModel? buyMoreDetailsModel;

  @override
  String toString() {
    return 'offerCallCenterModel(id: $id, name: $name, image1: $image1, code: $code, discountLineId: $discountLineId, offerLineId: $offerLineId, stockCount: $stockCount, minOrderLimit: $minOrderLimit, maxOrderLimit: $maxOrderLimit, discountPercentageOrPrice: $discountPercentageOrPrice, sellingPrice: $sellingPrice, baseUomConversionFactor: $baseUomConversionFactor, salesUomConversionFactor: $salesUomConversionFactor, offerLineCode: $offerLineCode, basedOn: $basedOn, dataTYpe: $dataTYpe, inventoryId: $inventoryId, brandName: $brandName, displayName: $displayName, producedCountry: $producedCountry, channelCode: $channelCode, baseUomNamed: $baseUomNamed, salesUomName: $salesUomName, isStock: $isStock, discountData: $discountData, buyMoreDetailsModel: $buyMoreDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_offerCallCenterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discountLineId, discountLineId) ||
                other.discountLineId == discountLineId) &&
            (identical(other.offerLineId, offerLineId) ||
                other.offerLineId == offerLineId) &&
            (identical(other.stockCount, stockCount) ||
                other.stockCount == stockCount) &&
            (identical(other.minOrderLimit, minOrderLimit) ||
                other.minOrderLimit == minOrderLimit) &&
            (identical(other.maxOrderLimit, maxOrderLimit) ||
                other.maxOrderLimit == maxOrderLimit) &&
            (identical(other.discountPercentageOrPrice,
                    discountPercentageOrPrice) ||
                other.discountPercentageOrPrice == discountPercentageOrPrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.baseUomConversionFactor, baseUomConversionFactor) ||
                other.baseUomConversionFactor == baseUomConversionFactor) &&
            (identical(
                    other.salesUomConversionFactor, salesUomConversionFactor) ||
                other.salesUomConversionFactor == salesUomConversionFactor) &&
            (identical(other.offerLineCode, offerLineCode) ||
                other.offerLineCode == offerLineCode) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.dataTYpe, dataTYpe) ||
                other.dataTYpe == dataTYpe) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.producedCountry, producedCountry) ||
                other.producedCountry == producedCountry) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.baseUomNamed, baseUomNamed) ||
                other.baseUomNamed == baseUomNamed) &&
            (identical(other.salesUomName, salesUomName) ||
                other.salesUomName == salesUomName) &&
            (identical(other.isStock, isStock) || other.isStock == isStock) &&
            (identical(other.discountData, discountData) ||
                other.discountData == discountData) &&
            (identical(other.buyMoreDetailsModel, buyMoreDetailsModel) ||
                other.buyMoreDetailsModel == buyMoreDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        image1,
        code,
        discountLineId,
        offerLineId,
        stockCount,
        minOrderLimit,
        maxOrderLimit,
        discountPercentageOrPrice,
        sellingPrice,
        baseUomConversionFactor,
        salesUomConversionFactor,
        offerLineCode,
        basedOn,
        dataTYpe,
        inventoryId,
        brandName,
        displayName,
        producedCountry,
        channelCode,
        baseUomNamed,
        salesUomName,
        isStock,
        discountData,
        buyMoreDetailsModel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_offerCallCenterModelCopyWith<_$_offerCallCenterModel> get copyWith =>
      __$$_offerCallCenterModelCopyWithImpl<_$_offerCallCenterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_offerCallCenterModelToJson(
      this,
    );
  }
}

abstract class _offerCallCenterModel implements offerCallCenterModel {
  const factory _offerCallCenterModel(
          {final int? id,
          final String? name,
          final String? image1,
          final String? code,
          @JsonKey(name: "discount_line_id") final int? discountLineId,
          @JsonKey(name: "offer_lines_id") final int? offerLineId,
          @JsonKey(name: "stock_count") final int? stockCount,
          @JsonKey(name: "min_order_limit") final int? minOrderLimit,
          @JsonKey(name: "max_order_limit") final int? maxOrderLimit,
          @JsonKey(name: "discount_percentage_or_price")
          final double? discountPercentageOrPrice,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "base_uom_conversion_factor")
          final double? baseUomConversionFactor,
          @JsonKey(name: "sales_uom_conversion_factor")
          final double? salesUomConversionFactor,
          @JsonKey(name: "offer_lines_code") final String? offerLineCode,
          @JsonKey(name: "based_on") final String? basedOn,
          @JsonKey(name: "data_type") final String? dataTYpe,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "brand_name") final String? brandName,
          @JsonKey(name: "display_name") final String? displayName,
          @JsonKey(name: "produced_country") final String? producedCountry,
          @JsonKey(name: "channel_code") final String? channelCode,
          @JsonKey(name: "base_uom_name") final String? baseUomNamed,
          @JsonKey(name: "sales_uom_name") final String? salesUomName,
          @JsonKey(name: "is_stock", defaultValue: false) final bool? isStock,
          @JsonKey(name: "discount_data") final DiscountDataModel? discountData,
          @JsonKey(name: "buy_more_details")
          final BuyMoreDetailsModel? buyMoreDetailsModel}) =
      _$_offerCallCenterModel;

  factory _offerCallCenterModel.fromJson(Map<String, dynamic> json) =
      _$_offerCallCenterModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image1;
  @override
  String? get code;
  @override
  @JsonKey(name: "discount_line_id")
  int? get discountLineId;
  @override
  @JsonKey(name: "offer_lines_id")
  int? get offerLineId;
  @override
  @JsonKey(name: "stock_count")
  int? get stockCount;
  @override
  @JsonKey(name: "min_order_limit")
  int? get minOrderLimit;
  @override
  @JsonKey(name: "max_order_limit")
  int? get maxOrderLimit;
  @override
  @JsonKey(name: "discount_percentage_or_price")
  double? get discountPercentageOrPrice;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "base_uom_conversion_factor")
  double? get baseUomConversionFactor;
  @override
  @JsonKey(name: "sales_uom_conversion_factor")
  double? get salesUomConversionFactor;
  @override
  @JsonKey(name: "offer_lines_code")
  String? get offerLineCode;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "data_type")
  String? get dataTYpe;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "brand_name")
  String? get brandName;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "produced_country")
  String? get producedCountry;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "base_uom_name")
  String? get baseUomNamed;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName;
  @override
  @JsonKey(name: "is_stock", defaultValue: false)
  bool? get isStock;
  @override
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountData;
  @override
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$_offerCallCenterModelCopyWith<_$_offerCallCenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

warrentyModel _$warrentyModelFromJson(Map<String, dynamic> json) {
  return _warrentyModel.fromJson(json);
}

/// @nodoc
mixin _$warrentyModel {
  int? get id => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_type_title")
  String? get warrentyTypeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_type_id")
  int? get warrentyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_conditions")
  List<String>? get warrentyConditions => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_code")
  String? get warrentyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_extended_warranty", defaultValue: false)
  bool? get isExtendedWarranty => throw _privateConstructorUsedError;
  @JsonKey(name: "is_additional_warranty", defaultValue: false)
  bool? get isAdditionalWarranty => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "extended_warranty")
  ExtendedWarranty? get extendedWarranty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $warrentyModelCopyWith<warrentyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $warrentyModelCopyWith<$Res> {
  factory $warrentyModelCopyWith(
          warrentyModel value, $Res Function(warrentyModel) then) =
      _$warrentyModelCopyWithImpl<$Res, warrentyModel>;
  @useResult
  $Res call(
      {int? id,
      int? duration,
      String? description,
      @JsonKey(name: "warranty_type_title") String? warrentyTypeTitle,
      @JsonKey(name: "warranty_type_id") int? warrentyTypeId,
      @JsonKey(name: "warranty_conditions") List<String>? warrentyConditions,
      @JsonKey(name: "warranty_code") String? warrentyCode,
      @JsonKey(name: "is_extended_warranty", defaultValue: false)
      bool? isExtendedWarranty,
      @JsonKey(name: "is_additional_warranty", defaultValue: false)
      bool? isAdditionalWarranty,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "additional_warranty")
      List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "extended_warranty") ExtendedWarranty? extendedWarranty});

  $ExtendedWarrantyCopyWith<$Res>? get extendedWarranty;
}

/// @nodoc
class _$warrentyModelCopyWithImpl<$Res, $Val extends warrentyModel>
    implements $warrentyModelCopyWith<$Res> {
  _$warrentyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? warrentyTypeTitle = freezed,
    Object? warrentyTypeId = freezed,
    Object? warrentyConditions = freezed,
    Object? warrentyCode = freezed,
    Object? isExtendedWarranty = freezed,
    Object? isAdditionalWarranty = freezed,
    Object? isActive = freezed,
    Object? additionalWarranty = freezed,
    Object? extendedWarranty = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeTitle: freezed == warrentyTypeTitle
          ? _value.warrentyTypeTitle
          : warrentyTypeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeId: freezed == warrentyTypeId
          ? _value.warrentyTypeId
          : warrentyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      warrentyConditions: freezed == warrentyConditions
          ? _value.warrentyConditions
          : warrentyConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      warrentyCode: freezed == warrentyCode
          ? _value.warrentyCode
          : warrentyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isExtendedWarranty: freezed == isExtendedWarranty
          ? _value.isExtendedWarranty
          : isExtendedWarranty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdditionalWarranty: freezed == isAdditionalWarranty
          ? _value.isAdditionalWarranty
          : isAdditionalWarranty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarranty: freezed == additionalWarranty
          ? _value.additionalWarranty
          : additionalWarranty // ignore: cast_nullable_to_non_nullable
              as List<AdditionalWarranty>?,
      extendedWarranty: freezed == extendedWarranty
          ? _value.extendedWarranty
          : extendedWarranty // ignore: cast_nullable_to_non_nullable
              as ExtendedWarranty?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtendedWarrantyCopyWith<$Res>? get extendedWarranty {
    if (_value.extendedWarranty == null) {
      return null;
    }

    return $ExtendedWarrantyCopyWith<$Res>(_value.extendedWarranty!, (value) {
      return _then(_value.copyWith(extendedWarranty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_warrentyModelCopyWith<$Res>
    implements $warrentyModelCopyWith<$Res> {
  factory _$$_warrentyModelCopyWith(
          _$_warrentyModel value, $Res Function(_$_warrentyModel) then) =
      __$$_warrentyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? duration,
      String? description,
      @JsonKey(name: "warranty_type_title") String? warrentyTypeTitle,
      @JsonKey(name: "warranty_type_id") int? warrentyTypeId,
      @JsonKey(name: "warranty_conditions") List<String>? warrentyConditions,
      @JsonKey(name: "warranty_code") String? warrentyCode,
      @JsonKey(name: "is_extended_warranty", defaultValue: false)
      bool? isExtendedWarranty,
      @JsonKey(name: "is_additional_warranty", defaultValue: false)
      bool? isAdditionalWarranty,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "additional_warranty")
      List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "extended_warranty") ExtendedWarranty? extendedWarranty});

  @override
  $ExtendedWarrantyCopyWith<$Res>? get extendedWarranty;
}

/// @nodoc
class __$$_warrentyModelCopyWithImpl<$Res>
    extends _$warrentyModelCopyWithImpl<$Res, _$_warrentyModel>
    implements _$$_warrentyModelCopyWith<$Res> {
  __$$_warrentyModelCopyWithImpl(
      _$_warrentyModel _value, $Res Function(_$_warrentyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? warrentyTypeTitle = freezed,
    Object? warrentyTypeId = freezed,
    Object? warrentyConditions = freezed,
    Object? warrentyCode = freezed,
    Object? isExtendedWarranty = freezed,
    Object? isAdditionalWarranty = freezed,
    Object? isActive = freezed,
    Object? additionalWarranty = freezed,
    Object? extendedWarranty = freezed,
  }) {
    return _then(_$_warrentyModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeTitle: freezed == warrentyTypeTitle
          ? _value.warrentyTypeTitle
          : warrentyTypeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeId: freezed == warrentyTypeId
          ? _value.warrentyTypeId
          : warrentyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      warrentyConditions: freezed == warrentyConditions
          ? _value._warrentyConditions
          : warrentyConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      warrentyCode: freezed == warrentyCode
          ? _value.warrentyCode
          : warrentyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isExtendedWarranty: freezed == isExtendedWarranty
          ? _value.isExtendedWarranty
          : isExtendedWarranty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdditionalWarranty: freezed == isAdditionalWarranty
          ? _value.isAdditionalWarranty
          : isAdditionalWarranty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarranty: freezed == additionalWarranty
          ? _value._additionalWarranty
          : additionalWarranty // ignore: cast_nullable_to_non_nullable
              as List<AdditionalWarranty>?,
      extendedWarranty: freezed == extendedWarranty
          ? _value.extendedWarranty
          : extendedWarranty // ignore: cast_nullable_to_non_nullable
              as ExtendedWarranty?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_warrentyModel implements _warrentyModel {
  const _$_warrentyModel(
      {this.id,
      this.duration,
      this.description,
      @JsonKey(name: "warranty_type_title") this.warrentyTypeTitle,
      @JsonKey(name: "warranty_type_id") this.warrentyTypeId,
      @JsonKey(name: "warranty_conditions")
      final List<String>? warrentyConditions,
      @JsonKey(name: "warranty_code") this.warrentyCode,
      @JsonKey(name: "is_extended_warranty", defaultValue: false)
      this.isExtendedWarranty,
      @JsonKey(name: "is_additional_warranty", defaultValue: false)
      this.isAdditionalWarranty,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "additional_warranty")
      final List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "extended_warranty") this.extendedWarranty})
      : _warrentyConditions = warrentyConditions,
        _additionalWarranty = additionalWarranty;

  factory _$_warrentyModel.fromJson(Map<String, dynamic> json) =>
      _$$_warrentyModelFromJson(json);

  @override
  final int? id;
  @override
  final int? duration;
  @override
  final String? description;
  @override
  @JsonKey(name: "warranty_type_title")
  final String? warrentyTypeTitle;
  @override
  @JsonKey(name: "warranty_type_id")
  final int? warrentyTypeId;
  final List<String>? _warrentyConditions;
  @override
  @JsonKey(name: "warranty_conditions")
  List<String>? get warrentyConditions {
    final value = _warrentyConditions;
    if (value == null) return null;
    if (_warrentyConditions is EqualUnmodifiableListView)
      return _warrentyConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "warranty_code")
  final String? warrentyCode;
  @override
  @JsonKey(name: "is_extended_warranty", defaultValue: false)
  final bool? isExtendedWarranty;
  @override
  @JsonKey(name: "is_additional_warranty", defaultValue: false)
  final bool? isAdditionalWarranty;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  final List<AdditionalWarranty>? _additionalWarranty;
  @override
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty {
    final value = _additionalWarranty;
    if (value == null) return null;
    if (_additionalWarranty is EqualUnmodifiableListView)
      return _additionalWarranty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "extended_warranty")
  final ExtendedWarranty? extendedWarranty;

  @override
  String toString() {
    return 'warrentyModel(id: $id, duration: $duration, description: $description, warrentyTypeTitle: $warrentyTypeTitle, warrentyTypeId: $warrentyTypeId, warrentyConditions: $warrentyConditions, warrentyCode: $warrentyCode, isExtendedWarranty: $isExtendedWarranty, isAdditionalWarranty: $isAdditionalWarranty, isActive: $isActive, additionalWarranty: $additionalWarranty, extendedWarranty: $extendedWarranty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_warrentyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.warrentyTypeTitle, warrentyTypeTitle) ||
                other.warrentyTypeTitle == warrentyTypeTitle) &&
            (identical(other.warrentyTypeId, warrentyTypeId) ||
                other.warrentyTypeId == warrentyTypeId) &&
            const DeepCollectionEquality()
                .equals(other._warrentyConditions, _warrentyConditions) &&
            (identical(other.warrentyCode, warrentyCode) ||
                other.warrentyCode == warrentyCode) &&
            (identical(other.isExtendedWarranty, isExtendedWarranty) ||
                other.isExtendedWarranty == isExtendedWarranty) &&
            (identical(other.isAdditionalWarranty, isAdditionalWarranty) ||
                other.isAdditionalWarranty == isAdditionalWarranty) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._additionalWarranty, _additionalWarranty) &&
            (identical(other.extendedWarranty, extendedWarranty) ||
                other.extendedWarranty == extendedWarranty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      duration,
      description,
      warrentyTypeTitle,
      warrentyTypeId,
      const DeepCollectionEquality().hash(_warrentyConditions),
      warrentyCode,
      isExtendedWarranty,
      isAdditionalWarranty,
      isActive,
      const DeepCollectionEquality().hash(_additionalWarranty),
      extendedWarranty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_warrentyModelCopyWith<_$_warrentyModel> get copyWith =>
      __$$_warrentyModelCopyWithImpl<_$_warrentyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_warrentyModelToJson(
      this,
    );
  }
}

abstract class _warrentyModel implements warrentyModel {
  const factory _warrentyModel(
      {final int? id,
      final int? duration,
      final String? description,
      @JsonKey(name: "warranty_type_title") final String? warrentyTypeTitle,
      @JsonKey(name: "warranty_type_id") final int? warrentyTypeId,
      @JsonKey(name: "warranty_conditions")
      final List<String>? warrentyConditions,
      @JsonKey(name: "warranty_code") final String? warrentyCode,
      @JsonKey(name: "is_extended_warranty", defaultValue: false)
      final bool? isExtendedWarranty,
      @JsonKey(name: "is_additional_warranty", defaultValue: false)
      final bool? isAdditionalWarranty,
      @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
      @JsonKey(name: "additional_warranty")
      final List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "extended_warranty")
      final ExtendedWarranty? extendedWarranty}) = _$_warrentyModel;

  factory _warrentyModel.fromJson(Map<String, dynamic> json) =
      _$_warrentyModel.fromJson;

  @override
  int? get id;
  @override
  int? get duration;
  @override
  String? get description;
  @override
  @JsonKey(name: "warranty_type_title")
  String? get warrentyTypeTitle;
  @override
  @JsonKey(name: "warranty_type_id")
  int? get warrentyTypeId;
  @override
  @JsonKey(name: "warranty_conditions")
  List<String>? get warrentyConditions;
  @override
  @JsonKey(name: "warranty_code")
  String? get warrentyCode;
  @override
  @JsonKey(name: "is_extended_warranty", defaultValue: false)
  bool? get isExtendedWarranty;
  @override
  @JsonKey(name: "is_additional_warranty", defaultValue: false)
  bool? get isAdditionalWarranty;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty;
  @override
  @JsonKey(name: "extended_warranty")
  ExtendedWarranty? get extendedWarranty;
  @override
  @JsonKey(ignore: true)
  _$$_warrentyModelCopyWith<_$_warrentyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalWarranty _$AdditionalWarrantyFromJson(Map<String, dynamic> json) {
  return _AdditionalWarranty.fromJson(json);
}

/// @nodoc
mixin _$AdditionalWarranty {
  int? get id => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_warranty_code")
  String? get additionalWarrantyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_section")
  String? get warrantySection => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_type_id")
  int? get warrentyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_occurence")
  int? get maximumOccurance => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_enabled")
  bool? get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "addtional_warranty_conditions")
  List<String>? get additionalWarrantyConditions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalWarrantyCopyWith<AdditionalWarranty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalWarrantyCopyWith<$Res> {
  factory $AdditionalWarrantyCopyWith(
          AdditionalWarranty value, $Res Function(AdditionalWarranty) then) =
      _$AdditionalWarrantyCopyWithImpl<$Res, AdditionalWarranty>;
  @useResult
  $Res call(
      {int? id,
      int? duration,
      @JsonKey(name: "additional_warranty_code") String? additionalWarrantyCode,
      @JsonKey(name: "warranty_section") String? warrantySection,
      @JsonKey(name: "warranty_type_id") int? warrentyTypeId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "maximum_occurence") int? maximumOccurance,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_enabled") bool? isEnabled,
      @JsonKey(name: "addtional_warranty_conditions")
      List<String>? additionalWarrantyConditions});
}

/// @nodoc
class _$AdditionalWarrantyCopyWithImpl<$Res, $Val extends AdditionalWarranty>
    implements $AdditionalWarrantyCopyWith<$Res> {
  _$AdditionalWarrantyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? additionalWarrantyCode = freezed,
    Object? warrantySection = freezed,
    Object? warrentyTypeId = freezed,
    Object? description = freezed,
    Object? maximumOccurance = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? additionalWarrantyConditions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalWarrantyCode: freezed == additionalWarrantyCode
          ? _value.additionalWarrantyCode
          : additionalWarrantyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantySection: freezed == warrantySection
          ? _value.warrantySection
          : warrantySection // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeId: freezed == warrentyTypeId
          ? _value.warrentyTypeId
          : warrentyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOccurance: freezed == maximumOccurance
          ? _value.maximumOccurance
          : maximumOccurance // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarrantyConditions: freezed == additionalWarrantyConditions
          ? _value.additionalWarrantyConditions
          : additionalWarrantyConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalWarrantyCopyWith<$Res>
    implements $AdditionalWarrantyCopyWith<$Res> {
  factory _$$_AdditionalWarrantyCopyWith(_$_AdditionalWarranty value,
          $Res Function(_$_AdditionalWarranty) then) =
      __$$_AdditionalWarrantyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? duration,
      @JsonKey(name: "additional_warranty_code") String? additionalWarrantyCode,
      @JsonKey(name: "warranty_section") String? warrantySection,
      @JsonKey(name: "warranty_type_id") int? warrentyTypeId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "maximum_occurence") int? maximumOccurance,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_enabled") bool? isEnabled,
      @JsonKey(name: "addtional_warranty_conditions")
      List<String>? additionalWarrantyConditions});
}

/// @nodoc
class __$$_AdditionalWarrantyCopyWithImpl<$Res>
    extends _$AdditionalWarrantyCopyWithImpl<$Res, _$_AdditionalWarranty>
    implements _$$_AdditionalWarrantyCopyWith<$Res> {
  __$$_AdditionalWarrantyCopyWithImpl(
      _$_AdditionalWarranty _value, $Res Function(_$_AdditionalWarranty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? additionalWarrantyCode = freezed,
    Object? warrantySection = freezed,
    Object? warrentyTypeId = freezed,
    Object? description = freezed,
    Object? maximumOccurance = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? additionalWarrantyConditions = freezed,
  }) {
    return _then(_$_AdditionalWarranty(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalWarrantyCode: freezed == additionalWarrantyCode
          ? _value.additionalWarrantyCode
          : additionalWarrantyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantySection: freezed == warrantySection
          ? _value.warrantySection
          : warrantySection // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyTypeId: freezed == warrentyTypeId
          ? _value.warrentyTypeId
          : warrentyTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOccurance: freezed == maximumOccurance
          ? _value.maximumOccurance
          : maximumOccurance // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarrantyConditions: freezed == additionalWarrantyConditions
          ? _value._additionalWarrantyConditions
          : additionalWarrantyConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalWarranty implements _AdditionalWarranty {
  const _$_AdditionalWarranty(
      {this.id,
      this.duration,
      @JsonKey(name: "additional_warranty_code") this.additionalWarrantyCode,
      @JsonKey(name: "warranty_section") this.warrantySection,
      @JsonKey(name: "warranty_type_id") this.warrentyTypeId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "maximum_occurence") this.maximumOccurance,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_enabled") this.isEnabled,
      @JsonKey(name: "addtional_warranty_conditions")
      final List<String>? additionalWarrantyConditions})
      : _additionalWarrantyConditions = additionalWarrantyConditions;

  factory _$_AdditionalWarranty.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalWarrantyFromJson(json);

  @override
  final int? id;
  @override
  final int? duration;
  @override
  @JsonKey(name: "additional_warranty_code")
  final String? additionalWarrantyCode;
  @override
  @JsonKey(name: "warranty_section")
  final String? warrantySection;
  @override
  @JsonKey(name: "warranty_type_id")
  final int? warrentyTypeId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "maximum_occurence")
  final int? maximumOccurance;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "is_enabled")
  final bool? isEnabled;
  final List<String>? _additionalWarrantyConditions;
  @override
  @JsonKey(name: "addtional_warranty_conditions")
  List<String>? get additionalWarrantyConditions {
    final value = _additionalWarrantyConditions;
    if (value == null) return null;
    if (_additionalWarrantyConditions is EqualUnmodifiableListView)
      return _additionalWarrantyConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdditionalWarranty(id: $id, duration: $duration, additionalWarrantyCode: $additionalWarrantyCode, warrantySection: $warrantySection, warrentyTypeId: $warrentyTypeId, description: $description, maximumOccurance: $maximumOccurance, isActive: $isActive, isEnabled: $isEnabled, additionalWarrantyConditions: $additionalWarrantyConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalWarranty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.additionalWarrantyCode, additionalWarrantyCode) ||
                other.additionalWarrantyCode == additionalWarrantyCode) &&
            (identical(other.warrantySection, warrantySection) ||
                other.warrantySection == warrantySection) &&
            (identical(other.warrentyTypeId, warrentyTypeId) ||
                other.warrentyTypeId == warrentyTypeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.maximumOccurance, maximumOccurance) ||
                other.maximumOccurance == maximumOccurance) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality().equals(
                other._additionalWarrantyConditions,
                _additionalWarrantyConditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      duration,
      additionalWarrantyCode,
      warrantySection,
      warrentyTypeId,
      description,
      maximumOccurance,
      isActive,
      isEnabled,
      const DeepCollectionEquality().hash(_additionalWarrantyConditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalWarrantyCopyWith<_$_AdditionalWarranty> get copyWith =>
      __$$_AdditionalWarrantyCopyWithImpl<_$_AdditionalWarranty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalWarrantyToJson(
      this,
    );
  }
}

abstract class _AdditionalWarranty implements AdditionalWarranty {
  const factory _AdditionalWarranty(
          {final int? id,
          final int? duration,
          @JsonKey(name: "additional_warranty_code")
          final String? additionalWarrantyCode,
          @JsonKey(name: "warranty_section") final String? warrantySection,
          @JsonKey(name: "warranty_type_id") final int? warrentyTypeId,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "maximum_occurence") final int? maximumOccurance,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "is_enabled") final bool? isEnabled,
          @JsonKey(name: "addtional_warranty_conditions")
          final List<String>? additionalWarrantyConditions}) =
      _$_AdditionalWarranty;

  factory _AdditionalWarranty.fromJson(Map<String, dynamic> json) =
      _$_AdditionalWarranty.fromJson;

  @override
  int? get id;
  @override
  int? get duration;
  @override
  @JsonKey(name: "additional_warranty_code")
  String? get additionalWarrantyCode;
  @override
  @JsonKey(name: "warranty_section")
  String? get warrantySection;
  @override
  @JsonKey(name: "warranty_type_id")
  int? get warrentyTypeId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "maximum_occurence")
  int? get maximumOccurance;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "is_enabled")
  bool? get isEnabled;
  @override
  @JsonKey(name: "addtional_warranty_conditions")
  List<String>? get additionalWarrantyConditions;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalWarrantyCopyWith<_$_AdditionalWarranty> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtendedWarranty _$ExtendedWarrantyFromJson(Map<String, dynamic> json) {
  return _ExtendedWarranty.fromJson(json);
}

/// @nodoc
mixin _$ExtendedWarranty {
  int? get id => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "extended_warranty_code")
  String? get ExtendedWarrantyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_occurence")
  int? get maximumOccurance => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_enabled")
  bool? get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtendedWarrantyCopyWith<ExtendedWarranty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedWarrantyCopyWith<$Res> {
  factory $ExtendedWarrantyCopyWith(
          ExtendedWarranty value, $Res Function(ExtendedWarranty) then) =
      _$ExtendedWarrantyCopyWithImpl<$Res, ExtendedWarranty>;
  @useResult
  $Res call(
      {int? id,
      int? duration,
      double? price,
      @JsonKey(name: "extended_warranty_code") String? ExtendedWarrantyCode,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "maximum_occurence") int? maximumOccurance,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_enabled") bool? isEnabled,
      @JsonKey(name: "additional_warranty")
      List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class _$ExtendedWarrantyCopyWithImpl<$Res, $Val extends ExtendedWarranty>
    implements $ExtendedWarrantyCopyWith<$Res> {
  _$ExtendedWarrantyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? ExtendedWarrantyCode = freezed,
    Object? description = freezed,
    Object? maximumOccurance = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? additionalWarranty = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      ExtendedWarrantyCode: freezed == ExtendedWarrantyCode
          ? _value.ExtendedWarrantyCode
          : ExtendedWarrantyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOccurance: freezed == maximumOccurance
          ? _value.maximumOccurance
          : maximumOccurance // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarranty: freezed == additionalWarranty
          ? _value.additionalWarranty
          : additionalWarranty // ignore: cast_nullable_to_non_nullable
              as List<AdditionalWarranty>?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel {
    if (_value.buyMoreDetailsModel == null) {
      return null;
    }

    return $BuyMoreDetailsModelCopyWith<$Res>(_value.buyMoreDetailsModel!,
        (value) {
      return _then(_value.copyWith(buyMoreDetailsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExtendedWarrantyCopyWith<$Res>
    implements $ExtendedWarrantyCopyWith<$Res> {
  factory _$$_ExtendedWarrantyCopyWith(
          _$_ExtendedWarranty value, $Res Function(_$_ExtendedWarranty) then) =
      __$$_ExtendedWarrantyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? duration,
      double? price,
      @JsonKey(name: "extended_warranty_code") String? ExtendedWarrantyCode,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "maximum_occurence") int? maximumOccurance,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_enabled") bool? isEnabled,
      @JsonKey(name: "additional_warranty")
      List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "buy_more_details")
      BuyMoreDetailsModel? buyMoreDetailsModel});

  @override
  $BuyMoreDetailsModelCopyWith<$Res>? get buyMoreDetailsModel;
}

/// @nodoc
class __$$_ExtendedWarrantyCopyWithImpl<$Res>
    extends _$ExtendedWarrantyCopyWithImpl<$Res, _$_ExtendedWarranty>
    implements _$$_ExtendedWarrantyCopyWith<$Res> {
  __$$_ExtendedWarrantyCopyWithImpl(
      _$_ExtendedWarranty _value, $Res Function(_$_ExtendedWarranty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? ExtendedWarrantyCode = freezed,
    Object? description = freezed,
    Object? maximumOccurance = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? additionalWarranty = freezed,
    Object? buyMoreDetailsModel = freezed,
  }) {
    return _then(_$_ExtendedWarranty(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      ExtendedWarrantyCode: freezed == ExtendedWarrantyCode
          ? _value.ExtendedWarrantyCode
          : ExtendedWarrantyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOccurance: freezed == maximumOccurance
          ? _value.maximumOccurance
          : maximumOccurance // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalWarranty: freezed == additionalWarranty
          ? _value._additionalWarranty
          : additionalWarranty // ignore: cast_nullable_to_non_nullable
              as List<AdditionalWarranty>?,
      buyMoreDetailsModel: freezed == buyMoreDetailsModel
          ? _value.buyMoreDetailsModel
          : buyMoreDetailsModel // ignore: cast_nullable_to_non_nullable
              as BuyMoreDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtendedWarranty implements _ExtendedWarranty {
  const _$_ExtendedWarranty(
      {this.id,
      this.duration,
      this.price,
      @JsonKey(name: "extended_warranty_code") this.ExtendedWarrantyCode,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "maximum_occurence") this.maximumOccurance,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_enabled") this.isEnabled,
      @JsonKey(name: "additional_warranty")
      final List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "buy_more_details") this.buyMoreDetailsModel})
      : _additionalWarranty = additionalWarranty;

  factory _$_ExtendedWarranty.fromJson(Map<String, dynamic> json) =>
      _$$_ExtendedWarrantyFromJson(json);

  @override
  final int? id;
  @override
  final int? duration;
  @override
  final double? price;
  @override
  @JsonKey(name: "extended_warranty_code")
  final String? ExtendedWarrantyCode;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "maximum_occurence")
  final int? maximumOccurance;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "is_enabled")
  final bool? isEnabled;
  final List<AdditionalWarranty>? _additionalWarranty;
  @override
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty {
    final value = _additionalWarranty;
    if (value == null) return null;
    if (_additionalWarranty is EqualUnmodifiableListView)
      return _additionalWarranty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "buy_more_details")
  final BuyMoreDetailsModel? buyMoreDetailsModel;

  @override
  String toString() {
    return 'ExtendedWarranty(id: $id, duration: $duration, price: $price, ExtendedWarrantyCode: $ExtendedWarrantyCode, description: $description, maximumOccurance: $maximumOccurance, isActive: $isActive, isEnabled: $isEnabled, additionalWarranty: $additionalWarranty, buyMoreDetailsModel: $buyMoreDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtendedWarranty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ExtendedWarrantyCode, ExtendedWarrantyCode) ||
                other.ExtendedWarrantyCode == ExtendedWarrantyCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.maximumOccurance, maximumOccurance) ||
                other.maximumOccurance == maximumOccurance) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality()
                .equals(other._additionalWarranty, _additionalWarranty) &&
            (identical(other.buyMoreDetailsModel, buyMoreDetailsModel) ||
                other.buyMoreDetailsModel == buyMoreDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      duration,
      price,
      ExtendedWarrantyCode,
      description,
      maximumOccurance,
      isActive,
      isEnabled,
      const DeepCollectionEquality().hash(_additionalWarranty),
      buyMoreDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtendedWarrantyCopyWith<_$_ExtendedWarranty> get copyWith =>
      __$$_ExtendedWarrantyCopyWithImpl<_$_ExtendedWarranty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtendedWarrantyToJson(
      this,
    );
  }
}

abstract class _ExtendedWarranty implements ExtendedWarranty {
  const factory _ExtendedWarranty(
      {final int? id,
      final int? duration,
      final double? price,
      @JsonKey(name: "extended_warranty_code")
      final String? ExtendedWarrantyCode,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "maximum_occurence") final int? maximumOccurance,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "is_enabled") final bool? isEnabled,
      @JsonKey(name: "additional_warranty")
      final List<AdditionalWarranty>? additionalWarranty,
      @JsonKey(name: "buy_more_details")
      final BuyMoreDetailsModel? buyMoreDetailsModel}) = _$_ExtendedWarranty;

  factory _ExtendedWarranty.fromJson(Map<String, dynamic> json) =
      _$_ExtendedWarranty.fromJson;

  @override
  int? get id;
  @override
  int? get duration;
  @override
  double? get price;
  @override
  @JsonKey(name: "extended_warranty_code")
  String? get ExtendedWarrantyCode;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "maximum_occurence")
  int? get maximumOccurance;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "is_enabled")
  bool? get isEnabled;
  @override
  @JsonKey(name: "additional_warranty")
  List<AdditionalWarranty>? get additionalWarranty;
  @override
  @JsonKey(name: "buy_more_details")
  BuyMoreDetailsModel? get buyMoreDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$_ExtendedWarrantyCopyWith<_$_ExtendedWarranty> get copyWith =>
      throw _privateConstructorUsedError;
}

NegotiationModel _$NegotiationModelFromJson(Map<String, dynamic> json) {
  return _NegotiationModel.fromJson(json);
}

/// @nodoc
mixin _$NegotiationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "segment_code")
  String? get segmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NegotiationModelCopyWith<NegotiationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiationModelCopyWith<$Res> {
  factory $NegotiationModelCopyWith(
          NegotiationModel value, $Res Function(NegotiationModel) then) =
      _$NegotiationModelCopyWithImpl<$Res, NegotiationModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class _$NegotiationModelCopyWithImpl<$Res, $Val extends NegotiationModel>
    implements $NegotiationModelCopyWith<$Res> {
  _$NegotiationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerGroupCode = freezed,
    Object? segmentCode = freezed,
    Object? totalCartValue = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      cartlineModel: freezed == cartlineModel
          ? _value.cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NegotiationModelCopyWith<$Res>
    implements $NegotiationModelCopyWith<$Res> {
  factory _$$_NegotiationModelCopyWith(
          _$_NegotiationModel value, $Res Function(_$_NegotiationModel) then) =
      __$$_NegotiationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "segment_code") String? segmentCode,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class __$$_NegotiationModelCopyWithImpl<$Res>
    extends _$NegotiationModelCopyWithImpl<$Res, _$_NegotiationModel>
    implements _$$_NegotiationModelCopyWith<$Res> {
  __$$_NegotiationModelCopyWithImpl(
      _$_NegotiationModel _value, $Res Function(_$_NegotiationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerGroupCode = freezed,
    Object? segmentCode = freezed,
    Object? totalCartValue = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_$_NegotiationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentCode: freezed == segmentCode
          ? _value.segmentCode
          : segmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      cartlineModel: freezed == cartlineModel
          ? _value._cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NegotiationModel implements _NegotiationModel {
  const _$_NegotiationModel(
      {this.id,
      @JsonKey(name: "customer_group_code") this.customerGroupCode,
      @JsonKey(name: "segment_code") this.segmentCode,
      @JsonKey(name: "total_cart_value") this.totalCartValue,
      @JsonKey(name: "cart_line") final List<CartLineModel>? cartlineModel})
      : _cartlineModel = cartlineModel;

  factory _$_NegotiationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NegotiationModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "customer_group_code")
  final String? customerGroupCode;
  @override
  @JsonKey(name: "segment_code")
  final String? segmentCode;
  @override
  @JsonKey(name: "total_cart_value")
  final double? totalCartValue;
  final List<CartLineModel>? _cartlineModel;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel {
    final value = _cartlineModel;
    if (value == null) return null;
    if (_cartlineModel is EqualUnmodifiableListView) return _cartlineModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NegotiationModel(id: $id, customerGroupCode: $customerGroupCode, segmentCode: $segmentCode, totalCartValue: $totalCartValue, cartlineModel: $cartlineModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NegotiationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerGroupCode, customerGroupCode) ||
                other.customerGroupCode == customerGroupCode) &&
            (identical(other.segmentCode, segmentCode) ||
                other.segmentCode == segmentCode) &&
            (identical(other.totalCartValue, totalCartValue) ||
                other.totalCartValue == totalCartValue) &&
            const DeepCollectionEquality()
                .equals(other._cartlineModel, _cartlineModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerGroupCode,
      segmentCode,
      totalCartValue,
      const DeepCollectionEquality().hash(_cartlineModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NegotiationModelCopyWith<_$_NegotiationModel> get copyWith =>
      __$$_NegotiationModelCopyWithImpl<_$_NegotiationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NegotiationModelToJson(
      this,
    );
  }
}

abstract class _NegotiationModel implements NegotiationModel {
  const factory _NegotiationModel(
      {final int? id,
      @JsonKey(name: "customer_group_code") final String? customerGroupCode,
      @JsonKey(name: "segment_code") final String? segmentCode,
      @JsonKey(name: "total_cart_value") final double? totalCartValue,
      @JsonKey(name: "cart_line")
      final List<CartLineModel>? cartlineModel}) = _$_NegotiationModel;

  factory _NegotiationModel.fromJson(Map<String, dynamic> json) =
      _$_NegotiationModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode;
  @override
  @JsonKey(name: "segment_code")
  String? get segmentCode;
  @override
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel;
  @override
  @JsonKey(ignore: true)
  _$$_NegotiationModelCopyWith<_$_NegotiationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NegotiationCheckModel _$NegotiationCheckModelFromJson(
    Map<String, dynamic> json) {
  return _NegotiationCheckModel.fromJson(json);
}

/// @nodoc
mixin _$NegotiationCheckModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "negtiation_type")
  String? get negotiationType => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_code")
  String? get negotiatonCode => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_limit")
  int? get negotiationLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NegotiationCheckModelCopyWith<NegotiationCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiationCheckModelCopyWith<$Res> {
  factory $NegotiationCheckModelCopyWith(NegotiationCheckModel value,
          $Res Function(NegotiationCheckModel) then) =
      _$NegotiationCheckModelCopyWithImpl<$Res, NegotiationCheckModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "negtiation_type") String? negotiationType,
      @JsonKey(name: "negotiation_code") String? negotiatonCode,
      @JsonKey(name: "negotiation_limit") int? negotiationLimit,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class _$NegotiationCheckModelCopyWithImpl<$Res,
        $Val extends NegotiationCheckModel>
    implements $NegotiationCheckModelCopyWith<$Res> {
  _$NegotiationCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? negotiationType = freezed,
    Object? negotiatonCode = freezed,
    Object? negotiationLimit = freezed,
    Object? totalCartValue = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiationType: freezed == negotiationType
          ? _value.negotiationType
          : negotiationType // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiatonCode: freezed == negotiatonCode
          ? _value.negotiatonCode
          : negotiatonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationLimit: freezed == negotiationLimit
          ? _value.negotiationLimit
          : negotiationLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      cartlineModel: freezed == cartlineModel
          ? _value.cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NegotiationCheckModelCopyWith<$Res>
    implements $NegotiationCheckModelCopyWith<$Res> {
  factory _$$_NegotiationCheckModelCopyWith(_$_NegotiationCheckModel value,
          $Res Function(_$_NegotiationCheckModel) then) =
      __$$_NegotiationCheckModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "negtiation_type") String? negotiationType,
      @JsonKey(name: "negotiation_code") String? negotiatonCode,
      @JsonKey(name: "negotiation_limit") int? negotiationLimit,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class __$$_NegotiationCheckModelCopyWithImpl<$Res>
    extends _$NegotiationCheckModelCopyWithImpl<$Res, _$_NegotiationCheckModel>
    implements _$$_NegotiationCheckModelCopyWith<$Res> {
  __$$_NegotiationCheckModelCopyWithImpl(_$_NegotiationCheckModel _value,
      $Res Function(_$_NegotiationCheckModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? negotiationType = freezed,
    Object? negotiatonCode = freezed,
    Object? negotiationLimit = freezed,
    Object? totalCartValue = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_$_NegotiationCheckModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiationType: freezed == negotiationType
          ? _value.negotiationType
          : negotiationType // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiatonCode: freezed == negotiatonCode
          ? _value.negotiatonCode
          : negotiatonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationLimit: freezed == negotiationLimit
          ? _value.negotiationLimit
          : negotiationLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      cartlineModel: freezed == cartlineModel
          ? _value._cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NegotiationCheckModel implements _NegotiationCheckModel {
  const _$_NegotiationCheckModel(
      {this.id,
      @JsonKey(name: "negtiation_type") this.negotiationType,
      @JsonKey(name: "negotiation_code") this.negotiatonCode,
      @JsonKey(name: "negotiation_limit") this.negotiationLimit,
      @JsonKey(name: "total_cart_value") this.totalCartValue,
      @JsonKey(name: "cart_line") final List<CartLineModel>? cartlineModel})
      : _cartlineModel = cartlineModel;

  factory _$_NegotiationCheckModel.fromJson(Map<String, dynamic> json) =>
      _$$_NegotiationCheckModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "negtiation_type")
  final String? negotiationType;
  @override
  @JsonKey(name: "negotiation_code")
  final String? negotiatonCode;
  @override
  @JsonKey(name: "negotiation_limit")
  final int? negotiationLimit;
  @override
  @JsonKey(name: "total_cart_value")
  final double? totalCartValue;
  final List<CartLineModel>? _cartlineModel;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel {
    final value = _cartlineModel;
    if (value == null) return null;
    if (_cartlineModel is EqualUnmodifiableListView) return _cartlineModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NegotiationCheckModel(id: $id, negotiationType: $negotiationType, negotiatonCode: $negotiatonCode, negotiationLimit: $negotiationLimit, totalCartValue: $totalCartValue, cartlineModel: $cartlineModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NegotiationCheckModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.negotiationType, negotiationType) ||
                other.negotiationType == negotiationType) &&
            (identical(other.negotiatonCode, negotiatonCode) ||
                other.negotiatonCode == negotiatonCode) &&
            (identical(other.negotiationLimit, negotiationLimit) ||
                other.negotiationLimit == negotiationLimit) &&
            (identical(other.totalCartValue, totalCartValue) ||
                other.totalCartValue == totalCartValue) &&
            const DeepCollectionEquality()
                .equals(other._cartlineModel, _cartlineModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      negotiationType,
      negotiatonCode,
      negotiationLimit,
      totalCartValue,
      const DeepCollectionEquality().hash(_cartlineModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NegotiationCheckModelCopyWith<_$_NegotiationCheckModel> get copyWith =>
      __$$_NegotiationCheckModelCopyWithImpl<_$_NegotiationCheckModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NegotiationCheckModelToJson(
      this,
    );
  }
}

abstract class _NegotiationCheckModel implements NegotiationCheckModel {
  const factory _NegotiationCheckModel(
      {final int? id,
      @JsonKey(name: "negtiation_type") final String? negotiationType,
      @JsonKey(name: "negotiation_code") final String? negotiatonCode,
      @JsonKey(name: "negotiation_limit") final int? negotiationLimit,
      @JsonKey(name: "total_cart_value") final double? totalCartValue,
      @JsonKey(name: "cart_line")
      final List<CartLineModel>? cartlineModel}) = _$_NegotiationCheckModel;

  factory _NegotiationCheckModel.fromJson(Map<String, dynamic> json) =
      _$_NegotiationCheckModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "negtiation_type")
  String? get negotiationType;
  @override
  @JsonKey(name: "negotiation_code")
  String? get negotiatonCode;
  @override
  @JsonKey(name: "negotiation_limit")
  int? get negotiationLimit;
  @override
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel;
  @override
  @JsonKey(ignore: true)
  _$$_NegotiationCheckModelCopyWith<_$_NegotiationCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartLineModel _$CartLineModelFromJson(Map<String, dynamic> json) {
  return _CartLineModel.fromJson(json);
}

/// @nodoc
mixin _$CartLineModel {
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "total_selling_price")
  double? get totalSellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get varaintCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartLineModelCopyWith<CartLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartLineModelCopyWith<$Res> {
  factory $CartLineModelCopyWith(
          CartLineModel value, $Res Function(CartLineModel) then) =
      _$CartLineModelCopyWithImpl<$Res, CartLineModel>;
  @useResult
  $Res call(
      {int? quantity,
      @JsonKey(name: "total_selling_price") double? totalSellingPrice,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "variant_code") String? varaintCode});
}

/// @nodoc
class _$CartLineModelCopyWithImpl<$Res, $Val extends CartLineModel>
    implements $CartLineModelCopyWith<$Res> {
  _$CartLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? totalSellingPrice = freezed,
    Object? actualCost = freezed,
    Object? varaintCode = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSellingPrice: freezed == totalSellingPrice
          ? _value.totalSellingPrice
          : totalSellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      varaintCode: freezed == varaintCode
          ? _value.varaintCode
          : varaintCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartLineModelCopyWith<$Res>
    implements $CartLineModelCopyWith<$Res> {
  factory _$$_CartLineModelCopyWith(
          _$_CartLineModel value, $Res Function(_$_CartLineModel) then) =
      __$$_CartLineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? quantity,
      @JsonKey(name: "total_selling_price") double? totalSellingPrice,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "variant_code") String? varaintCode});
}

/// @nodoc
class __$$_CartLineModelCopyWithImpl<$Res>
    extends _$CartLineModelCopyWithImpl<$Res, _$_CartLineModel>
    implements _$$_CartLineModelCopyWith<$Res> {
  __$$_CartLineModelCopyWithImpl(
      _$_CartLineModel _value, $Res Function(_$_CartLineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? totalSellingPrice = freezed,
    Object? actualCost = freezed,
    Object? varaintCode = freezed,
  }) {
    return _then(_$_CartLineModel(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSellingPrice: freezed == totalSellingPrice
          ? _value.totalSellingPrice
          : totalSellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      varaintCode: freezed == varaintCode
          ? _value.varaintCode
          : varaintCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartLineModel implements _CartLineModel {
  const _$_CartLineModel(
      {this.quantity,
      @JsonKey(name: "total_selling_price") this.totalSellingPrice,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "variant_code") this.varaintCode});

  factory _$_CartLineModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartLineModelFromJson(json);

  @override
  final int? quantity;
  @override
  @JsonKey(name: "total_selling_price")
  final double? totalSellingPrice;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "variant_code")
  final String? varaintCode;

  @override
  String toString() {
    return 'CartLineModel(quantity: $quantity, totalSellingPrice: $totalSellingPrice, actualCost: $actualCost, varaintCode: $varaintCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLineModel &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalSellingPrice, totalSellingPrice) ||
                other.totalSellingPrice == totalSellingPrice) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.varaintCode, varaintCode) ||
                other.varaintCode == varaintCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, quantity, totalSellingPrice, actualCost, varaintCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartLineModelCopyWith<_$_CartLineModel> get copyWith =>
      __$$_CartLineModelCopyWithImpl<_$_CartLineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartLineModelToJson(
      this,
    );
  }
}

abstract class _CartLineModel implements CartLineModel {
  const factory _CartLineModel(
          {final int? quantity,
          @JsonKey(name: "total_selling_price") final double? totalSellingPrice,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "variant_code") final String? varaintCode}) =
      _$_CartLineModel;

  factory _CartLineModel.fromJson(Map<String, dynamic> json) =
      _$_CartLineModel.fromJson;

  @override
  int? get quantity;
  @override
  @JsonKey(name: "total_selling_price")
  double? get totalSellingPrice;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "variant_code")
  String? get varaintCode;
  @override
  @JsonKey(ignore: true)
  _$$_CartLineModelCopyWith<_$_CartLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NegotiationOutPutModel _$NegotiationOutPutModelFromJson(
    Map<String, dynamic> json) {
  return _NegotiationOutPutModel.fromJson(json);
}

/// @nodoc
mixin _$NegotiationOutPutModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_code")
  String? get negotiationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_value")
  double? get negotiationValue => throw _privateConstructorUsedError;
  @JsonKey(name: "based_on")
  String? get basedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "negtiation_type")
  String? get negotiationType => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_applied_value")
  double? get negotiationAppliedValue => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_limit")
  int? get negotiationLinit => throw _privateConstructorUsedError;
  @JsonKey(name: "is_negotiation_get")
  bool? get isNegotationGet => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NegotiationOutPutModelCopyWith<NegotiationOutPutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiationOutPutModelCopyWith<$Res> {
  factory $NegotiationOutPutModelCopyWith(NegotiationOutPutModel value,
          $Res Function(NegotiationOutPutModel) then) =
      _$NegotiationOutPutModelCopyWithImpl<$Res, NegotiationOutPutModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: "negotiation_code") String? negotiationCode,
      @JsonKey(name: "negotiation_value") double? negotiationValue,
      @JsonKey(name: "based_on") String? basedOn,
      @JsonKey(name: "negtiation_type") String? negotiationType,
      @JsonKey(name: "negotiation_applied_value")
      double? negotiationAppliedValue,
      @JsonKey(name: "negotiation_limit") int? negotiationLinit,
      @JsonKey(name: "is_negotiation_get") bool? isNegotationGet,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class _$NegotiationOutPutModelCopyWithImpl<$Res,
        $Val extends NegotiationOutPutModel>
    implements $NegotiationOutPutModelCopyWith<$Res> {
  _$NegotiationOutPutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? negotiationCode = freezed,
    Object? negotiationValue = freezed,
    Object? basedOn = freezed,
    Object? negotiationType = freezed,
    Object? negotiationAppliedValue = freezed,
    Object? negotiationLinit = freezed,
    Object? isNegotationGet = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationCode: freezed == negotiationCode
          ? _value.negotiationCode
          : negotiationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationValue: freezed == negotiationValue
          ? _value.negotiationValue
          : negotiationValue // ignore: cast_nullable_to_non_nullable
              as double?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationType: freezed == negotiationType
          ? _value.negotiationType
          : negotiationType // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationAppliedValue: freezed == negotiationAppliedValue
          ? _value.negotiationAppliedValue
          : negotiationAppliedValue // ignore: cast_nullable_to_non_nullable
              as double?,
      negotiationLinit: freezed == negotiationLinit
          ? _value.negotiationLinit
          : negotiationLinit // ignore: cast_nullable_to_non_nullable
              as int?,
      isNegotationGet: freezed == isNegotationGet
          ? _value.isNegotationGet
          : isNegotationGet // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartlineModel: freezed == cartlineModel
          ? _value.cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NegotiationOutPutModelCopyWith<$Res>
    implements $NegotiationOutPutModelCopyWith<$Res> {
  factory _$$_NegotiationOutPutModelCopyWith(_$_NegotiationOutPutModel value,
          $Res Function(_$_NegotiationOutPutModel) then) =
      __$$_NegotiationOutPutModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: "negotiation_code") String? negotiationCode,
      @JsonKey(name: "negotiation_value") double? negotiationValue,
      @JsonKey(name: "based_on") String? basedOn,
      @JsonKey(name: "negtiation_type") String? negotiationType,
      @JsonKey(name: "negotiation_applied_value")
      double? negotiationAppliedValue,
      @JsonKey(name: "negotiation_limit") int? negotiationLinit,
      @JsonKey(name: "is_negotiation_get") bool? isNegotationGet,
      @JsonKey(name: "cart_line") List<CartLineModel>? cartlineModel});
}

/// @nodoc
class __$$_NegotiationOutPutModelCopyWithImpl<$Res>
    extends _$NegotiationOutPutModelCopyWithImpl<$Res,
        _$_NegotiationOutPutModel>
    implements _$$_NegotiationOutPutModelCopyWith<$Res> {
  __$$_NegotiationOutPutModelCopyWithImpl(_$_NegotiationOutPutModel _value,
      $Res Function(_$_NegotiationOutPutModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? negotiationCode = freezed,
    Object? negotiationValue = freezed,
    Object? basedOn = freezed,
    Object? negotiationType = freezed,
    Object? negotiationAppliedValue = freezed,
    Object? negotiationLinit = freezed,
    Object? isNegotationGet = freezed,
    Object? cartlineModel = freezed,
  }) {
    return _then(_$_NegotiationOutPutModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationCode: freezed == negotiationCode
          ? _value.negotiationCode
          : negotiationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationValue: freezed == negotiationValue
          ? _value.negotiationValue
          : negotiationValue // ignore: cast_nullable_to_non_nullable
              as double?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationType: freezed == negotiationType
          ? _value.negotiationType
          : negotiationType // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationAppliedValue: freezed == negotiationAppliedValue
          ? _value.negotiationAppliedValue
          : negotiationAppliedValue // ignore: cast_nullable_to_non_nullable
              as double?,
      negotiationLinit: freezed == negotiationLinit
          ? _value.negotiationLinit
          : negotiationLinit // ignore: cast_nullable_to_non_nullable
              as int?,
      isNegotationGet: freezed == isNegotationGet
          ? _value.isNegotationGet
          : isNegotationGet // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartlineModel: freezed == cartlineModel
          ? _value._cartlineModel
          : cartlineModel // ignore: cast_nullable_to_non_nullable
              as List<CartLineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NegotiationOutPutModel implements _NegotiationOutPutModel {
  const _$_NegotiationOutPutModel(
      {this.id,
      this.name,
      this.image,
      this.description,
      @JsonKey(name: "negotiation_code") this.negotiationCode,
      @JsonKey(name: "negotiation_value") this.negotiationValue,
      @JsonKey(name: "based_on") this.basedOn,
      @JsonKey(name: "negtiation_type") this.negotiationType,
      @JsonKey(name: "negotiation_applied_value") this.negotiationAppliedValue,
      @JsonKey(name: "negotiation_limit") this.negotiationLinit,
      @JsonKey(name: "is_negotiation_get") this.isNegotationGet,
      @JsonKey(name: "cart_line") final List<CartLineModel>? cartlineModel})
      : _cartlineModel = cartlineModel;

  factory _$_NegotiationOutPutModel.fromJson(Map<String, dynamic> json) =>
      _$$_NegotiationOutPutModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  @JsonKey(name: "negotiation_code")
  final String? negotiationCode;
  @override
  @JsonKey(name: "negotiation_value")
  final double? negotiationValue;
  @override
  @JsonKey(name: "based_on")
  final String? basedOn;
  @override
  @JsonKey(name: "negtiation_type")
  final String? negotiationType;
  @override
  @JsonKey(name: "negotiation_applied_value")
  final double? negotiationAppliedValue;
  @override
  @JsonKey(name: "negotiation_limit")
  final int? negotiationLinit;
  @override
  @JsonKey(name: "is_negotiation_get")
  final bool? isNegotationGet;
  final List<CartLineModel>? _cartlineModel;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel {
    final value = _cartlineModel;
    if (value == null) return null;
    if (_cartlineModel is EqualUnmodifiableListView) return _cartlineModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NegotiationOutPutModel(id: $id, name: $name, image: $image, description: $description, negotiationCode: $negotiationCode, negotiationValue: $negotiationValue, basedOn: $basedOn, negotiationType: $negotiationType, negotiationAppliedValue: $negotiationAppliedValue, negotiationLinit: $negotiationLinit, isNegotationGet: $isNegotationGet, cartlineModel: $cartlineModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NegotiationOutPutModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.negotiationCode, negotiationCode) ||
                other.negotiationCode == negotiationCode) &&
            (identical(other.negotiationValue, negotiationValue) ||
                other.negotiationValue == negotiationValue) &&
            (identical(other.basedOn, basedOn) || other.basedOn == basedOn) &&
            (identical(other.negotiationType, negotiationType) ||
                other.negotiationType == negotiationType) &&
            (identical(
                    other.negotiationAppliedValue, negotiationAppliedValue) ||
                other.negotiationAppliedValue == negotiationAppliedValue) &&
            (identical(other.negotiationLinit, negotiationLinit) ||
                other.negotiationLinit == negotiationLinit) &&
            (identical(other.isNegotationGet, isNegotationGet) ||
                other.isNegotationGet == isNegotationGet) &&
            const DeepCollectionEquality()
                .equals(other._cartlineModel, _cartlineModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      description,
      negotiationCode,
      negotiationValue,
      basedOn,
      negotiationType,
      negotiationAppliedValue,
      negotiationLinit,
      isNegotationGet,
      const DeepCollectionEquality().hash(_cartlineModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NegotiationOutPutModelCopyWith<_$_NegotiationOutPutModel> get copyWith =>
      __$$_NegotiationOutPutModelCopyWithImpl<_$_NegotiationOutPutModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NegotiationOutPutModelToJson(
      this,
    );
  }
}

abstract class _NegotiationOutPutModel implements NegotiationOutPutModel {
  const factory _NegotiationOutPutModel(
      {final int? id,
      final String? name,
      final String? image,
      final String? description,
      @JsonKey(name: "negotiation_code") final String? negotiationCode,
      @JsonKey(name: "negotiation_value") final double? negotiationValue,
      @JsonKey(name: "based_on") final String? basedOn,
      @JsonKey(name: "negtiation_type") final String? negotiationType,
      @JsonKey(name: "negotiation_applied_value")
      final double? negotiationAppliedValue,
      @JsonKey(name: "negotiation_limit") final int? negotiationLinit,
      @JsonKey(name: "is_negotiation_get") final bool? isNegotationGet,
      @JsonKey(name: "cart_line")
      final List<CartLineModel>? cartlineModel}) = _$_NegotiationOutPutModel;

  factory _NegotiationOutPutModel.fromJson(Map<String, dynamic> json) =
      _$_NegotiationOutPutModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(name: "negotiation_code")
  String? get negotiationCode;
  @override
  @JsonKey(name: "negotiation_value")
  double? get negotiationValue;
  @override
  @JsonKey(name: "based_on")
  String? get basedOn;
  @override
  @JsonKey(name: "negtiation_type")
  String? get negotiationType;
  @override
  @JsonKey(name: "negotiation_applied_value")
  double? get negotiationAppliedValue;
  @override
  @JsonKey(name: "negotiation_limit")
  int? get negotiationLinit;
  @override
  @JsonKey(name: "is_negotiation_get")
  bool? get isNegotationGet;
  @override
  @JsonKey(name: "cart_line")
  List<CartLineModel>? get cartlineModel;
  @override
  @JsonKey(ignore: true)
  _$$_NegotiationOutPutModelCopyWith<_$_NegotiationOutPutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NegotiationListModel _$NegotiationListModelFromJson(Map<String, dynamic> json) {
  return _NegotiationListModel.fromJson(json);
}

/// @nodoc
mixin _$NegotiationListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  List<String>? get segmentation => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_line_code")
  String? get negotiationLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_id")
  int? get negotiationId => throw _privateConstructorUsedError;
  @JsonKey(name: "negotiation_line_id")
  int? get negotiationLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_count")
  int? get stockCount => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderlimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderlimit => throw _privateConstructorUsedError;
  @JsonKey(name: "have_negotiation")
  bool? get haveNegotiation => throw _privateConstructorUsedError;
  @JsonKey(name: "price_data")
  double? get priceData => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountDataModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  double? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_added", defaultValue: false)
  bool? get isAdded => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_code")
  String? get hubCode => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_name")
  String? get hubName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NegotiationListModelCopyWith<NegotiationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiationListModelCopyWith<$Res> {
  factory $NegotiationListModelCopyWith(NegotiationListModel value,
          $Res Function(NegotiationListModel) then) =
      _$NegotiationListModelCopyWithImpl<$Res, NegotiationListModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? barcode,
      String? image1,
      double? vat,
      List<String>? segmentation,
      @JsonKey(name: "negotiation_line_code") String? negotiationLineCode,
      @JsonKey(name: "negotiation_id") int? negotiationId,
      @JsonKey(name: "negotiation_line_id") int? negotiationLineId,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderlimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderlimit,
      @JsonKey(name: "have_negotiation") bool? haveNegotiation,
      @JsonKey(name: "price_data") double? priceData,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "discount_data") DiscountDataModel? discountDataModel,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_added", defaultValue: false) bool? isAdded,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_name") String? hubName});

  $DiscountDataModelCopyWith<$Res>? get discountDataModel;
}

/// @nodoc
class _$NegotiationListModelCopyWithImpl<$Res,
        $Val extends NegotiationListModel>
    implements $NegotiationListModelCopyWith<$Res> {
  _$NegotiationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? image1 = freezed,
    Object? vat = freezed,
    Object? segmentation = freezed,
    Object? negotiationLineCode = freezed,
    Object? negotiationId = freezed,
    Object? negotiationLineId = freezed,
    Object? stockCount = freezed,
    Object? minSalesOrderlimit = freezed,
    Object? maxSalesOrderlimit = freezed,
    Object? haveNegotiation = freezed,
    Object? priceData = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? salesUomName = freezed,
    Object? salesUom = freezed,
    Object? inventoryId = freezed,
    Object? discountDataModel = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isAdded = freezed,
    Object? totalPrice = freezed,
    Object? vatableAmount = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      segmentation: freezed == segmentation
          ? _value.segmentation
          : segmentation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      negotiationLineCode: freezed == negotiationLineCode
          ? _value.negotiationLineCode
          : negotiationLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationId: freezed == negotiationId
          ? _value.negotiationId
          : negotiationId // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiationLineId: freezed == negotiationLineId
          ? _value.negotiationLineId
          : negotiationLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderlimit: freezed == minSalesOrderlimit
          ? _value.minSalesOrderlimit
          : minSalesOrderlimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderlimit: freezed == maxSalesOrderlimit
          ? _value.maxSalesOrderlimit
          : maxSalesOrderlimit // ignore: cast_nullable_to_non_nullable
              as int?,
      haveNegotiation: freezed == haveNegotiation
          ? _value.haveNegotiation
          : haveNegotiation // ignore: cast_nullable_to_non_nullable
              as bool?,
      priceData: freezed == priceData
          ? _value.priceData
          : priceData // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountDataModel: freezed == discountDataModel
          ? _value.discountDataModel
          : discountDataModel // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      hubCode: freezed == hubCode
          ? _value.hubCode
          : hubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hubName: freezed == hubName
          ? _value.hubName
          : hubName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataModelCopyWith<$Res>? get discountDataModel {
    if (_value.discountDataModel == null) {
      return null;
    }

    return $DiscountDataModelCopyWith<$Res>(_value.discountDataModel!, (value) {
      return _then(_value.copyWith(discountDataModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NegotiationListModelCopyWith<$Res>
    implements $NegotiationListModelCopyWith<$Res> {
  factory _$$_NegotiationListModelCopyWith(_$_NegotiationListModel value,
          $Res Function(_$_NegotiationListModel) then) =
      __$$_NegotiationListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? barcode,
      String? image1,
      double? vat,
      List<String>? segmentation,
      @JsonKey(name: "negotiation_line_code") String? negotiationLineCode,
      @JsonKey(name: "negotiation_id") int? negotiationId,
      @JsonKey(name: "negotiation_line_id") int? negotiationLineId,
      @JsonKey(name: "stock_count") int? stockCount,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderlimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderlimit,
      @JsonKey(name: "have_negotiation") bool? haveNegotiation,
      @JsonKey(name: "price_data") double? priceData,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "discount_data") DiscountDataModel? discountDataModel,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_added", defaultValue: false) bool? isAdded,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_name") String? hubName});

  @override
  $DiscountDataModelCopyWith<$Res>? get discountDataModel;
}

/// @nodoc
class __$$_NegotiationListModelCopyWithImpl<$Res>
    extends _$NegotiationListModelCopyWithImpl<$Res, _$_NegotiationListModel>
    implements _$$_NegotiationListModelCopyWith<$Res> {
  __$$_NegotiationListModelCopyWithImpl(_$_NegotiationListModel _value,
      $Res Function(_$_NegotiationListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? image1 = freezed,
    Object? vat = freezed,
    Object? segmentation = freezed,
    Object? negotiationLineCode = freezed,
    Object? negotiationId = freezed,
    Object? negotiationLineId = freezed,
    Object? stockCount = freezed,
    Object? minSalesOrderlimit = freezed,
    Object? maxSalesOrderlimit = freezed,
    Object? haveNegotiation = freezed,
    Object? priceData = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? salesUomName = freezed,
    Object? salesUom = freezed,
    Object? inventoryId = freezed,
    Object? discountDataModel = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isAdded = freezed,
    Object? totalPrice = freezed,
    Object? vatableAmount = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
  }) {
    return _then(_$_NegotiationListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      segmentation: freezed == segmentation
          ? _value._segmentation
          : segmentation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      negotiationLineCode: freezed == negotiationLineCode
          ? _value.negotiationLineCode
          : negotiationLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiationId: freezed == negotiationId
          ? _value.negotiationId
          : negotiationId // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiationLineId: freezed == negotiationLineId
          ? _value.negotiationLineId
          : negotiationLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      stockCount: freezed == stockCount
          ? _value.stockCount
          : stockCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderlimit: freezed == minSalesOrderlimit
          ? _value.minSalesOrderlimit
          : minSalesOrderlimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderlimit: freezed == maxSalesOrderlimit
          ? _value.maxSalesOrderlimit
          : maxSalesOrderlimit // ignore: cast_nullable_to_non_nullable
              as int?,
      haveNegotiation: freezed == haveNegotiation
          ? _value.haveNegotiation
          : haveNegotiation // ignore: cast_nullable_to_non_nullable
              as bool?,
      priceData: freezed == priceData
          ? _value.priceData
          : priceData // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      salesUomName: freezed == salesUomName
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountDataModel: freezed == discountDataModel
          ? _value.discountDataModel
          : discountDataModel // ignore: cast_nullable_to_non_nullable
              as DiscountDataModel?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      hubCode: freezed == hubCode
          ? _value.hubCode
          : hubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hubName: freezed == hubName
          ? _value.hubName
          : hubName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NegotiationListModel implements _NegotiationListModel {
  const _$_NegotiationListModel(
      {this.id,
      this.name,
      this.code,
      this.barcode,
      this.image1,
      this.vat,
      final List<String>? segmentation,
      @JsonKey(name: "negotiation_line_code") this.negotiationLineCode,
      @JsonKey(name: "negotiation_id") this.negotiationId,
      @JsonKey(name: "negotiation_line_id") this.negotiationLineId,
      @JsonKey(name: "stock_count") this.stockCount,
      @JsonKey(name: "min_sales_order_limit") this.minSalesOrderlimit,
      @JsonKey(name: "max_sales_order_limit") this.maxSalesOrderlimit,
      @JsonKey(name: "have_negotiation") this.haveNegotiation,
      @JsonKey(name: "price_data") this.priceData,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "sales_uom_name") this.salesUomName,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "discount_data") this.discountDataModel,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "is_added", defaultValue: false) this.isAdded,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "hub_code") this.hubCode,
      @JsonKey(name: "hub_name") this.hubName})
      : _segmentation = segmentation;

  factory _$_NegotiationListModel.fromJson(Map<String, dynamic> json) =>
      _$$_NegotiationListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? barcode;
  @override
  final String? image1;
  @override
  final double? vat;
  final List<String>? _segmentation;
  @override
  List<String>? get segmentation {
    final value = _segmentation;
    if (value == null) return null;
    if (_segmentation is EqualUnmodifiableListView) return _segmentation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "negotiation_line_code")
  final String? negotiationLineCode;
  @override
  @JsonKey(name: "negotiation_id")
  final int? negotiationId;
  @override
  @JsonKey(name: "negotiation_line_id")
  final int? negotiationLineId;
  @override
  @JsonKey(name: "stock_count")
  final int? stockCount;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSalesOrderlimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSalesOrderlimit;
  @override
  @JsonKey(name: "have_negotiation")
  final bool? haveNegotiation;
  @override
  @JsonKey(name: "price_data")
  final double? priceData;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "sales_uom_name")
  final String? salesUomName;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "discount_data")
  final DiscountDataModel? discountDataModel;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final double? returnTime;
  @override
  @JsonKey(name: "is_added", defaultValue: false)
  final bool? isAdded;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "hub_code")
  final String? hubCode;
  @override
  @JsonKey(name: "hub_name")
  final String? hubName;

  @override
  String toString() {
    return 'NegotiationListModel(id: $id, name: $name, code: $code, barcode: $barcode, image1: $image1, vat: $vat, segmentation: $segmentation, negotiationLineCode: $negotiationLineCode, negotiationId: $negotiationId, negotiationLineId: $negotiationLineId, stockCount: $stockCount, minSalesOrderlimit: $minSalesOrderlimit, maxSalesOrderlimit: $maxSalesOrderlimit, haveNegotiation: $haveNegotiation, priceData: $priceData, unitCost: $unitCost, actualCost: $actualCost, salesUomName: $salesUomName, salesUom: $salesUom, inventoryId: $inventoryId, discountDataModel: $discountDataModel, returnType: $returnType, returnTime: $returnTime, isAdded: $isAdded, totalPrice: $totalPrice, vatableAmount: $vatableAmount, hubCode: $hubCode, hubName: $hubName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NegotiationListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            const DeepCollectionEquality()
                .equals(other._segmentation, _segmentation) &&
            (identical(other.negotiationLineCode, negotiationLineCode) ||
                other.negotiationLineCode == negotiationLineCode) &&
            (identical(other.negotiationId, negotiationId) ||
                other.negotiationId == negotiationId) &&
            (identical(other.negotiationLineId, negotiationLineId) ||
                other.negotiationLineId == negotiationLineId) &&
            (identical(other.stockCount, stockCount) ||
                other.stockCount == stockCount) &&
            (identical(other.minSalesOrderlimit, minSalesOrderlimit) ||
                other.minSalesOrderlimit == minSalesOrderlimit) &&
            (identical(other.maxSalesOrderlimit, maxSalesOrderlimit) ||
                other.maxSalesOrderlimit == maxSalesOrderlimit) &&
            (identical(other.haveNegotiation, haveNegotiation) ||
                other.haveNegotiation == haveNegotiation) &&
            (identical(other.priceData, priceData) ||
                other.priceData == priceData) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.salesUomName, salesUomName) ||
                other.salesUomName == salesUomName) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.discountDataModel, discountDataModel) ||
                other.discountDataModel == discountDataModel) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.hubCode, hubCode) || other.hubCode == hubCode) &&
            (identical(other.hubName, hubName) || other.hubName == hubName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        code,
        barcode,
        image1,
        vat,
        const DeepCollectionEquality().hash(_segmentation),
        negotiationLineCode,
        negotiationId,
        negotiationLineId,
        stockCount,
        minSalesOrderlimit,
        maxSalesOrderlimit,
        haveNegotiation,
        priceData,
        unitCost,
        actualCost,
        salesUomName,
        salesUom,
        inventoryId,
        discountDataModel,
        returnType,
        returnTime,
        isAdded,
        totalPrice,
        vatableAmount,
        hubCode,
        hubName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NegotiationListModelCopyWith<_$_NegotiationListModel> get copyWith =>
      __$$_NegotiationListModelCopyWithImpl<_$_NegotiationListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NegotiationListModelToJson(
      this,
    );
  }
}

abstract class _NegotiationListModel implements NegotiationListModel {
  const factory _NegotiationListModel(
      {final int? id,
      final String? name,
      final String? code,
      final String? barcode,
      final String? image1,
      final double? vat,
      final List<String>? segmentation,
      @JsonKey(name: "negotiation_line_code") final String? negotiationLineCode,
      @JsonKey(name: "negotiation_id") final int? negotiationId,
      @JsonKey(name: "negotiation_line_id") final int? negotiationLineId,
      @JsonKey(name: "stock_count") final int? stockCount,
      @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderlimit,
      @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderlimit,
      @JsonKey(name: "have_negotiation") final bool? haveNegotiation,
      @JsonKey(name: "price_data") final double? priceData,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "actual_cost") final double? actualCost,
      @JsonKey(name: "sales_uom_name") final String? salesUomName,
      @JsonKey(name: "sales_uom") final String? salesUom,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "discount_data")
      final DiscountDataModel? discountDataModel,
      @JsonKey(name: "return_type") final String? returnType,
      @JsonKey(name: "return_time") final double? returnTime,
      @JsonKey(name: "is_added", defaultValue: false) final bool? isAdded,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "hub_code") final String? hubCode,
      @JsonKey(name: "hub_name")
      final String? hubName}) = _$_NegotiationListModel;

  factory _NegotiationListModel.fromJson(Map<String, dynamic> json) =
      _$_NegotiationListModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get barcode;
  @override
  String? get image1;
  @override
  double? get vat;
  @override
  List<String>? get segmentation;
  @override
  @JsonKey(name: "negotiation_line_code")
  String? get negotiationLineCode;
  @override
  @JsonKey(name: "negotiation_id")
  int? get negotiationId;
  @override
  @JsonKey(name: "negotiation_line_id")
  int? get negotiationLineId;
  @override
  @JsonKey(name: "stock_count")
  int? get stockCount;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderlimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderlimit;
  @override
  @JsonKey(name: "have_negotiation")
  bool? get haveNegotiation;
  @override
  @JsonKey(name: "price_data")
  double? get priceData;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "discount_data")
  DiscountDataModel? get discountDataModel;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "return_time")
  double? get returnTime;
  @override
  @JsonKey(name: "is_added", defaultValue: false)
  bool? get isAdded;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "hub_code")
  String? get hubCode;
  @override
  @JsonKey(name: "hub_name")
  String? get hubName;
  @override
  @JsonKey(ignore: true)
  _$$_NegotiationListModelCopyWith<_$_NegotiationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerGroupModel _$CustomerGroupModelFromJson(Map<String, dynamic> json) {
  return _CustomerGroupModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerGroupModel {
// final int? id,
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerGroupModelCopyWith<CustomerGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerGroupModelCopyWith<$Res> {
  factory $CustomerGroupModelCopyWith(
          CustomerGroupModel value, $Res Function(CustomerGroupModel) then) =
      _$CustomerGroupModelCopyWithImpl<$Res, CustomerGroupModel>;
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class _$CustomerGroupModelCopyWithImpl<$Res, $Val extends CustomerGroupModel>
    implements $CustomerGroupModelCopyWith<$Res> {
  _$CustomerGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerGroupModelCopyWith<$Res>
    implements $CustomerGroupModelCopyWith<$Res> {
  factory _$$_CustomerGroupModelCopyWith(_$_CustomerGroupModel value,
          $Res Function(_$_CustomerGroupModel) then) =
      __$$_CustomerGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class __$$_CustomerGroupModelCopyWithImpl<$Res>
    extends _$CustomerGroupModelCopyWithImpl<$Res, _$_CustomerGroupModel>
    implements _$$_CustomerGroupModelCopyWith<$Res> {
  __$$_CustomerGroupModelCopyWithImpl(
      _$_CustomerGroupModel _value, $Res Function(_$_CustomerGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_CustomerGroupModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerGroupModel implements _CustomerGroupModel {
  const _$_CustomerGroupModel({this.name, this.code});

  factory _$_CustomerGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerGroupModelFromJson(json);

// final int? id,
  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'CustomerGroupModel(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerGroupModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerGroupModelCopyWith<_$_CustomerGroupModel> get copyWith =>
      __$$_CustomerGroupModelCopyWithImpl<_$_CustomerGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerGroupModelToJson(
      this,
    );
  }
}

abstract class _CustomerGroupModel implements CustomerGroupModel {
  const factory _CustomerGroupModel({final String? name, final String? code}) =
      _$_CustomerGroupModel;

  factory _CustomerGroupModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerGroupModel.fromJson;

  @override // final int? id,
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerGroupModelCopyWith<_$_CustomerGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListModel _$WishListModelFromJson(Map<String, dynamic> json) {
  return _WishListModel.fromJson(json);
}

/// @nodoc
mixin _$WishListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "available_qty")
  int? get availableQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_stock")
  int? get virtualStock => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_code")
  String? get inventoryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "website_stock_status")
  String? get websiteStockStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_data")
  VariantDataModel? get variantDataModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListModelCopyWith<WishListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListModelCopyWith<$Res> {
  factory $WishListModelCopyWith(
          WishListModel value, $Res Function(WishListModel) then) =
      _$WishListModelCopyWithImpl<$Res, WishListModel>;
  @useResult
  $Res call(
      {int? id,
      String? created,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "available_qty") int? availableQuantity,
      @JsonKey(name: "virtual_stock") int? virtualStock,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "inventory_code") String? inventoryCode,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "website_stock_status") String? websiteStockStatus,
      @JsonKey(name: "variant_data") VariantDataModel? variantDataModel});

  $VariantDataModelCopyWith<$Res>? get variantDataModel;
}

/// @nodoc
class _$WishListModelCopyWithImpl<$Res, $Val extends WishListModel>
    implements $WishListModelCopyWith<$Res> {
  _$WishListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? availableQuantity = freezed,
    Object? virtualStock = freezed,
    Object? customerCode = freezed,
    Object? inventoryCode = freezed,
    Object? sellingPrice = freezed,
    Object? websiteStockStatus = freezed,
    Object? variantDataModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryCode: freezed == inventoryCode
          ? _value.inventoryCode
          : inventoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      websiteStockStatus: freezed == websiteStockStatus
          ? _value.websiteStockStatus
          : websiteStockStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      variantDataModel: freezed == variantDataModel
          ? _value.variantDataModel
          : variantDataModel // ignore: cast_nullable_to_non_nullable
              as VariantDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantDataModelCopyWith<$Res>? get variantDataModel {
    if (_value.variantDataModel == null) {
      return null;
    }

    return $VariantDataModelCopyWith<$Res>(_value.variantDataModel!, (value) {
      return _then(_value.copyWith(variantDataModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WishListModelCopyWith<$Res>
    implements $WishListModelCopyWith<$Res> {
  factory _$$_WishListModelCopyWith(
          _$_WishListModel value, $Res Function(_$_WishListModel) then) =
      __$$_WishListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? created,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "available_qty") int? availableQuantity,
      @JsonKey(name: "virtual_stock") int? virtualStock,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "inventory_code") String? inventoryCode,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "website_stock_status") String? websiteStockStatus,
      @JsonKey(name: "variant_data") VariantDataModel? variantDataModel});

  @override
  $VariantDataModelCopyWith<$Res>? get variantDataModel;
}

/// @nodoc
class __$$_WishListModelCopyWithImpl<$Res>
    extends _$WishListModelCopyWithImpl<$Res, _$_WishListModel>
    implements _$$_WishListModelCopyWith<$Res> {
  __$$_WishListModelCopyWithImpl(
      _$_WishListModel _value, $Res Function(_$_WishListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? availableQuantity = freezed,
    Object? virtualStock = freezed,
    Object? customerCode = freezed,
    Object? inventoryCode = freezed,
    Object? sellingPrice = freezed,
    Object? websiteStockStatus = freezed,
    Object? variantDataModel = freezed,
  }) {
    return _then(_$_WishListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      virtualStock: freezed == virtualStock
          ? _value.virtualStock
          : virtualStock // ignore: cast_nullable_to_non_nullable
              as int?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryCode: freezed == inventoryCode
          ? _value.inventoryCode
          : inventoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      websiteStockStatus: freezed == websiteStockStatus
          ? _value.websiteStockStatus
          : websiteStockStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      variantDataModel: freezed == variantDataModel
          ? _value.variantDataModel
          : variantDataModel // ignore: cast_nullable_to_non_nullable
              as VariantDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishListModel implements _WishListModel {
  const _$_WishListModel(
      {this.id,
      this.created,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "available_qty") this.availableQuantity,
      @JsonKey(name: "virtual_stock") this.virtualStock,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "inventory_code") this.inventoryCode,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "website_stock_status") this.websiteStockStatus,
      @JsonKey(name: "variant_data") this.variantDataModel});

  factory _$_WishListModel.fromJson(Map<String, dynamic> json) =>
      _$$_WishListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? created;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "available_qty")
  final int? availableQuantity;
  @override
  @JsonKey(name: "virtual_stock")
  final int? virtualStock;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "inventory_code")
  final String? inventoryCode;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "website_stock_status")
  final String? websiteStockStatus;
  @override
  @JsonKey(name: "variant_data")
  final VariantDataModel? variantDataModel;

  @override
  String toString() {
    return 'WishListModel(id: $id, created: $created, variantId: $variantId, variantCode: $variantCode, availableQuantity: $availableQuantity, virtualStock: $virtualStock, customerCode: $customerCode, inventoryCode: $inventoryCode, sellingPrice: $sellingPrice, websiteStockStatus: $websiteStockStatus, variantDataModel: $variantDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.virtualStock, virtualStock) ||
                other.virtualStock == virtualStock) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.inventoryCode, inventoryCode) ||
                other.inventoryCode == inventoryCode) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.websiteStockStatus, websiteStockStatus) ||
                other.websiteStockStatus == websiteStockStatus) &&
            (identical(other.variantDataModel, variantDataModel) ||
                other.variantDataModel == variantDataModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      variantId,
      variantCode,
      availableQuantity,
      virtualStock,
      customerCode,
      inventoryCode,
      sellingPrice,
      websiteStockStatus,
      variantDataModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishListModelCopyWith<_$_WishListModel> get copyWith =>
      __$$_WishListModelCopyWithImpl<_$_WishListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishListModelToJson(
      this,
    );
  }
}

abstract class _WishListModel implements WishListModel {
  const factory _WishListModel(
      {final int? id,
      final String? created,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "available_qty") final int? availableQuantity,
      @JsonKey(name: "virtual_stock") final int? virtualStock,
      @JsonKey(name: "customer_code") final String? customerCode,
      @JsonKey(name: "inventory_code") final String? inventoryCode,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "website_stock_status") final String? websiteStockStatus,
      @JsonKey(name: "variant_data")
      final VariantDataModel? variantDataModel}) = _$_WishListModel;

  factory _WishListModel.fromJson(Map<String, dynamic> json) =
      _$_WishListModel.fromJson;

  @override
  int? get id;
  @override
  String? get created;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "available_qty")
  int? get availableQuantity;
  @override
  @JsonKey(name: "virtual_stock")
  int? get virtualStock;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "inventory_code")
  String? get inventoryCode;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "website_stock_status")
  String? get websiteStockStatus;
  @override
  @JsonKey(name: "variant_data")
  VariantDataModel? get variantDataModel;
  @override
  @JsonKey(ignore: true)
  _$$_WishListModelCopyWith<_$_WishListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantDataModel _$VariantDataModelFromJson(Map<String, dynamic> json) {
  return _VariantDataModel.fromJson(json);
}

/// @nodoc
mixin _$VariantDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantame => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_name")
  String? get inventoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order")
  int? get minSalesOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order")
  int? get maxSaleOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "group_code")
  String? get groupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "group_name")
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_code")
  String? get categoryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "division_name")
  String? get divisiionName => throw _privateConstructorUsedError;
  @JsonKey(name: "division_code")
  String? get divisiionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantDataModelCopyWith<VariantDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantDataModelCopyWith<$Res> {
  factory $VariantDataModelCopyWith(
          VariantDataModel value, $Res Function(VariantDataModel) then) =
      _$VariantDataModelCopyWithImpl<$Res, VariantDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_name") String? variantame,
      @JsonKey(name: "inventory_name") String? inventoryName,
      @JsonKey(name: "min_sales_order") int? minSalesOrder,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "max_sales_order") int? maxSaleOrder,
      @JsonKey(name: "group_code") String? groupCode,
      @JsonKey(name: "group_name") String? groupName,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "division_name") String? divisiionName,
      @JsonKey(name: "division_code") String? divisiionCode,
      @JsonKey(name: "sales_uom") String? salesUom});
}

/// @nodoc
class _$VariantDataModelCopyWithImpl<$Res, $Val extends VariantDataModel>
    implements $VariantDataModelCopyWith<$Res> {
  _$VariantDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantame = freezed,
    Object? inventoryName = freezed,
    Object? minSalesOrder = freezed,
    Object? actualCost = freezed,
    Object? maxSaleOrder = freezed,
    Object? groupCode = freezed,
    Object? groupName = freezed,
    Object? categoryCode = freezed,
    Object? divisiionName = freezed,
    Object? divisiionCode = freezed,
    Object? salesUom = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantame: freezed == variantame
          ? _value.variantame
          : variantame // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryName: freezed == inventoryName
          ? _value.inventoryName
          : inventoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalesOrder: freezed == minSalesOrder
          ? _value.minSalesOrder
          : minSalesOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSaleOrder: freezed == maxSaleOrder
          ? _value.maxSaleOrder
          : maxSaleOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      groupCode: freezed == groupCode
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      divisiionName: freezed == divisiionName
          ? _value.divisiionName
          : divisiionName // ignore: cast_nullable_to_non_nullable
              as String?,
      divisiionCode: freezed == divisiionCode
          ? _value.divisiionCode
          : divisiionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantDataModelCopyWith<$Res>
    implements $VariantDataModelCopyWith<$Res> {
  factory _$$_VariantDataModelCopyWith(
          _$_VariantDataModel value, $Res Function(_$_VariantDataModel) then) =
      __$$_VariantDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_name") String? variantame,
      @JsonKey(name: "inventory_name") String? inventoryName,
      @JsonKey(name: "min_sales_order") int? minSalesOrder,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "max_sales_order") int? maxSaleOrder,
      @JsonKey(name: "group_code") String? groupCode,
      @JsonKey(name: "group_name") String? groupName,
      @JsonKey(name: "category_code") String? categoryCode,
      @JsonKey(name: "division_name") String? divisiionName,
      @JsonKey(name: "division_code") String? divisiionCode,
      @JsonKey(name: "sales_uom") String? salesUom});
}

/// @nodoc
class __$$_VariantDataModelCopyWithImpl<$Res>
    extends _$VariantDataModelCopyWithImpl<$Res, _$_VariantDataModel>
    implements _$$_VariantDataModelCopyWith<$Res> {
  __$$_VariantDataModelCopyWithImpl(
      _$_VariantDataModel _value, $Res Function(_$_VariantDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantame = freezed,
    Object? inventoryName = freezed,
    Object? minSalesOrder = freezed,
    Object? actualCost = freezed,
    Object? maxSaleOrder = freezed,
    Object? groupCode = freezed,
    Object? groupName = freezed,
    Object? categoryCode = freezed,
    Object? divisiionName = freezed,
    Object? divisiionCode = freezed,
    Object? salesUom = freezed,
  }) {
    return _then(_$_VariantDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantame: freezed == variantame
          ? _value.variantame
          : variantame // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryName: freezed == inventoryName
          ? _value.inventoryName
          : inventoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalesOrder: freezed == minSalesOrder
          ? _value.minSalesOrder
          : minSalesOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSaleOrder: freezed == maxSaleOrder
          ? _value.maxSaleOrder
          : maxSaleOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      groupCode: freezed == groupCode
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      divisiionName: freezed == divisiionName
          ? _value.divisiionName
          : divisiionName // ignore: cast_nullable_to_non_nullable
              as String?,
      divisiionCode: freezed == divisiionCode
          ? _value.divisiionCode
          : divisiionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantDataModel implements _VariantDataModel {
  const _$_VariantDataModel(
      {this.id,
      this.image,
      this.barcode,
      @JsonKey(name: "variant_name") this.variantame,
      @JsonKey(name: "inventory_name") this.inventoryName,
      @JsonKey(name: "min_sales_order") this.minSalesOrder,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "max_sales_order") this.maxSaleOrder,
      @JsonKey(name: "group_code") this.groupCode,
      @JsonKey(name: "group_name") this.groupName,
      @JsonKey(name: "category_code") this.categoryCode,
      @JsonKey(name: "division_name") this.divisiionName,
      @JsonKey(name: "division_code") this.divisiionCode,
      @JsonKey(name: "sales_uom") this.salesUom});

  factory _$_VariantDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? barcode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantame;
  @override
  @JsonKey(name: "inventory_name")
  final String? inventoryName;
  @override
  @JsonKey(name: "min_sales_order")
  final int? minSalesOrder;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "max_sales_order")
  final int? maxSaleOrder;
  @override
  @JsonKey(name: "group_code")
  final String? groupCode;
  @override
  @JsonKey(name: "group_name")
  final String? groupName;
  @override
  @JsonKey(name: "category_code")
  final String? categoryCode;
  @override
  @JsonKey(name: "division_name")
  final String? divisiionName;
  @override
  @JsonKey(name: "division_code")
  final String? divisiionCode;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;

  @override
  String toString() {
    return 'VariantDataModel(id: $id, image: $image, barcode: $barcode, variantame: $variantame, inventoryName: $inventoryName, minSalesOrder: $minSalesOrder, actualCost: $actualCost, maxSaleOrder: $maxSaleOrder, groupCode: $groupCode, groupName: $groupName, categoryCode: $categoryCode, divisiionName: $divisiionName, divisiionCode: $divisiionCode, salesUom: $salesUom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantame, variantame) ||
                other.variantame == variantame) &&
            (identical(other.inventoryName, inventoryName) ||
                other.inventoryName == inventoryName) &&
            (identical(other.minSalesOrder, minSalesOrder) ||
                other.minSalesOrder == minSalesOrder) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.maxSaleOrder, maxSaleOrder) ||
                other.maxSaleOrder == maxSaleOrder) &&
            (identical(other.groupCode, groupCode) ||
                other.groupCode == groupCode) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.divisiionName, divisiionName) ||
                other.divisiionName == divisiionName) &&
            (identical(other.divisiionCode, divisiionCode) ||
                other.divisiionCode == divisiionCode) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      barcode,
      variantame,
      inventoryName,
      minSalesOrder,
      actualCost,
      maxSaleOrder,
      groupCode,
      groupName,
      categoryCode,
      divisiionName,
      divisiionCode,
      salesUom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantDataModelCopyWith<_$_VariantDataModel> get copyWith =>
      __$$_VariantDataModelCopyWithImpl<_$_VariantDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantDataModelToJson(
      this,
    );
  }
}

abstract class _VariantDataModel implements VariantDataModel {
  const factory _VariantDataModel(
          {final int? id,
          final String? image,
          final String? barcode,
          @JsonKey(name: "variant_name") final String? variantame,
          @JsonKey(name: "inventory_name") final String? inventoryName,
          @JsonKey(name: "min_sales_order") final int? minSalesOrder,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "max_sales_order") final int? maxSaleOrder,
          @JsonKey(name: "group_code") final String? groupCode,
          @JsonKey(name: "group_name") final String? groupName,
          @JsonKey(name: "category_code") final String? categoryCode,
          @JsonKey(name: "division_name") final String? divisiionName,
          @JsonKey(name: "division_code") final String? divisiionCode,
          @JsonKey(name: "sales_uom") final String? salesUom}) =
      _$_VariantDataModel;

  factory _VariantDataModel.fromJson(Map<String, dynamic> json) =
      _$_VariantDataModel.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get barcode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantame;
  @override
  @JsonKey(name: "inventory_name")
  String? get inventoryName;
  @override
  @JsonKey(name: "min_sales_order")
  int? get minSalesOrder;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "max_sales_order")
  int? get maxSaleOrder;
  @override
  @JsonKey(name: "group_code")
  String? get groupCode;
  @override
  @JsonKey(name: "group_name")
  String? get groupName;
  @override
  @JsonKey(name: "category_code")
  String? get categoryCode;
  @override
  @JsonKey(name: "division_name")
  String? get divisiionName;
  @override
  @JsonKey(name: "division_code")
  String? get divisiionCode;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(ignore: true)
  _$$_VariantDataModelCopyWith<_$_VariantDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
