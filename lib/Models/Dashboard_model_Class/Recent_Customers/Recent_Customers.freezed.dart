// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Recent_Customers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentCustomers _$RecentCustomersFromJson(Map<String, dynamic> json) {
  return _RecentCustomers.fromJson(json);
}

/// @nodoc
mixin _$RecentCustomers {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "date_joined")
  String? get dateJoined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentCustomersCopyWith<RecentCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentCustomersCopyWith<$Res> {
  factory $RecentCustomersCopyWith(
          RecentCustomers value, $Res Function(RecentCustomers) then) =
      _$RecentCustomersCopyWithImpl<$Res, RecentCustomers>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "username") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "customer_usercode") String? customerUserCode,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "date_joined") String? dateJoined});
}

/// @nodoc
class _$RecentCustomersCopyWithImpl<$Res, $Val extends RecentCustomers>
    implements $RecentCustomersCopyWith<$Res> {
  _$RecentCustomersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? customerUserCode = freezed,
    Object? profilePic = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentCustomersCopyWith<$Res>
    implements $RecentCustomersCopyWith<$Res> {
  factory _$$_RecentCustomersCopyWith(
          _$_RecentCustomers value, $Res Function(_$_RecentCustomers) then) =
      __$$_RecentCustomersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "username") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "customer_usercode") String? customerUserCode,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "date_joined") String? dateJoined});
}

/// @nodoc
class __$$_RecentCustomersCopyWithImpl<$Res>
    extends _$RecentCustomersCopyWithImpl<$Res, _$_RecentCustomers>
    implements _$$_RecentCustomersCopyWith<$Res> {
  __$$_RecentCustomersCopyWithImpl(
      _$_RecentCustomers _value, $Res Function(_$_RecentCustomers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? customerUserCode = freezed,
    Object? profilePic = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
  }) {
    return _then(_$_RecentCustomers(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentCustomers implements _RecentCustomers {
  const _$_RecentCustomers(
      {this.id,
      @JsonKey(name: "username") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "customer_usercode") this.customerUserCode,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "date_joined") this.dateJoined});

  factory _$_RecentCustomers.fromJson(Map<String, dynamic> json) =>
      _$$_RecentCustomersFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "username")
  final String? userName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "customer_usercode")
  final String? customerUserCode;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "date_joined")
  final String? dateJoined;

  @override
  String toString() {
    return 'RecentCustomers(id: $id, userName: $userName, email: $email, customerUserCode: $customerUserCode, profilePic: $profilePic, isActive: $isActive, dateJoined: $dateJoined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentCustomers &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.customerUserCode, customerUserCode) ||
                other.customerUserCode == customerUserCode) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, email,
      customerUserCode, profilePic, isActive, dateJoined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentCustomersCopyWith<_$_RecentCustomers> get copyWith =>
      __$$_RecentCustomersCopyWithImpl<_$_RecentCustomers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentCustomersToJson(
      this,
    );
  }
}

abstract class _RecentCustomers implements RecentCustomers {
  const factory _RecentCustomers(
          {final int? id,
          @JsonKey(name: "username") final String? userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "customer_usercode") final String? customerUserCode,
          @JsonKey(name: "profile_pic") final String? profilePic,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "date_joined") final String? dateJoined}) =
      _$_RecentCustomers;

  factory _RecentCustomers.fromJson(Map<String, dynamic> json) =
      _$_RecentCustomers.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "username")
  String? get userName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "date_joined")
  String? get dateJoined;
  @override
  @JsonKey(ignore: true)
  _$$_RecentCustomersCopyWith<_$_RecentCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}
