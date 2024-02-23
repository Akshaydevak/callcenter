import 'package:freezed_annotation/freezed_annotation.dart';

part 'SignUp.freezed.dart';
part 'SignUp.g.dart';

@freezed
class SignUpData with _$SignUpData{
  const factory SignUpData({
    @JsonKey(name: "fname")final String? firstName,
    @JsonKey(name: "lname")final String? lastName,
    @JsonKey(name: "gender")final String? gender,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "mobile")final String? mobile,
    @JsonKey(name: "password")final String? password,
    @JsonKey(name: "email")final String? email,
    @JsonKey(name: "token")final String? token,
    @JsonKey(name: "legal_entiry")final String? legalEntity,
    @JsonKey(name: "organization_code")final String? orgCode,
    @JsonKey(name: "acess_site")final String? acessSite,
    @JsonKey(name: "isLoggedIn",defaultValue: false) final bool? isLoggedIn,
})= _SignUpData;
  factory SignUpData.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataFromJson(json);
}


@freezed
class SignInData with _$SignInData{
  const factory SignInData({
    @JsonKey(name: "user_name")final String? userName,
    @JsonKey(name: "password")final String? password,

  })= _SignInData;
  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}

