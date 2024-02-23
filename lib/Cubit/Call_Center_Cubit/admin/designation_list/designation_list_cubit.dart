import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'designation_list_state.dart';
part 'designation_list_cubit.freezed.dart';

class DesignationListCubit extends Cubit<DesignationListState> {
  DesignationListCubit() : super(DesignationListState.initial() );

  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  Future designationList() async {
    emit(DesignationListState.initial() );
    final result = await _repos.designationList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(DesignationListState.initial() );
    designationList;
  }

  Future nextslotSectionPageList() async {
    final result = await _repos.designationList(next??"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchDesignationList(String code) async {
    final result = await _repos.designationList("?name=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
