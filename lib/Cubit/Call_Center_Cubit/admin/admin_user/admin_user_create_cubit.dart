import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'admin_user_create_state.dart';
part 'admin_user_create_cubit.freezed.dart';

class AdminUserCreateCubit extends Cubit<AdminUserCreateState> {
  AdminUserCreateCubit() : super(AdminUserCreateState.initial());
  final salesappRepository repo = salesappRepoImpl();

  Future postAdminUserCreate(AdminCreationModel model) async {

    print("customer create print");
    final result = await repo.postAdminUserCreate(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future postAdminUserUpdate(AdminCreationModel model) async {

    final result = await repo.postAdminUserUpdate(model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
