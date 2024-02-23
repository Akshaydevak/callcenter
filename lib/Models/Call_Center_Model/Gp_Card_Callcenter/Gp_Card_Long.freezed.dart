// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Gp_Card_Long.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GpCardData _$GpCardDataFromJson(Map<String, dynamic> json) {
  return _GpCardData.fromJson(json);
}

/// @nodoc
mixin _$GpCardData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_gp_code")
  String? get dailyGpCode => throw _privateConstructorUsedError;
  @JsonKey(name: "current_date")
  String? get currentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_gp")
  double? get dailyGp => throw _privateConstructorUsedError;
  @JsonKey(name: "current_gp")
  double? get currentGp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GpCardDataCopyWith<GpCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpCardDataCopyWith<$Res> {
  factory $GpCardDataCopyWith(
          GpCardData value, $Res Function(GpCardData) then) =
      _$GpCardDataCopyWithImpl<$Res, GpCardData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "daily_gp_code") String? dailyGpCode,
      @JsonKey(name: "current_date") String? currentDate,
      @JsonKey(name: "daily_gp") double? dailyGp,
      @JsonKey(name: "current_gp") double? currentGp});
}

/// @nodoc
class _$GpCardDataCopyWithImpl<$Res, $Val extends GpCardData>
    implements $GpCardDataCopyWith<$Res> {
  _$GpCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dailyGpCode = freezed,
    Object? currentDate = freezed,
    Object? dailyGp = freezed,
    Object? currentGp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyGpCode: freezed == dailyGpCode
          ? _value.dailyGpCode
          : dailyGpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGp: freezed == dailyGp
          ? _value.dailyGp
          : dailyGp // ignore: cast_nullable_to_non_nullable
              as double?,
      currentGp: freezed == currentGp
          ? _value.currentGp
          : currentGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GpCardDataCopyWith<$Res>
    implements $GpCardDataCopyWith<$Res> {
  factory _$$_GpCardDataCopyWith(
          _$_GpCardData value, $Res Function(_$_GpCardData) then) =
      __$$_GpCardDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "daily_gp_code") String? dailyGpCode,
      @JsonKey(name: "current_date") String? currentDate,
      @JsonKey(name: "daily_gp") double? dailyGp,
      @JsonKey(name: "current_gp") double? currentGp});
}

/// @nodoc
class __$$_GpCardDataCopyWithImpl<$Res>
    extends _$GpCardDataCopyWithImpl<$Res, _$_GpCardData>
    implements _$$_GpCardDataCopyWith<$Res> {
  __$$_GpCardDataCopyWithImpl(
      _$_GpCardData _value, $Res Function(_$_GpCardData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dailyGpCode = freezed,
    Object? currentDate = freezed,
    Object? dailyGp = freezed,
    Object? currentGp = freezed,
  }) {
    return _then(_$_GpCardData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyGpCode: freezed == dailyGpCode
          ? _value.dailyGpCode
          : dailyGpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGp: freezed == dailyGp
          ? _value.dailyGp
          : dailyGp // ignore: cast_nullable_to_non_nullable
              as double?,
      currentGp: freezed == currentGp
          ? _value.currentGp
          : currentGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GpCardData implements _GpCardData {
  const _$_GpCardData(
      {this.id,
      @JsonKey(name: "daily_gp_code") this.dailyGpCode,
      @JsonKey(name: "current_date") this.currentDate,
      @JsonKey(name: "daily_gp") this.dailyGp,
      @JsonKey(name: "current_gp") this.currentGp});

  factory _$_GpCardData.fromJson(Map<String, dynamic> json) =>
      _$$_GpCardDataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "daily_gp_code")
  final String? dailyGpCode;
  @override
  @JsonKey(name: "current_date")
  final String? currentDate;
  @override
  @JsonKey(name: "daily_gp")
  final double? dailyGp;
  @override
  @JsonKey(name: "current_gp")
  final double? currentGp;

  @override
  String toString() {
    return 'GpCardData(id: $id, dailyGpCode: $dailyGpCode, currentDate: $currentDate, dailyGp: $dailyGp, currentGp: $currentGp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GpCardData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dailyGpCode, dailyGpCode) ||
                other.dailyGpCode == dailyGpCode) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.dailyGp, dailyGp) || other.dailyGp == dailyGp) &&
            (identical(other.currentGp, currentGp) ||
                other.currentGp == currentGp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dailyGpCode, currentDate, dailyGp, currentGp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GpCardDataCopyWith<_$_GpCardData> get copyWith =>
      __$$_GpCardDataCopyWithImpl<_$_GpCardData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GpCardDataToJson(
      this,
    );
  }
}

abstract class _GpCardData implements GpCardData {
  const factory _GpCardData(
      {final int? id,
      @JsonKey(name: "daily_gp_code") final String? dailyGpCode,
      @JsonKey(name: "current_date") final String? currentDate,
      @JsonKey(name: "daily_gp") final double? dailyGp,
      @JsonKey(name: "current_gp") final double? currentGp}) = _$_GpCardData;

  factory _GpCardData.fromJson(Map<String, dynamic> json) =
      _$_GpCardData.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "daily_gp_code")
  String? get dailyGpCode;
  @override
  @JsonKey(name: "current_date")
  String? get currentDate;
  @override
  @JsonKey(name: "daily_gp")
  double? get dailyGp;
  @override
  @JsonKey(name: "current_gp")
  double? get currentGp;
  @override
  @JsonKey(ignore: true)
  _$$_GpCardDataCopyWith<_$_GpCardData> get copyWith =>
      throw _privateConstructorUsedError;
}
