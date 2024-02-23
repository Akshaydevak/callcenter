import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';

part 'admin_user_read_state.dart';
part 'admin_user_read_cubit.freezed.dart';

class AdminUserReadCubit extends Cubit<AdminUserReadState> {
  AdminUserReadCubit() : super(AdminUserReadState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future getAdminUserReadRead(String  code) async {
    emit(AdminUserReadState.initial());
    final result = await _repos.getAdminUserReadRead(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
