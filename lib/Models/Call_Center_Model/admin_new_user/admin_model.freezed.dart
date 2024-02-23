// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminCreationModel _$AdminCreationModelFromJson(Map<String, dynamic> json) {
  return _AdminCreationModel.fromJson(json);
}

/// @nodoc
mixin _$AdminCreationModel {
  String? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  bool? get loading => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get fistName => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_code")
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "business_code")
  String? get buinessCode => throw _privateConstructorUsedError;
  @JsonKey(name: "official_role")
  int? get officialRole => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_roles")
  List<int>? get additonalRole => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminCreationModelCopyWith<AdminCreationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreationModelCopyWith<$Res> {
  factory $AdminCreationModelCopyWith(
          AdminCreationModel value, $Res Function(AdminCreationModel) then) =
      _$AdminCreationModelCopyWithImpl<$Res, AdminCreationModel>;
  @useResult
  $Res call(
      {String? email,
      String? gender,
      String? nationality,
      String? department,
      String? password,
      String? designation,
      bool? loading,
      @JsonKey(name: "first_name") String? fistName,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "business_code") String? buinessCode,
      @JsonKey(name: "official_role") int? officialRole,
      @JsonKey(name: "additional_roles") List<int>? additonalRole,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$AdminCreationModelCopyWithImpl<$Res, $Val extends AdminCreationModel>
    implements $AdminCreationModelCopyWith<$Res> {
  _$AdminCreationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? department = freezed,
    Object? password = freezed,
    Object? designation = freezed,
    Object? loading = freezed,
    Object? fistName = freezed,
    Object? employeeCode = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? buinessCode = freezed,
    Object? officialRole = freezed,
    Object? additonalRole = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      fistName: freezed == fistName
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buinessCode: freezed == buinessCode
          ? _value.buinessCode
          : buinessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      officialRole: freezed == officialRole
          ? _value.officialRole
          : officialRole // ignore: cast_nullable_to_non_nullable
              as int?,
      additonalRole: freezed == additonalRole
          ? _value.additonalRole
          : additonalRole // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminCreationModelCopyWith<$Res>
    implements $AdminCreationModelCopyWith<$Res> {
  factory _$$_AdminCreationModelCopyWith(_$_AdminCreationModel value,
          $Res Function(_$_AdminCreationModel) then) =
      __$$_AdminCreationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? gender,
      String? nationality,
      String? department,
      String? password,
      String? designation,
      bool? loading,
      @JsonKey(name: "first_name") String? fistName,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "business_code") String? buinessCode,
      @JsonKey(name: "official_role") int? officialRole,
      @JsonKey(name: "additional_roles") List<int>? additonalRole,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_AdminCreationModelCopyWithImpl<$Res>
    extends _$AdminCreationModelCopyWithImpl<$Res, _$_AdminCreationModel>
    implements _$$_AdminCreationModelCopyWith<$Res> {
  __$$_AdminCreationModelCopyWithImpl(
      _$_AdminCreationModel _value, $Res Function(_$_AdminCreationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? department = freezed,
    Object? password = freezed,
    Object? designation = freezed,
    Object? loading = freezed,
    Object? fistName = freezed,
    Object? employeeCode = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? buinessCode = freezed,
    Object? officialRole = freezed,
    Object? additonalRole = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_AdminCreationModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      fistName: freezed == fistName
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      buinessCode: freezed == buinessCode
          ? _value.buinessCode
          : buinessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      officialRole: freezed == officialRole
          ? _value.officialRole
          : officialRole // ignore: cast_nullable_to_non_nullable
              as int?,
      additonalRole: freezed == additonalRole
          ? _value._additonalRole
          : additonalRole // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminCreationModel implements _AdminCreationModel {
  const _$_AdminCreationModel(
      {this.email,
      this.gender,
      this.nationality,
      this.department,
      this.password,
      this.designation,
      this.loading,
      @JsonKey(name: "first_name") this.fistName,
      @JsonKey(name: "employee_code") this.employeeCode,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "business_code") this.buinessCode,
      @JsonKey(name: "official_role") this.officialRole,
      @JsonKey(name: "additional_roles") final List<int>? additonalRole,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive})
      : _additonalRole = additonalRole;

  factory _$_AdminCreationModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminCreationModelFromJson(json);

  @override
  final String? email;
  @override
  final String? gender;
  @override
  final String? nationality;
  @override
  final String? department;
  @override
  final String? password;
  @override
  final String? designation;
  @override
  final bool? loading;
  @override
  @JsonKey(name: "first_name")
  final String? fistName;
  @override
  @JsonKey(name: "employee_code")
  final String? employeeCode;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "business_code")
  final String? buinessCode;
  @override
  @JsonKey(name: "official_role")
  final int? officialRole;
  final List<int>? _additonalRole;
  @override
  @JsonKey(name: "additional_roles")
  List<int>? get additonalRole {
    final value = _additonalRole;
    if (value == null) return null;
    if (_additonalRole is EqualUnmodifiableListView) return _additonalRole;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'AdminCreationModel(email: $email, gender: $gender, nationality: $nationality, department: $department, password: $password, designation: $designation, loading: $loading, fistName: $fistName, employeeCode: $employeeCode, lastName: $lastName, phoneNumber: $phoneNumber, buinessCode: $buinessCode, officialRole: $officialRole, additonalRole: $additonalRole, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminCreationModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.fistName, fistName) ||
                other.fistName == fistName) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.buinessCode, buinessCode) ||
                other.buinessCode == buinessCode) &&
            (identical(other.officialRole, officialRole) ||
                other.officialRole == officialRole) &&
            const DeepCollectionEquality()
                .equals(other._additonalRole, _additonalRole) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      gender,
      nationality,
      department,
      password,
      designation,
      loading,
      fistName,
      employeeCode,
      lastName,
      phoneNumber,
      buinessCode,
      officialRole,
      const DeepCollectionEquality().hash(_additonalRole),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminCreationModelCopyWith<_$_AdminCreationModel> get copyWith =>
      __$$_AdminCreationModelCopyWithImpl<_$_AdminCreationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminCreationModelToJson(
      this,
    );
  }
}

