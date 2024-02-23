import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'employee_list_state.dart';
part 'employee_list_cubit.freezed.dart';

class EmployeeListCubit extends Cubit<EmployeeListState> {
  EmployeeListCubit() : super(EmployeeListState.initial());

  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  Future adminEmployeeList() async {
    emit(EmployeeListState.initial());
    final result = await _repos.adminEmployeeList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(EmployeeListState.initial());
    adminEmployeeList();
  }

  Future nextslotSectionPageList(String type,) async {
    final result = await _repos.adminEmployeeList(type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchAdminEmployeeList(String code) async {
    final result = await _repos.adminEmployeeList("?search_key=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }




}
