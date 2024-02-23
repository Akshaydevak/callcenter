import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'admin_channel_delete_state.dart';
part 'admin_channel_delete_cubit.freezed.dart';

class AdminChannelDeleteCubit extends Cubit<AdminChannelDeleteState> {
  AdminChannelDeleteCubit() : super(AdminChannelDeleteState.initial());
  final salesappRepository repo = salesappRepoImpl();

  Future deleteAdminCahnnel(String code) async {
    emit(AdminChannelDeleteState.initial());

    final result = await repo.deleteAdminCahnnel(code);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