abstract class _AdminCreationModel implements AdminCreationModel {
  const factory _AdminCreationModel(
      {final String? email,
      final String? gender,
      final String? nationality,
      final String? department,
      final String? password,
      final String? designation,
      final bool? loading,
      @JsonKey(name: "first_name") final String? fistName,
      @JsonKey(name: "employee_code") final String? employeeCode,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      @JsonKey(name: "business_code") final String? buinessCode,
      @JsonKey(name: "official_role") final int? officialRole,
      @JsonKey(name: "additional_roles") final List<int>? additonalRole,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_AdminCreationModel;

  factory _AdminCreationModel.fromJson(Map<String, dynamic> json) =
      _$_AdminCreationModel.fromJson;

  @override
  String? get email;
  @override
  String? get gender;
  @override
  String? get nationality;
  @override
  String? get department;
  @override
  String? get password;
  @override
  String? get designation;
  @override
  bool? get loading;
  @override
  @JsonKey(name: "first_name")
  String? get fistName;
  @override
  @JsonKey(name: "employee_code")
  String? get employeeCode;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "business_code")
  String? get buinessCode;
  @override
  @JsonKey(name: "official_role")
  int? get officialRole;
  @override
  @JsonKey(name: "additional_roles")
  List<int>? get additonalRole;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_AdminCreationModelCopyWith<_$_AdminCreationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralRoleModel _$GeneralRoleModelFromJson(Map<String, dynamic> json) {
  return _GeneralRoleModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralRoleModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "role_type")
  String? get roleType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralRoleModelCopyWith<GeneralRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralRoleModelCopyWith<$Res> {
  factory $GeneralRoleModelCopyWith(
          GeneralRoleModel value, $Res Function(GeneralRoleModel) then) =
      _$GeneralRoleModelCopyWithImpl<$Res, GeneralRoleModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? role,
      String? description,
      @JsonKey(name: "role_type") String? roleType,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$GeneralRoleModelCopyWithImpl<$Res, $Val extends GeneralRoleModel>
    implements $GeneralRoleModelCopyWith<$Res> {
  _$GeneralRoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? roleType = freezed,
    Object? isActive = freezed,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roleType: freezed == roleType
          ? _value.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralRoleModelCopyWith<$Res>
    implements $GeneralRoleModelCopyWith<$Res> {
  factory _$$_GeneralRoleModelCopyWith(
          _$_GeneralRoleModel value, $Res Function(_$_GeneralRoleModel) then) =
      __$$_GeneralRoleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? role,
      String? description,
      @JsonKey(name: "role_type") String? roleType,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_GeneralRoleModelCopyWithImpl<$Res>
    extends _$GeneralRoleModelCopyWithImpl<$Res, _$_GeneralRoleModel>
    implements _$$_GeneralRoleModelCopyWith<$Res> {
  __$$_GeneralRoleModelCopyWithImpl(
      _$_GeneralRoleModel _value, $Res Function(_$_GeneralRoleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? roleType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_GeneralRoleModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roleType: freezed == roleType
          ? _value.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralRoleModel implements _GeneralRoleModel {
  const _$_GeneralRoleModel(
      {this.id,
      this.code,
      this.role,
      this.description,
      @JsonKey(name: "role_type") this.roleType,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_GeneralRoleModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralRoleModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? role;
  @override
  final String? description;
  @override
  @JsonKey(name: "role_type")
  final String? roleType;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'GeneralRoleModel(id: $id, code: $code, role: $role, description: $description, roleType: $roleType, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralRoleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.roleType, roleType) ||
                other.roleType == roleType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, role, description, roleType, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralRoleModelCopyWith<_$_GeneralRoleModel> get copyWith =>
      __$$_GeneralRoleModelCopyWithImpl<_$_GeneralRoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralRoleModelToJson(
      this,
    );
  }
}

abstract class _GeneralRoleModel implements GeneralRoleModel {
  const factory _GeneralRoleModel(
      {final int? id,
      final String? code,
      final String? role,
      final String? description,
      @JsonKey(name: "role_type") final String? roleType,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_GeneralRoleModel;

  factory _GeneralRoleModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralRoleModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get role;
  @override
  String? get description;
  @override
  @JsonKey(name: "role_type")
  String? get roleType;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralRoleModelCopyWith<_$_GeneralRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DesignationListModel _$DesignationListModelFromJson(Map<String, dynamic> json) {
  return _DesignationListModel.fromJson(json);
}

/// @nodoc
mixin _$DesignationListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get organization => throw _privateConstructorUsedError;
  @JsonKey(name: "department_code")
  String? get departmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationListModelCopyWith<DesignationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationListModelCopyWith<$Res> {
  factory $DesignationListModelCopyWith(DesignationListModel value,
          $Res Function(DesignationListModel) then) =
      _$DesignationListModelCopyWithImpl<$Res, DesignationListModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? title,
      String? description,
      int? organization,
      @JsonKey(name: "department_code") String? departmentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$DesignationListModelCopyWithImpl<$Res,
        $Val extends DesignationListModel>
    implements $DesignationListModelCopyWith<$Res> {
  _$DesignationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? organization = freezed,
    Object? departmentCode = freezed,
    Object? isActive = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentCode: freezed == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DesignationListModelCopyWith<$Res>
    implements $DesignationListModelCopyWith<$Res> {
  factory _$$_DesignationListModelCopyWith(_$_DesignationListModel value,
          $Res Function(_$_DesignationListModel) then) =
      __$$_DesignationListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? title,
      String? description,
      int? organization,
      @JsonKey(name: "department_code") String? departmentCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_DesignationListModelCopyWithImpl<$Res>
    extends _$DesignationListModelCopyWithImpl<$Res, _$_DesignationListModel>
    implements _$$_DesignationListModelCopyWith<$Res> {
  __$$_DesignationListModelCopyWithImpl(_$_DesignationListModel _value,
      $Res Function(_$_DesignationListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? organization = freezed,
    Object? departmentCode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_DesignationListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentCode: freezed == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DesignationListModel implements _DesignationListModel {
  const _$_DesignationListModel(
      {this.id,
      this.code,
      this.title,
      this.description,
      this.organization,
      @JsonKey(name: "department_code") this.departmentCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_DesignationListModel.fromJson(Map<String, dynamic> json) =>
      _$$_DesignationListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? organization;
  @override
  @JsonKey(name: "department_code")
  final String? departmentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'DesignationListModel(id: $id, code: $code, title: $title, description: $description, organization: $organization, departmentCode: $departmentCode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DesignationListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.departmentCode, departmentCode) ||
                other.departmentCode == departmentCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, title, description,
      organization, departmentCode, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DesignationListModelCopyWith<_$_DesignationListModel> get copyWith =>
      __$$_DesignationListModelCopyWithImpl<_$_DesignationListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DesignationListModelToJson(
      this,
    );
  }
}

abstract class _DesignationListModel implements DesignationListModel {
  const factory _DesignationListModel(
      {final int? id,
      final String? code,
      final String? title,
      final String? description,
      final int? organization,
      @JsonKey(name: "department_code") final String? departmentCode,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_DesignationListModel;

  factory _DesignationListModel.fromJson(Map<String, dynamic> json) =
      _$_DesignationListModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get organization;
  @override
  @JsonKey(name: "department_code")
  String? get departmentCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_DesignationListModelCopyWith<_$_DesignationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminUserReadModel _$AdminUserReadModelFromJson(Map<String, dynamic> json) {
  return _AdminUserReadModel.fromJson(json);
}

/// @nodoc
mixin _$AdminUserReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get fname => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_code")
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_code")
  String? get mobilecode => throw _privateConstructorUsedError;
  @JsonKey(name: "country_name")
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_country")
  String? get mobileCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "role_id")
  int? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_roles")
  List<AdditionalRole>? get additionalRole =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminUserReadModelCopyWith<AdminUserReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserReadModelCopyWith<$Res> {
  factory $AdminUserReadModelCopyWith(
          AdminUserReadModel value, $Res Function(AdminUserReadModel) then) =
      _$AdminUserReadModelCopyWithImpl<$Res, AdminUserReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? mobile,
      String? fname,
      String? lname,
      String? gender,
      String? email,
      String? country,
      String? designation,
      String? role,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "mobile_code") String? mobilecode,
      @JsonKey(name: "country_name") String? countryName,
      @JsonKey(name: "mobile_country") String? mobileCountry,
      @JsonKey(name: "role_id") int? roleId,
      @JsonKey(name: "additional_roles") List<AdditionalRole>? additionalRole});
}

/// @nodoc
class _$AdminUserReadModelCopyWithImpl<$Res, $Val extends AdminUserReadModel>
    implements $AdminUserReadModelCopyWith<$Res> {
  _$AdminUserReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? designation = freezed,
    Object? role = freezed,
    Object? employeeCode = freezed,
    Object? mobilecode = freezed,
    Object? countryName = freezed,
    Object? mobileCountry = freezed,
    Object? roleId = freezed,
    Object? additionalRole = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilecode: freezed == mobilecode
          ? _value.mobilecode
          : mobilecode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileCountry: freezed == mobileCountry
          ? _value.mobileCountry
          : mobileCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalRole: freezed == additionalRole
          ? _value.additionalRole
          : additionalRole // ignore: cast_nullable_to_non_nullable
              as List<AdditionalRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminUserReadModelCopyWith<$Res>
    implements $AdminUserReadModelCopyWith<$Res> {
  factory _$$_AdminUserReadModelCopyWith(_$_AdminUserReadModel value,
          $Res Function(_$_AdminUserReadModel) then) =
      __$$_AdminUserReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? mobile,
      String? fname,
      String? lname,
      String? gender,
      String? email,
      String? country,
      String? designation,
      String? role,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "mobile_code") String? mobilecode,
      @JsonKey(name: "country_name") String? countryName,
      @JsonKey(name: "mobile_country") String? mobileCountry,
      @JsonKey(name: "role_id") int? roleId,
      @JsonKey(name: "additional_roles") List<AdditionalRole>? additionalRole});
}

/// @nodoc
class __$$_AdminUserReadModelCopyWithImpl<$Res>
    extends _$AdminUserReadModelCopyWithImpl<$Res, _$_AdminUserReadModel>
    implements _$$_AdminUserReadModelCopyWith<$Res> {
  __$$_AdminUserReadModelCopyWithImpl(
      _$_AdminUserReadModel _value, $Res Function(_$_AdminUserReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? designation = freezed,
    Object? role = freezed,
    Object? employeeCode = freezed,
    Object? mobilecode = freezed,
    Object? countryName = freezed,
    Object? mobileCountry = freezed,
    Object? roleId = freezed,
    Object? additionalRole = freezed,
  }) {
    return _then(_$_AdminUserReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilecode: freezed == mobilecode
          ? _value.mobilecode
          : mobilecode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileCountry: freezed == mobileCountry
          ? _value.mobileCountry
          : mobileCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalRole: freezed == additionalRole
          ? _value._additionalRole
          : additionalRole // ignore: cast_nullable_to_non_nullable
              as List<AdditionalRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminUserReadModel implements _AdminUserReadModel {
  const _$_AdminUserReadModel(
      {this.id,
      this.mobile,
      this.fname,
      this.lname,
      this.gender,
      this.email,
      this.country,
      this.designation,
      this.role,
      @JsonKey(name: "employee_code") this.employeeCode,
      @JsonKey(name: "mobile_code") this.mobilecode,
      @JsonKey(name: "country_name") this.countryName,
      @JsonKey(name: "mobile_country") this.mobileCountry,
      @JsonKey(name: "role_id") this.roleId,
      @JsonKey(name: "additional_roles")
      final List<AdditionalRole>? additionalRole})
      : _additionalRole = additionalRole;

  factory _$_AdminUserReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminUserReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? mobile;
  @override
  final String? fname;
  @override
  final String? lname;
  @override
  final String? gender;
  @override
  final String? email;
  @override
  final String? country;
  @override
  final String? designation;
  @override
  final String? role;
  @override
  @JsonKey(name: "employee_code")
  final String? employeeCode;
  @override
  @JsonKey(name: "mobile_code")
  final String? mobilecode;
  @override
  @JsonKey(name: "country_name")
  final String? countryName;
  @override
  @JsonKey(name: "mobile_country")
  final String? mobileCountry;
  @override
  @JsonKey(name: "role_id")
  final int? roleId;
  final List<AdditionalRole>? _additionalRole;
  @override
  @JsonKey(name: "additional_roles")
  List<AdditionalRole>? get additionalRole {
    final value = _additionalRole;
    if (value == null) return null;
    if (_additionalRole is EqualUnmodifiableListView) return _additionalRole;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdminUserReadModel(id: $id, mobile: $mobile, fname: $fname, lname: $lname, gender: $gender, email: $email, country: $country, designation: $designation, role: $role, employeeCode: $employeeCode, mobilecode: $mobilecode, countryName: $countryName, mobileCountry: $mobileCountry, roleId: $roleId, additionalRole: $additionalRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.mobilecode, mobilecode) ||
                other.mobilecode == mobilecode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.mobileCountry, mobileCountry) ||
                other.mobileCountry == mobileCountry) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            const DeepCollectionEquality()
                .equals(other._additionalRole, _additionalRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mobile,
      fname,
      lname,
      gender,
      email,
      country,
      designation,
      role,
      employeeCode,
      mobilecode,
      countryName,
      mobileCountry,
      roleId,
      const DeepCollectionEquality().hash(_additionalRole));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminUserReadModelCopyWith<_$_AdminUserReadModel> get copyWith =>
      __$$_AdminUserReadModelCopyWithImpl<_$_AdminUserReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminUserReadModelToJson(
      this,
    );
  }
}

abstract class _AdminUserReadModel implements AdminUserReadModel {
  const factory _AdminUserReadModel(
      {final int? id,
      final String? mobile,
      final String? fname,
      final String? lname,
      final String? gender,
      final String? email,
      final String? country,
      final String? designation,
      final String? role,
      @JsonKey(name: "employee_code") final String? employeeCode,
      @JsonKey(name: "mobile_code") final String? mobilecode,
      @JsonKey(name: "country_name") final String? countryName,
      @JsonKey(name: "mobile_country") final String? mobileCountry,
      @JsonKey(name: "role_id") final int? roleId,
      @JsonKey(name: "additional_roles")
      final List<AdditionalRole>? additionalRole}) = _$_AdminUserReadModel;

  factory _AdminUserReadModel.fromJson(Map<String, dynamic> json) =
      _$_AdminUserReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get mobile;
  @override
  String? get fname;
  @override
  String? get lname;
  @override
  String? get gender;
  @override
  String? get email;
  @override
  String? get country;
  @override
  String? get designation;
  @override
  String? get role;
  @override
  @JsonKey(name: "employee_code")
  String? get employeeCode;
  @override
  @JsonKey(name: "mobile_code")
  String? get mobilecode;
  @override
  @JsonKey(name: "country_name")
  String? get countryName;
  @override
  @JsonKey(name: "mobile_country")
  String? get mobileCountry;
  @override
  @JsonKey(name: "role_id")
  int? get roleId;
  @override
  @JsonKey(name: "additional_roles")
  List<AdditionalRole>? get additionalRole;
  @override
  @JsonKey(ignore: true)
  _$$_AdminUserReadModelCopyWith<_$_AdminUserReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalRole _$AdditionalRoleFromJson(Map<String, dynamic> json) {
  return _AdditionalRole.fromJson(json);
}

/// @nodoc
mixin _$AdditionalRole {
  int? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalRoleCopyWith<AdditionalRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalRoleCopyWith<$Res> {
  factory $AdditionalRoleCopyWith(
          AdditionalRole value, $Res Function(AdditionalRole) then) =
      _$AdditionalRoleCopyWithImpl<$Res, AdditionalRole>;
  @useResult
  $Res call({int? uid, String? name});
}

/// @nodoc
class _$AdditionalRoleCopyWithImpl<$Res, $Val extends AdditionalRole>
    implements $AdditionalRoleCopyWith<$Res> {
  _$AdditionalRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalRoleCopyWith<$Res>
    implements $AdditionalRoleCopyWith<$Res> {
  factory _$$_AdditionalRoleCopyWith(
          _$_AdditionalRole value, $Res Function(_$_AdditionalRole) then) =
      __$$_AdditionalRoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? uid, String? name});
}

/// @nodoc
class __$$_AdditionalRoleCopyWithImpl<$Res>
    extends _$AdditionalRoleCopyWithImpl<$Res, _$_AdditionalRole>
    implements _$$_AdditionalRoleCopyWith<$Res> {
  __$$_AdditionalRoleCopyWithImpl(
      _$_AdditionalRole _value, $Res Function(_$_AdditionalRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_AdditionalRole(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
class _$_AdditionalRole implements _AdditionalRole {
  const _$_AdditionalRole({this.uid, this.name});

  factory _$_AdditionalRole.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalRoleFromJson(json);

  @override
  final int? uid;
  @override
  final String? name;

  @override
  String toString() {
    return 'AdditionalRole(uid: $uid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalRole &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalRoleCopyWith<_$_AdditionalRole> get copyWith =>
      __$$_AdditionalRoleCopyWithImpl<_$_AdditionalRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalRoleToJson(
      this,
    );
  }
}

abstract class _AdditionalRole implements AdditionalRole {
  const factory _AdditionalRole({final int? uid, final String? name}) =
      _$_AdditionalRole;

  factory _AdditionalRole.fromJson(Map<String, dynamic> json) =
      _$_AdditionalRole.fromJson;

  @override
  int? get uid;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalRoleCopyWith<_$_AdditionalRole> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelListModel _$ChannelListModelFromJson(Map<String, dynamic> json) {
  return _ChannelListModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelListModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get diaplayName => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_address")
  ChannelAdress? get channelAdress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelListModelCopyWith<ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelListModelCopyWith<$Res> {
  factory $ChannelListModelCopyWith(
          ChannelListModel value, $Res Function(ChannelListModel) then) =
      _$ChannelListModelCopyWithImpl<$Res, ChannelListModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "display_name") String? diaplayName,
      @JsonKey(name: "name") String? channelName,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "channel_address") ChannelAdress? channelAdress});

  $ChannelAdressCopyWith<$Res>? get channelAdress;
}

/// @nodoc
class _$ChannelListModelCopyWithImpl<$Res, $Val extends ChannelListModel>
    implements $ChannelListModelCopyWith<$Res> {
  _$ChannelListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channelCode = freezed,
    Object? searchName = freezed,
    Object? diaplayName = freezed,
    Object? channelName = freezed,
    Object? inventoryId = freezed,
    Object? channelAdress = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      diaplayName: freezed == diaplayName
          ? _value.diaplayName
          : diaplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelAdress: freezed == channelAdress
          ? _value.channelAdress
          : channelAdress // ignore: cast_nullable_to_non_nullable
              as ChannelAdress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelAdressCopyWith<$Res>? get channelAdress {
    if (_value.channelAdress == null) {
      return null;
    }

    return $ChannelAdressCopyWith<$Res>(_value.channelAdress!, (value) {
      return _then(_value.copyWith(channelAdress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChannelListModelCopyWith<$Res>
    implements $ChannelListModelCopyWith<$Res> {
  factory _$$_ChannelListModelCopyWith(
          _$_ChannelListModel value, $Res Function(_$_ChannelListModel) then) =
      __$$_ChannelListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "display_name") String? diaplayName,
      @JsonKey(name: "name") String? channelName,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "channel_address") ChannelAdress? channelAdress});

  @override
  $ChannelAdressCopyWith<$Res>? get channelAdress;
}

/// @nodoc
class __$$_ChannelListModelCopyWithImpl<$Res>
    extends _$ChannelListModelCopyWithImpl<$Res, _$_ChannelListModel>
    implements _$$_ChannelListModelCopyWith<$Res> {
  __$$_ChannelListModelCopyWithImpl(
      _$_ChannelListModel _value, $Res Function(_$_ChannelListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channelCode = freezed,
    Object? searchName = freezed,
    Object? diaplayName = freezed,
    Object? channelName = freezed,
    Object? inventoryId = freezed,
    Object? channelAdress = freezed,
  }) {
    return _then(_$_ChannelListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      diaplayName: freezed == diaplayName
          ? _value.diaplayName
          : diaplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelAdress: freezed == channelAdress
          ? _value.channelAdress
          : channelAdress // ignore: cast_nullable_to_non_nullable
              as ChannelAdress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelListModel implements _ChannelListModel {
  const _$_ChannelListModel(
      {this.id,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "search_name") this.searchName,
      @JsonKey(name: "display_name") this.diaplayName,
      @JsonKey(name: "name") this.channelName,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "channel_address") this.channelAdress});

  factory _$_ChannelListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelListModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override
  @JsonKey(name: "display_name")
  final String? diaplayName;
  @override
  @JsonKey(name: "name")
  final String? channelName;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "channel_address")
  final ChannelAdress? channelAdress;

  @override
  String toString() {
    return 'ChannelListModel(id: $id, channelCode: $channelCode, searchName: $searchName, diaplayName: $diaplayName, channelName: $channelName, inventoryId: $inventoryId, channelAdress: $channelAdress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName) &&
            (identical(other.diaplayName, diaplayName) ||
                other.diaplayName == diaplayName) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.channelAdress, channelAdress) ||
                other.channelAdress == channelAdress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, channelCode, searchName,
      diaplayName, channelName, inventoryId, channelAdress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      __$$_ChannelListModelCopyWithImpl<_$_ChannelListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelListModelToJson(
      this,
    );
  }
}

abstract class _ChannelListModel implements ChannelListModel {
  const factory _ChannelListModel(
      {final int? id,
      @JsonKey(name: "channel_code") final String? channelCode,
      @JsonKey(name: "search_name") final String? searchName,
      @JsonKey(name: "display_name") final String? diaplayName,
      @JsonKey(name: "name") final String? channelName,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "channel_address")
      final ChannelAdress? channelAdress}) = _$_ChannelListModel;

  factory _ChannelListModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelListModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "search_name")
  String? get searchName;
  @override
  @JsonKey(name: "display_name")
  String? get diaplayName;
  @override
  @JsonKey(name: "name")
  String? get channelName;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "channel_address")
  ChannelAdress? get channelAdress;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelListModelCopyWith<_$_ChannelListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelAdress _$ChannelAdressFromJson(Map<String, dynamic> json) {
  return _ChannelAdress.fromJson(json);
}

/// @nodoc
mixin _$ChannelAdress {
  int? get id => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get contacts =>
      throw _privateConstructorUsedError; // final AdminContact? contact,
  @JsonKey(name: "address_one")
  String? get addressone => throw _privateConstructorUsedError;
  @JsonKey(name: "address_two")
  String? get addresstwo => throw _privateConstructorUsedError;
  @JsonKey(name: "city_or_town")
  String? get cityOrTown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelAdressCopyWith<ChannelAdress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelAdressCopyWith<$Res> {
  factory $ChannelAdressCopyWith(
          ChannelAdress value, $Res Function(ChannelAdress) then) =
      _$ChannelAdressCopyWithImpl<$Res, ChannelAdress>;
  @useResult
  $Res call(
      {int? id,
      String? state,
      String? country,
      String? email,
      String? contacts,
      @JsonKey(name: "address_one") String? addressone,
      @JsonKey(name: "address_two") String? addresstwo,
      @JsonKey(name: "city_or_town") String? cityOrTown});
}

/// @nodoc
class _$ChannelAdressCopyWithImpl<$Res, $Val extends ChannelAdress>
    implements $ChannelAdressCopyWith<$Res> {
  _$ChannelAdressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? contacts = freezed,
    Object? addressone = freezed,
    Object? addresstwo = freezed,
    Object? cityOrTown = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String?,
      addressone: freezed == addressone
          ? _value.addressone
          : addressone // ignore: cast_nullable_to_non_nullable
              as String?,
      addresstwo: freezed == addresstwo
          ? _value.addresstwo
          : addresstwo // ignore: cast_nullable_to_non_nullable
              as String?,
      cityOrTown: freezed == cityOrTown
          ? _value.cityOrTown
          : cityOrTown // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelAdressCopyWith<$Res>
    implements $ChannelAdressCopyWith<$Res> {
  factory _$$_ChannelAdressCopyWith(
          _$_ChannelAdress value, $Res Function(_$_ChannelAdress) then) =
      __$$_ChannelAdressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? state,
      String? country,
      String? email,
      String? contacts,
      @JsonKey(name: "address_one") String? addressone,
      @JsonKey(name: "address_two") String? addresstwo,
      @JsonKey(name: "city_or_town") String? cityOrTown});
}

/// @nodoc
class __$$_ChannelAdressCopyWithImpl<$Res>
    extends _$ChannelAdressCopyWithImpl<$Res, _$_ChannelAdress>
    implements _$$_ChannelAdressCopyWith<$Res> {
  __$$_ChannelAdressCopyWithImpl(
      _$_ChannelAdress _value, $Res Function(_$_ChannelAdress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? contacts = freezed,
    Object? addressone = freezed,
    Object? addresstwo = freezed,
    Object? cityOrTown = freezed,
  }) {
    return _then(_$_ChannelAdress(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String?,
      addressone: freezed == addressone
          ? _value.addressone
          : addressone // ignore: cast_nullable_to_non_nullable
              as String?,
      addresstwo: freezed == addresstwo
          ? _value.addresstwo
          : addresstwo // ignore: cast_nullable_to_non_nullable
              as String?,
      cityOrTown: freezed == cityOrTown
          ? _value.cityOrTown
          : cityOrTown // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelAdress implements _ChannelAdress {
  const _$_ChannelAdress(
      {this.id,
      this.state,
      this.country,
      this.email,
      this.contacts,
      @JsonKey(name: "address_one") this.addressone,
      @JsonKey(name: "address_two") this.addresstwo,
      @JsonKey(name: "city_or_town") this.cityOrTown});

  factory _$_ChannelAdress.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelAdressFromJson(json);

  @override
  final int? id;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? contacts;
// final AdminContact? contact,
  @override
  @JsonKey(name: "address_one")
  final String? addressone;
  @override
  @JsonKey(name: "address_two")
  final String? addresstwo;
  @override
  @JsonKey(name: "city_or_town")
  final String? cityOrTown;

  @override
  String toString() {
    return 'ChannelAdress(id: $id, state: $state, country: $country, email: $email, contacts: $contacts, addressone: $addressone, addresstwo: $addresstwo, cityOrTown: $cityOrTown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelAdress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.addressone, addressone) ||
                other.addressone == addressone) &&
            (identical(other.addresstwo, addresstwo) ||
                other.addresstwo == addresstwo) &&
            (identical(other.cityOrTown, cityOrTown) ||
                other.cityOrTown == cityOrTown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, country, email,
      contacts, addressone, addresstwo, cityOrTown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelAdressCopyWith<_$_ChannelAdress> get copyWith =>
      __$$_ChannelAdressCopyWithImpl<_$_ChannelAdress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelAdressToJson(
      this,
    );
  }
}

abstract class _ChannelAdress implements ChannelAdress {
  const factory _ChannelAdress(
          {final int? id,
          final String? state,
          final String? country,
          final String? email,
          final String? contacts,
          @JsonKey(name: "address_one") final String? addressone,
          @JsonKey(name: "address_two") final String? addresstwo,
          @JsonKey(name: "city_or_town") final String? cityOrTown}) =
      _$_ChannelAdress;

  factory _ChannelAdress.fromJson(Map<String, dynamic> json) =
      _$_ChannelAdress.fromJson;

  @override
  int? get id;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get email;
  @override
  String? get contacts;
  @override // final AdminContact? contact,
  @JsonKey(name: "address_one")
  String? get addressone;
  @override
  @JsonKey(name: "address_two")
  String? get addresstwo;
  @override
  @JsonKey(name: "city_or_town")
  String? get cityOrTown;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelAdressCopyWith<_$_ChannelAdress> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminContact _$AdminContactFromJson(Map<String, dynamic> json) {
  return _AdminContact.fromJson(json);
}

/// @nodoc
mixin _$AdminContact {
  int? get id => throw _privateConstructorUsedError;
  String? get primary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminContactCopyWith<AdminContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminContactCopyWith<$Res> {
  factory $AdminContactCopyWith(
          AdminContact value, $Res Function(AdminContact) then) =
      _$AdminContactCopyWithImpl<$Res, AdminContact>;
  @useResult
  $Res call({int? id, String? primary});
}

/// @nodoc
class _$AdminContactCopyWithImpl<$Res, $Val extends AdminContact>
    implements $AdminContactCopyWith<$Res> {
  _$AdminContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? primary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminContactCopyWith<$Res>
    implements $AdminContactCopyWith<$Res> {
  factory _$$_AdminContactCopyWith(
          _$_AdminContact value, $Res Function(_$_AdminContact) then) =
      __$$_AdminContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? primary});
}

/// @nodoc
class __$$_AdminContactCopyWithImpl<$Res>
    extends _$AdminContactCopyWithImpl<$Res, _$_AdminContact>
    implements _$$_AdminContactCopyWith<$Res> {
  __$$_AdminContactCopyWithImpl(
      _$_AdminContact _value, $Res Function(_$_AdminContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? primary = freezed,
  }) {
    return _then(_$_AdminContact(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminContact implements _AdminContact {
  const _$_AdminContact({this.id, this.primary});

  factory _$_AdminContact.fromJson(Map<String, dynamic> json) =>
      _$$_AdminContactFromJson(json);

  @override
  final int? id;
  @override
  final String? primary;

  @override
  String toString() {
    return 'AdminContact(id: $id, primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminContact &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, primary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminContactCopyWith<_$_AdminContact> get copyWith =>
      __$$_AdminContactCopyWithImpl<_$_AdminContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminContactToJson(
      this,
    );
  }
}

abstract class _AdminContact implements AdminContact {
  const factory _AdminContact({final int? id, final String? primary}) =
      _$_AdminContact;

  factory _AdminContact.fromJson(Map<String, dynamic> json) =
      _$_AdminContact.fromJson;

  @override
  int? get id;
  @override
  String? get primary;
  @override
  @JsonKey(ignore: true)
  _$$_AdminContactCopyWith<_$_AdminContact> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminChannelCreateModel _$AdminChannelCreateModelFromJson(
    Map<String, dynamic> json) {
  return _AdminChannelCreateModel.fromJson(json);
}

/// @nodoc
mixin _$AdminChannelCreateModel {
  int? get id => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalcode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "address_one")
  String? get addressOne => throw _privateConstructorUsedError;
  @JsonKey(name: "city_town")
  String? get cityTown => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @JsonKey(name: "land_mark")
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_gp_target")
  double? get dailyGpTarget => throw _privateConstructorUsedError;
  @JsonKey(name: "weekly_targeted_gp")
  double? get weeklyTargetGp => throw _privateConstructorUsedError;
  @JsonKey(name: "yearly_targeted_gp")
  double? get yearlyTargetGp => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_targeted_gp")
  double? get monthlyTargetGp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminChannelCreateModelCopyWith<AdminChannelCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminChannelCreateModelCopyWith<$Res> {
  factory $AdminChannelCreateModelCopyWith(AdminChannelCreateModel value,
          $Res Function(AdminChannelCreateModel) then) =
      _$AdminChannelCreateModelCopyWithImpl<$Res, AdminChannelCreateModel>;
  @useResult
  $Res call(
      {int? id,
      String? location,
      String? email,
      String? country,
      String? state,
      String? postalcode,
      String? name,
      String? description,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "city_town") String? cityTown,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "land_mark") String? landmark,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "daily_gp_target") double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") double? monthlyTargetGp});
}

/// @nodoc
class _$AdminChannelCreateModelCopyWithImpl<$Res,
        $Val extends AdminChannelCreateModel>
    implements $AdminChannelCreateModelCopyWith<$Res> {
  _$AdminChannelCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? postalcode = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addressOne = freezed,
    Object? cityTown = freezed,
    Object? inventoryId = freezed,
    Object? userId = freezed,
    Object? phoneNumber = freezed,
    Object? searchName = freezed,
    Object? landmark = freezed,
    Object? displayName = freezed,
    Object? trnNumber = freezed,
    Object? dailyGpTarget = freezed,
    Object? weeklyTargetGp = freezed,
    Object? yearlyTargetGp = freezed,
    Object? monthlyTargetGp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalcode: freezed == postalcode
          ? _value.postalcode
          : postalcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTown: freezed == cityTown
          ? _value.cityTown
          : cityTown // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGpTarget: freezed == dailyGpTarget
          ? _value.dailyGpTarget
          : dailyGpTarget // ignore: cast_nullable_to_non_nullable
              as double?,
      weeklyTargetGp: freezed == weeklyTargetGp
          ? _value.weeklyTargetGp
          : weeklyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      yearlyTargetGp: freezed == yearlyTargetGp
          ? _value.yearlyTargetGp
          : yearlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyTargetGp: freezed == monthlyTargetGp
          ? _value.monthlyTargetGp
          : monthlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminChannelCreateModelCopyWith<$Res>
    implements $AdminChannelCreateModelCopyWith<$Res> {
  factory _$$_AdminChannelCreateModelCopyWith(_$_AdminChannelCreateModel value,
          $Res Function(_$_AdminChannelCreateModel) then) =
      __$$_AdminChannelCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? location,
      String? email,
      String? country,
      String? state,
      String? postalcode,
      String? name,
      String? description,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "city_town") String? cityTown,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "land_mark") String? landmark,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "daily_gp_target") double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") double? monthlyTargetGp});
}

/// @nodoc
class __$$_AdminChannelCreateModelCopyWithImpl<$Res>
    extends _$AdminChannelCreateModelCopyWithImpl<$Res,
        _$_AdminChannelCreateModel>
    implements _$$_AdminChannelCreateModelCopyWith<$Res> {
  __$$_AdminChannelCreateModelCopyWithImpl(_$_AdminChannelCreateModel _value,
      $Res Function(_$_AdminChannelCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? postalcode = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addressOne = freezed,
    Object? cityTown = freezed,
    Object? inventoryId = freezed,
    Object? userId = freezed,
    Object? phoneNumber = freezed,
    Object? searchName = freezed,
    Object? landmark = freezed,
    Object? displayName = freezed,
    Object? trnNumber = freezed,
    Object? dailyGpTarget = freezed,
    Object? weeklyTargetGp = freezed,
    Object? yearlyTargetGp = freezed,
    Object? monthlyTargetGp = freezed,
  }) {
    return _then(_$_AdminChannelCreateModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalcode: freezed == postalcode
          ? _value.postalcode
          : postalcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTown: freezed == cityTown
          ? _value.cityTown
          : cityTown // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGpTarget: freezed == dailyGpTarget
          ? _value.dailyGpTarget
          : dailyGpTarget // ignore: cast_nullable_to_non_nullable
              as double?,
      weeklyTargetGp: freezed == weeklyTargetGp
          ? _value.weeklyTargetGp
          : weeklyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      yearlyTargetGp: freezed == yearlyTargetGp
          ? _value.yearlyTargetGp
          : yearlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyTargetGp: freezed == monthlyTargetGp
          ? _value.monthlyTargetGp
          : monthlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminChannelCreateModel implements _AdminChannelCreateModel {
  const _$_AdminChannelCreateModel(
      {this.id,
      this.location,
      this.email,
      this.country,
      this.state,
      this.postalcode,
      this.name,
      this.description,
      @JsonKey(name: "address_one") this.addressOne,
      @JsonKey(name: "city_town") this.cityTown,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "search_name") this.searchName,
      @JsonKey(name: "land_mark") this.landmark,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "daily_gp_target") this.dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") this.weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") this.yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") this.monthlyTargetGp});

  factory _$_AdminChannelCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminChannelCreateModelFromJson(json);

  @override
  final int? id;
  @override
  final String? location;
  @override
  final String? email;
  @override
  final String? country;
  @override
  final String? state;
  @override
  final String? postalcode;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: "address_one")
  final String? addressOne;
  @override
  @JsonKey(name: "city_town")
  final String? cityTown;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override
  @JsonKey(name: "land_mark")
  final String? landmark;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "daily_gp_target")
  final double? dailyGpTarget;
  @override
  @JsonKey(name: "weekly_targeted_gp")
  final double? weeklyTargetGp;
  @override
  @JsonKey(name: "yearly_targeted_gp")
  final double? yearlyTargetGp;
  @override
  @JsonKey(name: "monthly_targeted_gp")
  final double? monthlyTargetGp;

  @override
  String toString() {
    return 'AdminChannelCreateModel(id: $id, location: $location, email: $email, country: $country, state: $state, postalcode: $postalcode, name: $name, description: $description, addressOne: $addressOne, cityTown: $cityTown, inventoryId: $inventoryId, userId: $userId, phoneNumber: $phoneNumber, searchName: $searchName, landmark: $landmark, displayName: $displayName, trnNumber: $trnNumber, dailyGpTarget: $dailyGpTarget, weeklyTargetGp: $weeklyTargetGp, yearlyTargetGp: $yearlyTargetGp, monthlyTargetGp: $monthlyTargetGp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminChannelCreateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalcode, postalcode) ||
                other.postalcode == postalcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addressOne, addressOne) ||
                other.addressOne == addressOne) &&
            (identical(other.cityTown, cityTown) ||
                other.cityTown == cityTown) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.dailyGpTarget, dailyGpTarget) ||
                other.dailyGpTarget == dailyGpTarget) &&
            (identical(other.weeklyTargetGp, weeklyTargetGp) ||
                other.weeklyTargetGp == weeklyTargetGp) &&
            (identical(other.yearlyTargetGp, yearlyTargetGp) ||
                other.yearlyTargetGp == yearlyTargetGp) &&
            (identical(other.monthlyTargetGp, monthlyTargetGp) ||
                other.monthlyTargetGp == monthlyTargetGp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        location,
        email,
        country,
        state,
        postalcode,
        name,
        description,
        addressOne,
        cityTown,
        inventoryId,
        userId,
        phoneNumber,
        searchName,
        landmark,
        displayName,
        trnNumber,
        dailyGpTarget,
        weeklyTargetGp,
        yearlyTargetGp,
        monthlyTargetGp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminChannelCreateModelCopyWith<_$_AdminChannelCreateModel>
      get copyWith =>
          __$$_AdminChannelCreateModelCopyWithImpl<_$_AdminChannelCreateModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminChannelCreateModelToJson(
      this,
    );
  }
}

abstract class _AdminChannelCreateModel implements AdminChannelCreateModel {
  const factory _AdminChannelCreateModel(
      {final int? id,
      final String? location,
      final String? email,
      final String? country,
      final String? state,
      final String? postalcode,
      final String? name,
      final String? description,
      @JsonKey(name: "address_one") final String? addressOne,
      @JsonKey(name: "city_town") final String? cityTown,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      @JsonKey(name: "search_name") final String? searchName,
      @JsonKey(name: "land_mark") final String? landmark,
      @JsonKey(name: "display_name") final String? displayName,
      @JsonKey(name: "trn_number") final String? trnNumber,
      @JsonKey(name: "daily_gp_target") final double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") final double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") final double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp")
      final double? monthlyTargetGp}) = _$_AdminChannelCreateModel;

  factory _AdminChannelCreateModel.fromJson(Map<String, dynamic> json) =
      _$_AdminChannelCreateModel.fromJson;

  @override
  int? get id;
  @override
  String? get location;
  @override
  String? get email;
  @override
  String? get country;
  @override
  String? get state;
  @override
  String? get postalcode;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: "address_one")
  String? get addressOne;
  @override
  @JsonKey(name: "city_town")
  String? get cityTown;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "search_name")
  String? get searchName;
  @override
  @JsonKey(name: "land_mark")
  String? get landmark;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "daily_gp_target")
  double? get dailyGpTarget;
  @override
  @JsonKey(name: "weekly_targeted_gp")
  double? get weeklyTargetGp;
  @override
  @JsonKey(name: "yearly_targeted_gp")
  double? get yearlyTargetGp;
  @override
  @JsonKey(name: "monthly_targeted_gp")
  double? get monthlyTargetGp;
  @override
  @JsonKey(ignore: true)
  _$$_AdminChannelCreateModelCopyWith<_$_AdminChannelCreateModel>
      get copyWith => throw _privateConstructorUsedError;
}

AdminChannelReadModel _$AdminChannelReadModelFromJson(
    Map<String, dynamic> json) {
  return _AdminChannelReadModel.fromJson(json);
}

/// @nodoc
mixin _$AdminChannelReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalcode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "address_one")
  String? get addressOne => throw _privateConstructorUsedError;
  @JsonKey(name: "city_town")
  String? get cityTown => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_id")
  int? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @JsonKey(name: "land_mark")
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_gp_target")
  double? get dailyGpTarget => throw _privateConstructorUsedError;
  @JsonKey(name: "weekly_targeted_gp")
  double? get weeklyTargetGp => throw _privateConstructorUsedError;
  @JsonKey(name: "yearly_targeted_gp")
  double? get yearlyTargetGp => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_targeted_gp")
  double? get monthlyTargetGp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminChannelReadModelCopyWith<AdminChannelReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminChannelReadModelCopyWith<$Res> {
  factory $AdminChannelReadModelCopyWith(AdminChannelReadModel value,
          $Res Function(AdminChannelReadModel) then) =
      _$AdminChannelReadModelCopyWithImpl<$Res, AdminChannelReadModel>;
  @useResult
  $Res call(
      {int? id,
      String? location,
      String? email,
      String? country,
      String? state,
      String? postalcode,
      String? name,
      String? description,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "city_town") String? cityTown,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_id") int? channelId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "land_mark") String? landmark,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "daily_gp_target") double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") double? monthlyTargetGp});
}

/// @nodoc
class _$AdminChannelReadModelCopyWithImpl<$Res,
        $Val extends AdminChannelReadModel>
    implements $AdminChannelReadModelCopyWith<$Res> {
  _$AdminChannelReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? postalcode = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addressOne = freezed,
    Object? cityTown = freezed,
    Object? channelCode = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
    Object? inventoryId = freezed,
    Object? userId = freezed,
    Object? phoneNumber = freezed,
    Object? searchName = freezed,
    Object? landmark = freezed,
    Object? displayName = freezed,
    Object? trnNumber = freezed,
    Object? dailyGpTarget = freezed,
    Object? weeklyTargetGp = freezed,
    Object? yearlyTargetGp = freezed,
    Object? monthlyTargetGp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalcode: freezed == postalcode
          ? _value.postalcode
          : postalcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTown: freezed == cityTown
          ? _value.cityTown
          : cityTown // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGpTarget: freezed == dailyGpTarget
          ? _value.dailyGpTarget
          : dailyGpTarget // ignore: cast_nullable_to_non_nullable
              as double?,
      weeklyTargetGp: freezed == weeklyTargetGp
          ? _value.weeklyTargetGp
          : weeklyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      yearlyTargetGp: freezed == yearlyTargetGp
          ? _value.yearlyTargetGp
          : yearlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyTargetGp: freezed == monthlyTargetGp
          ? _value.monthlyTargetGp
          : monthlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminChannelReadModelCopyWith<$Res>
    implements $AdminChannelReadModelCopyWith<$Res> {
  factory _$$_AdminChannelReadModelCopyWith(_$_AdminChannelReadModel value,
          $Res Function(_$_AdminChannelReadModel) then) =
      __$$_AdminChannelReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? location,
      String? email,
      String? country,
      String? state,
      String? postalcode,
      String? name,
      String? description,
      @JsonKey(name: "address_one") String? addressOne,
      @JsonKey(name: "city_town") String? cityTown,
      @JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "channel_id") int? channelId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "search_name") String? searchName,
      @JsonKey(name: "land_mark") String? landmark,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "daily_gp_target") double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") double? monthlyTargetGp});
}

/// @nodoc
class __$$_AdminChannelReadModelCopyWithImpl<$Res>
    extends _$AdminChannelReadModelCopyWithImpl<$Res, _$_AdminChannelReadModel>
    implements _$$_AdminChannelReadModelCopyWith<$Res> {
  __$$_AdminChannelReadModelCopyWithImpl(_$_AdminChannelReadModel _value,
      $Res Function(_$_AdminChannelReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? postalcode = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? addressOne = freezed,
    Object? cityTown = freezed,
    Object? channelCode = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
    Object? inventoryId = freezed,
    Object? userId = freezed,
    Object? phoneNumber = freezed,
    Object? searchName = freezed,
    Object? landmark = freezed,
    Object? displayName = freezed,
    Object? trnNumber = freezed,
    Object? dailyGpTarget = freezed,
    Object? weeklyTargetGp = freezed,
    Object? yearlyTargetGp = freezed,
    Object? monthlyTargetGp = freezed,
  }) {
    return _then(_$_AdminChannelReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalcode: freezed == postalcode
          ? _value.postalcode
          : postalcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addressOne: freezed == addressOne
          ? _value.addressOne
          : addressOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cityTown: freezed == cityTown
          ? _value.cityTown
          : cityTown // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyGpTarget: freezed == dailyGpTarget
          ? _value.dailyGpTarget
          : dailyGpTarget // ignore: cast_nullable_to_non_nullable
              as double?,
      weeklyTargetGp: freezed == weeklyTargetGp
          ? _value.weeklyTargetGp
          : weeklyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      yearlyTargetGp: freezed == yearlyTargetGp
          ? _value.yearlyTargetGp
          : yearlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyTargetGp: freezed == monthlyTargetGp
          ? _value.monthlyTargetGp
          : monthlyTargetGp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminChannelReadModel implements _AdminChannelReadModel {
  const _$_AdminChannelReadModel(
      {this.id,
      this.location,
      this.email,
      this.country,
      this.state,
      this.postalcode,
      this.name,
      this.description,
      @JsonKey(name: "address_one") this.addressOne,
      @JsonKey(name: "city_town") this.cityTown,
      @JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_name") this.channelName,
      @JsonKey(name: "channel_id") this.channelId,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "search_name") this.searchName,
      @JsonKey(name: "land_mark") this.landmark,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "daily_gp_target") this.dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") this.weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") this.yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp") this.monthlyTargetGp});

  factory _$_AdminChannelReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminChannelReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? location;
  @override
  final String? email;
  @override
  final String? country;
  @override
  final String? state;
  @override
  final String? postalcode;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: "address_one")
  final String? addressOne;
  @override
  @JsonKey(name: "city_town")
  final String? cityTown;
  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @JsonKey(name: "channel_id")
  final int? channelId;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override
  @JsonKey(name: "land_mark")
  final String? landmark;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "daily_gp_target")
  final double? dailyGpTarget;
  @override
  @JsonKey(name: "weekly_targeted_gp")
  final double? weeklyTargetGp;
  @override
  @JsonKey(name: "yearly_targeted_gp")
  final double? yearlyTargetGp;
  @override
  @JsonKey(name: "monthly_targeted_gp")
  final double? monthlyTargetGp;

  @override
  String toString() {
    return 'AdminChannelReadModel(id: $id, location: $location, email: $email, country: $country, state: $state, postalcode: $postalcode, name: $name, description: $description, addressOne: $addressOne, cityTown: $cityTown, channelCode: $channelCode, channelName: $channelName, channelId: $channelId, inventoryId: $inventoryId, userId: $userId, phoneNumber: $phoneNumber, searchName: $searchName, landmark: $landmark, displayName: $displayName, trnNumber: $trnNumber, dailyGpTarget: $dailyGpTarget, weeklyTargetGp: $weeklyTargetGp, yearlyTargetGp: $yearlyTargetGp, monthlyTargetGp: $monthlyTargetGp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminChannelReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalcode, postalcode) ||
                other.postalcode == postalcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addressOne, addressOne) ||
                other.addressOne == addressOne) &&
            (identical(other.cityTown, cityTown) ||
                other.cityTown == cityTown) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.dailyGpTarget, dailyGpTarget) ||
                other.dailyGpTarget == dailyGpTarget) &&
            (identical(other.weeklyTargetGp, weeklyTargetGp) ||
                other.weeklyTargetGp == weeklyTargetGp) &&
            (identical(other.yearlyTargetGp, yearlyTargetGp) ||
                other.yearlyTargetGp == yearlyTargetGp) &&
            (identical(other.monthlyTargetGp, monthlyTargetGp) ||
                other.monthlyTargetGp == monthlyTargetGp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        location,
        email,
        country,
        state,
        postalcode,
        name,
        description,
        addressOne,
        cityTown,
        channelCode,
        channelName,
        channelId,
        inventoryId,
        userId,
        phoneNumber,
        searchName,
        landmark,
        displayName,
        trnNumber,
        dailyGpTarget,
        weeklyTargetGp,
        yearlyTargetGp,
        monthlyTargetGp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminChannelReadModelCopyWith<_$_AdminChannelReadModel> get copyWith =>
      __$$_AdminChannelReadModelCopyWithImpl<_$_AdminChannelReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminChannelReadModelToJson(
      this,
    );
  }
}

abstract class _AdminChannelReadModel implements AdminChannelReadModel {
  const factory _AdminChannelReadModel(
      {final int? id,
      final String? location,
      final String? email,
      final String? country,
      final String? state,
      final String? postalcode,
      final String? name,
      final String? description,
      @JsonKey(name: "address_one") final String? addressOne,
      @JsonKey(name: "city_town") final String? cityTown,
      @JsonKey(name: "channel_code") final String? channelCode,
      @JsonKey(name: "channel_name") final String? channelName,
      @JsonKey(name: "channel_id") final int? channelId,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      @JsonKey(name: "search_name") final String? searchName,
      @JsonKey(name: "land_mark") final String? landmark,
      @JsonKey(name: "display_name") final String? displayName,
      @JsonKey(name: "trn_number") final String? trnNumber,
      @JsonKey(name: "daily_gp_target") final double? dailyGpTarget,
      @JsonKey(name: "weekly_targeted_gp") final double? weeklyTargetGp,
      @JsonKey(name: "yearly_targeted_gp") final double? yearlyTargetGp,
      @JsonKey(name: "monthly_targeted_gp")
      final double? monthlyTargetGp}) = _$_AdminChannelReadModel;

  factory _AdminChannelReadModel.fromJson(Map<String, dynamic> json) =
      _$_AdminChannelReadModel.fromJson;

  @override
  int? get id;
  @override
  String? get location;
  @override
  String? get email;
  @override
  String? get country;
  @override
  String? get state;
  @override
  String? get postalcode;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: "address_one")
  String? get addressOne;
  @override
  @JsonKey(name: "city_town")
  String? get cityTown;
  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName;
  @override
  @JsonKey(name: "channel_id")
  int? get channelId;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "search_name")
  String? get searchName;
  @override
  @JsonKey(name: "land_mark")
  String? get landmark;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "daily_gp_target")
  double? get dailyGpTarget;
  @override
  @JsonKey(name: "weekly_targeted_gp")
  double? get weeklyTargetGp;
  @override
  @JsonKey(name: "yearly_targeted_gp")
  double? get yearlyTargetGp;
  @override
  @JsonKey(name: "monthly_targeted_gp")
  double? get monthlyTargetGp;
  @override
  @JsonKey(ignore: true)
  _$$_AdminChannelReadModelCopyWith<_$_AdminChannelReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserEmployeeListModel _$UserEmployeeListModelFromJson(
    Map<String, dynamic> json) {
  return _UserEmployeeListModel.fromJson(json);
}

/// @nodoc
mixin _$UserEmployeeListModel {
  int? get id => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  String? get fname => throw _privateConstructorUsedError;
  String? get lname => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_mail")
  String? get primaryMail => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_mobile")
  String? get primaryMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: "date_joined")
  String? get dateJoined => throw _privateConstructorUsedError;
  @JsonKey(name: "role_name")
  String? get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_code")
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "organization_type")
  String? get organizationType => throw _privateConstructorUsedError;
  @JsonKey(name: "organization_code")
  String? get organizationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_mobile_no")
  String? get alternativeMobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_email")
  String? get alternativeEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "legalentity_code")
  String? get legalengtityCode => throw _privateConstructorUsedError;
  @JsonKey(name: "acess_site")
  String? get accessSite => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_login")
  int? get userLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEmployeeListModelCopyWith<UserEmployeeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmployeeListModelCopyWith<$Res> {
  factory $UserEmployeeListModelCopyWith(UserEmployeeListModel value,
          $Res Function(UserEmployeeListModel) then) =
      _$UserEmployeeListModelCopyWithImpl<$Res, UserEmployeeListModel>;
  @useResult
  $Res call(
      {int? id,
      int? role,
      String? fname,
      String? lname,
      String? gender,
      String? country,
      String? designation,
      @JsonKey(name: "primary_mail") String? primaryMail,
      @JsonKey(name: "primary_mobile") String? primaryMobile,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "date_joined") String? dateJoined,
      @JsonKey(name: "role_name") String? roleName,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "organization_type") String? organizationType,
      @JsonKey(name: "organization_code") String? organizationCode,
      @JsonKey(name: "alternative_mobile_no") String? alternativeMobileNumber,
      @JsonKey(name: "alternative_email") String? alternativeEmail,
      @JsonKey(name: "legalentity_code") String? legalengtityCode,
      @JsonKey(name: "acess_site") String? accessSite,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "user_login") int? userLogin,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$UserEmployeeListModelCopyWithImpl<$Res,
        $Val extends UserEmployeeListModel>
    implements $UserEmployeeListModelCopyWith<$Res> {
  _$UserEmployeeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? designation = freezed,
    Object? primaryMail = freezed,
    Object? primaryMobile = freezed,
    Object? profilePic = freezed,
    Object? dateJoined = freezed,
    Object? roleName = freezed,
    Object? employeeCode = freezed,
    Object? organizationType = freezed,
    Object? organizationCode = freezed,
    Object? alternativeMobileNumber = freezed,
    Object? alternativeEmail = freezed,
    Object? legalengtityCode = freezed,
    Object? accessSite = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryMail: freezed == primaryMail
          ? _value.primaryMail
          : primaryMail // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryMobile: freezed == primaryMobile
          ? _value.primaryMobile
          : primaryMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationType: freezed == organizationType
          ? _value.organizationType
          : organizationType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeMobileNumber: freezed == alternativeMobileNumber
          ? _value.alternativeMobileNumber
          : alternativeMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeEmail: freezed == alternativeEmail
          ? _value.alternativeEmail
          : alternativeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      legalengtityCode: freezed == legalengtityCode
          ? _value.legalengtityCode
          : legalengtityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accessSite: freezed == accessSite
          ? _value.accessSite
          : accessSite // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEmployeeListModelCopyWith<$Res>
    implements $UserEmployeeListModelCopyWith<$Res> {
  factory _$$_UserEmployeeListModelCopyWith(_$_UserEmployeeListModel value,
          $Res Function(_$_UserEmployeeListModel) then) =
      __$$_UserEmployeeListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? role,
      String? fname,
      String? lname,
      String? gender,
      String? country,
      String? designation,
      @JsonKey(name: "primary_mail") String? primaryMail,
      @JsonKey(name: "primary_mobile") String? primaryMobile,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "date_joined") String? dateJoined,
      @JsonKey(name: "role_name") String? roleName,
      @JsonKey(name: "employee_code") String? employeeCode,
      @JsonKey(name: "organization_type") String? organizationType,
      @JsonKey(name: "organization_code") String? organizationCode,
      @JsonKey(name: "alternative_mobile_no") String? alternativeMobileNumber,
      @JsonKey(name: "alternative_email") String? alternativeEmail,
      @JsonKey(name: "legalentity_code") String? legalengtityCode,
      @JsonKey(name: "acess_site") String? accessSite,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "user_login") int? userLogin,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_UserEmployeeListModelCopyWithImpl<$Res>
    extends _$UserEmployeeListModelCopyWithImpl<$Res, _$_UserEmployeeListModel>
    implements _$$_UserEmployeeListModelCopyWith<$Res> {
  __$$_UserEmployeeListModelCopyWithImpl(_$_UserEmployeeListModel _value,
      $Res Function(_$_UserEmployeeListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? fname = freezed,
    Object? lname = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? designation = freezed,
    Object? primaryMail = freezed,
    Object? primaryMobile = freezed,
    Object? profilePic = freezed,
    Object? dateJoined = freezed,
    Object? roleName = freezed,
    Object? employeeCode = freezed,
    Object? organizationType = freezed,
    Object? organizationCode = freezed,
    Object? alternativeMobileNumber = freezed,
    Object? alternativeEmail = freezed,
    Object? legalengtityCode = freezed,
    Object? accessSite = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_UserEmployeeListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      fname: freezed == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String?,
      lname: freezed == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryMail: freezed == primaryMail
          ? _value.primaryMail
          : primaryMail // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryMobile: freezed == primaryMobile
          ? _value.primaryMobile
          : primaryMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationType: freezed == organizationType
          ? _value.organizationType
          : organizationType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeMobileNumber: freezed == alternativeMobileNumber
          ? _value.alternativeMobileNumber
          : alternativeMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeEmail: freezed == alternativeEmail
          ? _value.alternativeEmail
          : alternativeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      legalengtityCode: freezed == legalengtityCode
          ? _value.legalengtityCode
          : legalengtityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accessSite: freezed == accessSite
          ? _value.accessSite
          : accessSite // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEmployeeListModel implements _UserEmployeeListModel {
  const _$_UserEmployeeListModel(
      {this.id,
      this.role,
      this.fname,
      this.lname,
      this.gender,
      this.country,
      this.designation,
      @JsonKey(name: "primary_mail") this.primaryMail,
      @JsonKey(name: "primary_mobile") this.primaryMobile,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "date_joined") this.dateJoined,
      @JsonKey(name: "role_name") this.roleName,
      @JsonKey(name: "employee_code") this.employeeCode,
      @JsonKey(name: "organization_type") this.organizationType,
      @JsonKey(name: "organization_code") this.organizationCode,
      @JsonKey(name: "alternative_mobile_no") this.alternativeMobileNumber,
      @JsonKey(name: "alternative_email") this.alternativeEmail,
      @JsonKey(name: "legalentity_code") this.legalengtityCode,
      @JsonKey(name: "acess_site") this.accessSite,
      @JsonKey(name: "user_name") this.userName,
      @JsonKey(name: "user_login") this.userLogin,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_UserEmployeeListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserEmployeeListModelFromJson(json);

  @override
  final int? id;
  @override
  final int? role;
  @override
  final String? fname;
  @override
  final String? lname;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  final String? designation;
  @override
  @JsonKey(name: "primary_mail")
  final String? primaryMail;
  @override
  @JsonKey(name: "primary_mobile")
  final String? primaryMobile;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "date_joined")
  final String? dateJoined;
  @override
  @JsonKey(name: "role_name")
  final String? roleName;
  @override
  @JsonKey(name: "employee_code")
  final String? employeeCode;
  @override
  @JsonKey(name: "organization_type")
  final String? organizationType;
  @override
  @JsonKey(name: "organization_code")
  final String? organizationCode;
  @override
  @JsonKey(name: "alternative_mobile_no")
  final String? alternativeMobileNumber;
  @override
  @JsonKey(name: "alternative_email")
  final String? alternativeEmail;
  @override
  @JsonKey(name: "legalentity_code")
  final String? legalengtityCode;
  @override
  @JsonKey(name: "acess_site")
  final String? accessSite;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "user_login")
  final int? userLogin;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'UserEmployeeListModel(id: $id, role: $role, fname: $fname, lname: $lname, gender: $gender, country: $country, designation: $designation, primaryMail: $primaryMail, primaryMobile: $primaryMobile, profilePic: $profilePic, dateJoined: $dateJoined, roleName: $roleName, employeeCode: $employeeCode, organizationType: $organizationType, organizationCode: $organizationCode, alternativeMobileNumber: $alternativeMobileNumber, alternativeEmail: $alternativeEmail, legalengtityCode: $legalengtityCode, accessSite: $accessSite, userName: $userName, userLogin: $userLogin, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEmployeeListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.primaryMail, primaryMail) ||
                other.primaryMail == primaryMail) &&
            (identical(other.primaryMobile, primaryMobile) ||
                other.primaryMobile == primaryMobile) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.organizationType, organizationType) ||
                other.organizationType == organizationType) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(
                    other.alternativeMobileNumber, alternativeMobileNumber) ||
                other.alternativeMobileNumber == alternativeMobileNumber) &&
            (identical(other.alternativeEmail, alternativeEmail) ||
                other.alternativeEmail == alternativeEmail) &&
            (identical(other.legalengtityCode, legalengtityCode) ||
                other.legalengtityCode == legalengtityCode) &&
            (identical(other.accessSite, accessSite) ||
                other.accessSite == accessSite) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        fname,
        lname,
        gender,
        country,
        designation,
        primaryMail,
        primaryMobile,
        profilePic,
        dateJoined,
        roleName,
        employeeCode,
        organizationType,
        organizationCode,
        alternativeMobileNumber,
        alternativeEmail,
        legalengtityCode,
        accessSite,
        userName,
        userLogin,
        isActive
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEmployeeListModelCopyWith<_$_UserEmployeeListModel> get copyWith =>
      __$$_UserEmployeeListModelCopyWithImpl<_$_UserEmployeeListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEmployeeListModelToJson(
      this,
    );
  }
}

abstract class _UserEmployeeListModel implements UserEmployeeListModel {
  const factory _UserEmployeeListModel(
      {final int? id,
      final int? role,
      final String? fname,
      final String? lname,
      final String? gender,
      final String? country,
      final String? designation,
      @JsonKey(name: "primary_mail") final String? primaryMail,
      @JsonKey(name: "primary_mobile") final String? primaryMobile,
      @JsonKey(name: "profile_pic") final String? profilePic,
      @JsonKey(name: "date_joined") final String? dateJoined,
      @JsonKey(name: "role_name") final String? roleName,
      @JsonKey(name: "employee_code") final String? employeeCode,
      @JsonKey(name: "organization_type") final String? organizationType,
      @JsonKey(name: "organization_code") final String? organizationCode,
      @JsonKey(name: "alternative_mobile_no")
      final String? alternativeMobileNumber,
      @JsonKey(name: "alternative_email") final String? alternativeEmail,
      @JsonKey(name: "legalentity_code") final String? legalengtityCode,
      @JsonKey(name: "acess_site") final String? accessSite,
      @JsonKey(name: "user_name") final String? userName,
      @JsonKey(name: "user_login") final int? userLogin,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_UserEmployeeListModel;

  factory _UserEmployeeListModel.fromJson(Map<String, dynamic> json) =
      _$_UserEmployeeListModel.fromJson;

  @override
  int? get id;
  @override
  int? get role;
  @override
  String? get fname;
  @override
  String? get lname;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  String? get designation;
  @override
  @JsonKey(name: "primary_mail")
  String? get primaryMail;
  @override
  @JsonKey(name: "primary_mobile")
  String? get primaryMobile;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(name: "date_joined")
  String? get dateJoined;
  @override
  @JsonKey(name: "role_name")
  String? get roleName;
  @override
  @JsonKey(name: "employee_code")
  String? get employeeCode;
  @override
  @JsonKey(name: "organization_type")
  String? get organizationType;
  @override
  @JsonKey(name: "organization_code")
  String? get organizationCode;
  @override
  @JsonKey(name: "alternative_mobile_no")
  String? get alternativeMobileNumber;
  @override
  @JsonKey(name: "alternative_email")
  String? get alternativeEmail;
  @override
  @JsonKey(name: "legalentity_code")
  String? get legalengtityCode;
  @override
  @JsonKey(name: "acess_site")
  String? get accessSite;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "user_login")
  int? get userLogin;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_UserEmployeeListModelCopyWith<_$_UserEmployeeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelUserCountModel _$ChannelUserCountModelFromJson(
    Map<String, dynamic> json) {
  return _ChannelUserCountModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelUserCountModel {
  int? get channels => throw _privateConstructorUsedError;
  int? get employees => throw _privateConstructorUsedError;
  int? get directores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelUserCountModelCopyWith<ChannelUserCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelUserCountModelCopyWith<$Res> {
  factory $ChannelUserCountModelCopyWith(ChannelUserCountModel value,
          $Res Function(ChannelUserCountModel) then) =
      _$ChannelUserCountModelCopyWithImpl<$Res, ChannelUserCountModel>;
  @useResult
  $Res call({int? channels, int? employees, int? directores});
}

/// @nodoc
class _$ChannelUserCountModelCopyWithImpl<$Res,
        $Val extends ChannelUserCountModel>
    implements $ChannelUserCountModelCopyWith<$Res> {
  _$ChannelUserCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? employees = freezed,
    Object? directores = freezed,
  }) {
    return _then(_value.copyWith(
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      employees: freezed == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as int?,
      directores: freezed == directores
          ? _value.directores
          : directores // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelUserCountModelCopyWith<$Res>
    implements $ChannelUserCountModelCopyWith<$Res> {
  factory _$$_ChannelUserCountModelCopyWith(_$_ChannelUserCountModel value,
          $Res Function(_$_ChannelUserCountModel) then) =
      __$$_ChannelUserCountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? channels, int? employees, int? directores});
}

/// @nodoc
class __$$_ChannelUserCountModelCopyWithImpl<$Res>
    extends _$ChannelUserCountModelCopyWithImpl<$Res, _$_ChannelUserCountModel>
    implements _$$_ChannelUserCountModelCopyWith<$Res> {
  __$$_ChannelUserCountModelCopyWithImpl(_$_ChannelUserCountModel _value,
      $Res Function(_$_ChannelUserCountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? employees = freezed,
    Object? directores = freezed,
  }) {
    return _then(_$_ChannelUserCountModel(
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      employees: freezed == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as int?,
      directores: freezed == directores
          ? _value.directores
          : directores // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelUserCountModel implements _ChannelUserCountModel {
  const _$_ChannelUserCountModel(
      {this.channels, this.employees, this.directores});

  factory _$_ChannelUserCountModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelUserCountModelFromJson(json);

  @override
  final int? channels;
  @override
  final int? employees;
  @override
  final int? directores;

  @override
  String toString() {
    return 'ChannelUserCountModel(channels: $channels, employees: $employees, directores: $directores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelUserCountModel &&
            (identical(other.channels, channels) ||
                other.channels == channels) &&
            (identical(other.employees, employees) ||
                other.employees == employees) &&
            (identical(other.directores, directores) ||
                other.directores == directores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channels, employees, directores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelUserCountModelCopyWith<_$_ChannelUserCountModel> get copyWith =>
      __$$_ChannelUserCountModelCopyWithImpl<_$_ChannelUserCountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelUserCountModelToJson(
      this,
    );
  }
}

abstract class _ChannelUserCountModel implements ChannelUserCountModel {
  const factory _ChannelUserCountModel(
      {final int? channels,
      final int? employees,
      final int? directores}) = _$_ChannelUserCountModel;

  factory _ChannelUserCountModel.fromJson(Map<String, dynamic> json) =
      _$_ChannelUserCountModel.fromJson;

  @override
  int? get channels;
  @override
  int? get employees;
  @override
  int? get directores;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelUserCountModelCopyWith<_$_ChannelUserCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
