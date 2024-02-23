// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Create_Channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateChannel _$CreateChannelFromJson(Map<String, dynamic> json) {
  return _CreateChannel.fromJson(json);
}

/// @nodoc
mixin _$CreateChannel {
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateChannelCopyWith<CreateChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChannelCopyWith<$Res> {
  factory $CreateChannelCopyWith(
          CreateChannel value, $Res Function(CreateChannel) then) =
      _$CreateChannelCopyWithImpl<$Res, CreateChannel>;
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class _$CreateChannelCopyWithImpl<$Res, $Val extends CreateChannel>
    implements $CreateChannelCopyWith<$Res> {
  _$CreateChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelName = freezed,
    Object? inventoryId = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_value.copyWith(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateChannelCopyWith<$Res>
    implements $CreateChannelCopyWith<$Res> {
  factory _$$_CreateChannelCopyWith(
          _$_CreateChannel value, $Res Function(_$_CreateChannel) then) =
      __$$_CreateChannelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "channel_type_code") String? channelTypeCode});
}

/// @nodoc
class __$$_CreateChannelCopyWithImpl<$Res>
    extends _$CreateChannelCopyWithImpl<$Res, _$_CreateChannel>
    implements _$$_CreateChannelCopyWith<$Res> {
  __$$_CreateChannelCopyWithImpl(
      _$_CreateChannel _value, $Res Function(_$_CreateChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelStockType = freezed,
    Object? channelName = freezed,
    Object? inventoryId = freezed,
    Object? channelTypeCode = freezed,
  }) {
    return _then(_$_CreateChannel(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateChannel implements _CreateChannel {
  const _$_CreateChannel(
      {@JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_stock_type") this.channelStockType,
      @JsonKey(name: "channel_name") this.channelName,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "channel_type_code") this.channelTypeCode});

  factory _$_CreateChannel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateChannelFromJson(json);

  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  final String? channelStockType;
  @override
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;

  @override
  String toString() {
    return 'CreateChannel(channelCode: $channelCode, channelStockType: $channelStockType, channelName: $channelName, inventoryId: $inventoryId, channelTypeCode: $channelTypeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChannel &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelStockType, channelStockType) ||
                other.channelStockType == channelStockType) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelCode, channelStockType,
      channelName, inventoryId, channelTypeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChannelCopyWith<_$_CreateChannel> get copyWith =>
      __$$_CreateChannelCopyWithImpl<_$_CreateChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateChannelToJson(
      this,
    );
  }
}

abstract class _CreateChannel implements CreateChannel {
  const factory _CreateChannel(
          {@JsonKey(name: "channel_code") final String? channelCode,
          @JsonKey(name: "channel_stock_type") final String? channelStockType,
          @JsonKey(name: "channel_name") final String? channelName,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "channel_type_code") final String? channelTypeCode}) =
      _$_CreateChannel;

  factory _CreateChannel.fromJson(Map<String, dynamic> json) =
      _$_CreateChannel.fromJson;

  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChannelCopyWith<_$_CreateChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOrganisation _$CreateOrganisationFromJson(Map<String, dynamic> json) {
  return _CreateOrganisation.fromJson(json);
}

/// @nodoc
mixin _$CreateOrganisation {
  @JsonKey(name: "organization_type")
  String? get orgType => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrganisationCopyWith<CreateOrganisation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganisationCopyWith<$Res> {
  factory $CreateOrganisationCopyWith(
          CreateOrganisation value, $Res Function(CreateOrganisation) then) =
      _$CreateOrganisationCopyWithImpl<$Res, CreateOrganisation>;
  @useResult
  $Res call(
      {@JsonKey(name: "organization_type") String? orgType,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class _$CreateOrganisationCopyWithImpl<$Res, $Val extends CreateOrganisation>
    implements $CreateOrganisationCopyWith<$Res> {
  _$CreateOrganisationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orgType = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      orgType: freezed == orgType
          ? _value.orgType
          : orgType // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOrganisationCopyWith<$Res>
    implements $CreateOrganisationCopyWith<$Res> {
  factory _$$_CreateOrganisationCopyWith(_$_CreateOrganisation value,
          $Res Function(_$_CreateOrganisation) then) =
      __$$_CreateOrganisationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "organization_type") String? orgType,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class __$$_CreateOrganisationCopyWithImpl<$Res>
    extends _$CreateOrganisationCopyWithImpl<$Res, _$_CreateOrganisation>
    implements _$$_CreateOrganisationCopyWith<$Res> {
  __$$_CreateOrganisationCopyWithImpl(
      _$_CreateOrganisation _value, $Res Function(_$_CreateOrganisation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orgType = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_CreateOrganisation(
      orgType: freezed == orgType
          ? _value.orgType
          : orgType // ignore: cast_nullable_to_non_nullable
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
class _$_CreateOrganisation implements _CreateOrganisation {
  const _$_CreateOrganisation(
      {@JsonKey(name: "organization_type") this.orgType,
      @JsonKey(name: "code") this.code});

  factory _$_CreateOrganisation.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrganisationFromJson(json);

  @override
  @JsonKey(name: "organization_type")
  final String? orgType;
  @override
  @JsonKey(name: "code")
  final String? code;

  @override
  String toString() {
    return 'CreateOrganisation(orgType: $orgType, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrganisation &&
            (identical(other.orgType, orgType) || other.orgType == orgType) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orgType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrganisationCopyWith<_$_CreateOrganisation> get copyWith =>
      __$$_CreateOrganisationCopyWithImpl<_$_CreateOrganisation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrganisationToJson(
      this,
    );
  }
}

abstract class _CreateOrganisation implements CreateOrganisation {
  const factory _CreateOrganisation(
      {@JsonKey(name: "organization_type") final String? orgType,
      @JsonKey(name: "code") final String? code}) = _$_CreateOrganisation;

  factory _CreateOrganisation.fromJson(Map<String, dynamic> json) =
      _$_CreateOrganisation.fromJson;

  @override
  @JsonKey(name: "organization_type")
  String? get orgType;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrganisationCopyWith<_$_CreateOrganisation> get copyWith =>
      throw _privateConstructorUsedError;
}
