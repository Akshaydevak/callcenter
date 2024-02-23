import 'package:freezed_annotation/freezed_annotation.dart';

part 'Assign_Org_List.freezed.dart';
part 'Assign_Org_List.g.dart';

@freezed
class OrgList with _$OrgList{
  const factory OrgList({
    final int? id,
    final String? code,
    final String? name,
    @JsonKey(name: "organization_code")final String? orgCode,
  })=_OrgList;
  factory OrgList.fromJson(Map<String, dynamic> json) =>
      _$OrgListFromJson(json);
}