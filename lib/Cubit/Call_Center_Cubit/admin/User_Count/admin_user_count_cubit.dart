import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';

part 'admin_user_count_state.dart';
part 'admin_user_count_cubit.freezed.dart';

class AdminUserCountCubit extends Cubit<AdminUserCountState> {
  AdminUserCountCubit() : super(AdminUserCountState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future getAdminUserCount() async {
    emit(AdminUserCountState.initial());
    final result = await _repos.getAdminUserCount();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
