// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Percentage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Percentage _$PercentageFromJson(Map<String, dynamic> json) {
  return _Percentage.fromJson(json);
}

/// @nodoc
mixin _$Percentage {
  @JsonKey(name: "increase")
  String? get increase => throw _privateConstructorUsedError;
  @JsonKey(name: "decrease")
  String? get decrease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PercentageCopyWith<Percentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentageCopyWith<$Res> {
  factory $PercentageCopyWith(
          Percentage value, $Res Function(Percentage) then) =
      _$PercentageCopyWithImpl<$Res, Percentage>;
  @useResult
  $Res call(
      {@JsonKey(name: "increase") String? increase,
      @JsonKey(name: "decrease") String? decrease});
}

/// @nodoc
class _$PercentageCopyWithImpl<$Res, $Val extends Percentage>
    implements $PercentageCopyWith<$Res> {
  _$PercentageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? increase = freezed,
    Object? decrease = freezed,
  }) {
    return _then(_value.copyWith(
      increase: freezed == increase
          ? _value.increase
          : increase // ignore: cast_nullable_to_non_nullable
              as String?,
      decrease: freezed == decrease
          ? _value.decrease
          : decrease // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PercentageCopyWith<$Res>
    implements $PercentageCopyWith<$Res> {
  factory _$$_PercentageCopyWith(
          _$_Percentage value, $Res Function(_$_Percentage) then) =
      __$$_PercentageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "increase") String? increase,
      @JsonKey(name: "decrease") String? decrease});
}

/// @nodoc
class __$$_PercentageCopyWithImpl<$Res>
    extends _$PercentageCopyWithImpl<$Res, _$_Percentage>
    implements _$$_PercentageCopyWith<$Res> {
  __$$_PercentageCopyWithImpl(
      _$_Percentage _value, $Res Function(_$_Percentage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? increase = freezed,
    Object? decrease = freezed,
  }) {
    return _then(_$_Percentage(
      increase: freezed == increase
          ? _value.increase
          : increase // ignore: cast_nullable_to_non_nullable
              as String?,
      decrease: freezed == decrease
          ? _value.decrease
          : decrease // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Percentage implements _Percentage {
  const _$_Percentage(
      {@JsonKey(name: "increase") this.increase,
      @JsonKey(name: "decrease") this.decrease});

  factory _$_Percentage.fromJson(Map<String, dynamic> json) =>
      _$$_PercentageFromJson(json);

  @override
  @JsonKey(name: "increase")
  final String? increase;
  @override
  @JsonKey(name: "decrease")
  final String? decrease;

  @override
  String toString() {
    return 'Percentage(increase: $increase, decrease: $decrease)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Percentage &&
            (identical(other.increase, increase) ||
                other.increase == increase) &&
            (identical(other.decrease, decrease) ||
                other.decrease == decrease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, increase, decrease);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PercentageCopyWith<_$_Percentage> get copyWith =>
      __$$_PercentageCopyWithImpl<_$_Percentage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PercentageToJson(
      this,
    );
  }
}

abstract class _Percentage implements Percentage {
  const factory _Percentage(
      {@JsonKey(name: "increase") final String? increase,
      @JsonKey(name: "decrease") final String? decrease}) = _$_Percentage;

  factory _Percentage.fromJson(Map<String, dynamic> json) =
      _$_Percentage.fromJson;

  @override
  @JsonKey(name: "increase")
  String? get increase;
  @override
  @JsonKey(name: "decrease")
  String? get decrease;
  @override
  @JsonKey(ignore: true)
  _$$_PercentageCopyWith<_$_Percentage> get copyWith =>
      throw _privateConstructorUsedError;
}

PercentageGp _$PercentageGpFromJson(Map<String, dynamic> json) {
  return _PercentageGp.fromJson(json);
}

/// @nodoc
mixin _$PercentageGp {
  @JsonKey(name: "data")
  double? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PercentageGpCopyWith<PercentageGp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentageGpCopyWith<$Res> {
  factory $PercentageGpCopyWith(
          PercentageGp value, $Res Function(PercentageGp) then) =
      _$PercentageGpCopyWithImpl<$Res, PercentageGp>;
  @useResult
  $Res call({@JsonKey(name: "data") double? data});
}

/// @nodoc
class _$PercentageGpCopyWithImpl<$Res, $Val extends PercentageGp>
    implements $PercentageGpCopyWith<$Res> {
  _$PercentageGpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PercentageGpCopyWith<$Res>
    implements $PercentageGpCopyWith<$Res> {
  factory _$$_PercentageGpCopyWith(
          _$_PercentageGp value, $Res Function(_$_PercentageGp) then) =
      __$$_PercentageGpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") double? data});
}

/// @nodoc
class __$$_PercentageGpCopyWithImpl<$Res>
    extends _$PercentageGpCopyWithImpl<$Res, _$_PercentageGp>
    implements _$$_PercentageGpCopyWith<$Res> {
  __$$_PercentageGpCopyWithImpl(
      _$_PercentageGp _value, $Res Function(_$_PercentageGp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_PercentageGp(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PercentageGp implements _PercentageGp {
  const _$_PercentageGp({@JsonKey(name: "data") this.data});

  factory _$_PercentageGp.fromJson(Map<String, dynamic> json) =>
      _$$_PercentageGpFromJson(json);

  @override
  @JsonKey(name: "data")
  final double? data;

  @override
  String toString() {
    return 'PercentageGp(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PercentageGp &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PercentageGpCopyWith<_$_PercentageGp> get copyWith =>
      __$$_PercentageGpCopyWithImpl<_$_PercentageGp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PercentageGpToJson(
      this,
    );
  }
}

abstract class _PercentageGp implements PercentageGp {
  const factory _PercentageGp({@JsonKey(name: "data") final double? data}) =
      _$_PercentageGp;

  factory _PercentageGp.fromJson(Map<String, dynamic> json) =
      _$_PercentageGp.fromJson;

  @override
  @JsonKey(name: "data")
  double? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PercentageGpCopyWith<_$_PercentageGp> get copyWith =>
      throw _privateConstructorUsedError;
}
