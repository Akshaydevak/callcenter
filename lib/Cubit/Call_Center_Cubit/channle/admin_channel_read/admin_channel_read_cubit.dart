import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';

part 'admin_channel_read_state.dart';
part 'admin_channel_read_cubit.freezed.dart';

class AdminChannelReadCubit extends Cubit<AdminChannelReadState> {
  AdminChannelReadCubit() : super(AdminChannelReadState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future getAdminChannlReadRead(String  code) async {
    emit(AdminChannelReadState.initial());
    final result = await _repos.getAdminChannlReadRead(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
