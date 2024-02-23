import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'approve_cart_list_state.dart';
part 'approve_cart_list_cubit.freezed.dart';

class ApproveCartListCubit extends Cubit<ApproveCartListState> {
  ApproveCartListCubit() : super(ApproveCartListState.initial());

  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  dynamic? dynamicData;
  Future getApproveCartList(String code) async {
    emit(ApproveCartListState.initial());
    final result = await _repos.getApproveCartList(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      dynamicData=r.dynamicData;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(ApproveCartListState.initial());
    getApproveCartList("");
  }

  Future nextslotSectionPageList(String type,) async {
    final result = await _repos.getApproveCartList(type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchApproveCartList(String code) async {
    final result = await _repos.getApproveCartList("$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
