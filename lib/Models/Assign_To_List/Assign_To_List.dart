import 'package:freezed_annotation/freezed_annotation.dart';

part 'Assign_To_List.freezed.dart';
part 'Assign_To_List.g.dart';

@freezed
class AssignToList with _$AssignToList{
  const factory AssignToList({
    final int? id,
    @JsonKey(name: "customer_usercode")final String? customerUserCode
})=_AssignToList;
  factory AssignToList.fromJson(Map<String, dynamic> json) =>
      _$AssignToListFromJson(json);
}