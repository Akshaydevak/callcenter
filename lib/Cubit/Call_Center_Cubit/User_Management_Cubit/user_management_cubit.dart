import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';

part 'user_management_state.dart';
part 'user_management_cubit.freezed.dart';

class UserManagementCubit extends Cubit<UserManagementState> {
  final salesappRepository _repos = salesappRepoImpl();
  UserManagementCubit() : super(UserManagementState.initial());


  Future getSearchUserManage(String search) async {
    emit(UserManagementState.initial());
    final result = await _repos.getSearchUserManage(search);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
