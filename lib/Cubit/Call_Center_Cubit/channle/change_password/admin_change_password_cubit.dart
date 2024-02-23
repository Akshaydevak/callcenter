import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'admin_change_password_state.dart';
part 'admin_change_password_cubit.freezed.dart';

class AdminChangePasswordCubit extends Cubit<AdminChangePasswordState> {
  AdminChangePasswordCubit() : super(AdminChangePasswordState.initial());
  final salesappRepository repo = salesappRepoImpl();

  Future changePasswordEmployee(String  userName,String password) async {
emit(AdminChangePasswordState.initial());
    final result = await repo.changePasswordEmployee(userName,password);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
