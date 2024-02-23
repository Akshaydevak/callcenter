import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'approval_list_callecentere_tab_state.dart';
part 'approval_list_callecentere_tab_cubit.freezed.dart';

class ApprovalListCallecentereTabCubit extends Cubit<ApprovalListCallecentereTabState> {
  ApprovalListCallecentereTabCubit() : super( ApprovalListCallecentereTabState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  dynamic? dynamicData;
  Future getApproveList() async {
    emit( ApprovalListCallecentereTabState.initial());
    final result = await _repos.getApproveList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      dynamicData=r.dynamicData;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit( ApprovalListCallecentereTabState.initial());
    getApproveList();
  }

  Future nextslotSectionPageList(String type,) async {
    final result = await _repos.getApproveList(type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchApproveList(String code) async {
    final result = await _repos.getApproveList("&element=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }

  Future getApproveListByType(String type) async {
    emit( ApprovalListCallecentereTabState.initial());
    final result = await _repos.getApproveListByType(type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }










}
