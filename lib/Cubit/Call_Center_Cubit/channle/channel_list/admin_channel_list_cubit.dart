import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'admin_channel_list_state.dart';
part 'admin_channel_list_cubit.freezed.dart';

class AdminChannelListCubit extends Cubit<AdminChannelListState> {
  AdminChannelListCubit() : super(AdminChannelListState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  Future adminChannelList() async {
    emit(AdminChannelListState.initial());
    final result = await _repos.adminChannelList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(AdminChannelListState.initial());
    adminChannelList();
  }

  Future nextslotSectionPageList(String type,) async {
    final result = await _repos.adminChannelList(type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchAdminChannelList(String code) async {
    final result = await _repos.adminChannelList("&search_key=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }



}
