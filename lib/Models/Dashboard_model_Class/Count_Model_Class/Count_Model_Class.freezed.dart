// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Count_Model_Class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountModels _$CountModelsFromJson(Map<String, dynamic> json) {
  return _CountModels.fromJson(json);
}

/// @nodoc
mixin _$CountModels {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountModelsCopyWith<CountModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountModelsCopyWith<$Res> {
  factory $CountModelsCopyWith(
          CountModels value, $Res Function(CountModels) then) =
      _$CountModelsCopyWithImpl<$Res, CountModels>;
  @useResult
  $Res call({@JsonKey(name: "count") int? count});
}

/// @nodoc
class _$CountModelsCopyWithImpl<$Res, $Val extends CountModels>
    implements $CountModelsCopyWith<$Res> {
  _$CountModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountModelsCopyWith<$Res>
    implements $CountModelsCopyWith<$Res> {
  factory _$$_CountModelsCopyWith(
          _$_CountModels value, $Res Function(_$_CountModels) then) =
      __$$_CountModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$_CountModelsCopyWithImpl<$Res>
    extends _$CountModelsCopyWithImpl<$Res, _$_CountModels>
    implements _$$_CountModelsCopyWith<$Res> {
  __$$_CountModelsCopyWithImpl(
      _$_CountModels _value, $Res Function(_$_CountModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_CountModels(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountModels implements _CountModels {
  const _$_CountModels({@JsonKey(name: "count") this.count});

  factory _$_CountModels.fromJson(Map<String, dynamic> json) =>
      _$$_CountModelsFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'CountModels(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountModels &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountModelsCopyWith<_$_CountModels> get copyWith =>
      __$$_CountModelsCopyWithImpl<_$_CountModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountModelsToJson(
      this,
    );
  }
}

abstract class _CountModels implements CountModels {
  const factory _CountModels({@JsonKey(name: "count") final int? count}) =
      _$_CountModels;

  factory _CountModels.fromJson(Map<String, dynamic> json) =
      _$_CountModels.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_CountModelsCopyWith<_$_CountModels> get copyWith =>
      throw _privateConstructorUsedError;
}
