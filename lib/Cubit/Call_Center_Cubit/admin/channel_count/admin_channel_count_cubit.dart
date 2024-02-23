import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';

part 'admin_channel_count_state.dart';
part 'admin_channel_count_cubit.freezed.dart';

class AdminChannelCountCubit extends Cubit<AdminChannelCountState> {
  AdminChannelCountCubit() : super(AdminChannelCountState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future getAdminChannelCount() async {
    emit(AdminChannelCountState.initial());
    final result = await _repos.getAdminChannelCount();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
