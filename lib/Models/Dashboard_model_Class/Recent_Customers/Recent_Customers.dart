import 'package:freezed_annotation/freezed_annotation.dart';

part 'Recent_Customers.freezed.dart';
part 'Recent_Customers.g.dart';
@freezed
class RecentCustomers with _$RecentCustomers{
  const factory RecentCustomers({

    final int? id,
    @JsonKey(name: "username")final String? userName,
    @JsonKey(name: "email")final String? email,
    @JsonKey(name: "customer_usercode")final String? customerUserCode,
    @JsonKey(name: "profile_pic")final String? profilePic,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "date_joined")final String? dateJoined,
  })=_RecentCustomers;
  factory RecentCustomers.fromJson(Map<String,dynamic>json)=>
      _$RecentCustomersFromJson(json);
}