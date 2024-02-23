part of 'admin_user_read_cubit.dart';


@freezed
class AdminUserReadState with _$AdminUserReadState {
const factory AdminUserReadState.initial() = _Initial;
const factory AdminUserReadState.loading() = _Loading;
const factory AdminUserReadState.error() = _Error;
const factory AdminUserReadState.success(AdminUserReadModel data) =_Success;

}
