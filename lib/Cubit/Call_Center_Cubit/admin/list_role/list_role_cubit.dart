import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'list_role_state.dart';
part 'list_role_cubit.freezed.dart';

class ListRoleCubit extends Cubit<ListRoleState> {
  ListRoleCubit() : super(ListRoleState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  Future roleTypeList(String type) async {
    emit(ListRoleState.initial());
    final result = await _repos.roleTypeList(type,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(ListRoleState.initial());
    roleTypeList("");
  }

  Future nextslotSectionPageList(String type,) async {
    final result = await _repos.roleTypeList(type,next??"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchRoleTypeList(String type,String code) async {
    final result = await _repos.roleTypeList(type,"?name=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
