import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'admin_channel_create_state.dart';
part 'admin_channel_create_cubit.freezed.dart';
class AdminChannelCreateCubit extends Cubit<AdminChannelCreateState> {
  AdminChannelCreateCubit() : super(AdminChannelCreateState.initial() );
  final salesappRepository repo = salesappRepoImpl();

  Future postAdminCahnnelCreate(AdminChannelCreateModel model) async {
    emit(AdminChannelCreateState.initial() );
    final result = await repo.postAdminCahnnelCreate(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future postAdminChannelUpdate( String code,AdminChannelCreateModel model) async {
emit(AdminChannelCreateState.initial() );
    final result = await repo.postAdminChannelUpdate(code,model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
