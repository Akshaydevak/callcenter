import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'negotation_list_state.dart';
part 'negotation_list_cubit.freezed.dart';

class NegotationListCubit extends Cubit<NegotationListState> {
  final salesappRepository _repos = salesappRepoImpl();
  NegotationListCubit() : super(NegotationListState.initial());
  String? prev;
  String? next;
  Future getNegotationList(String id) async {
    emit(NegotationListState.initial());
    final result = await _repos.getNegotationList(id,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(NegotationListState.initial());
    getNegotationList("");
  }

  Future nextslotSectionPageList(String id,) async {
    final result = await _repos.getNegotationList(id,"?$next"??"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future previuosslotSectionPageList(String id,) async {
    final result = await _repos.getNegotationList(id,"?$prev"??"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future searchNegotiationList(String id,String code) async {
    final result = await _repos.getNegotationList(id,"?name=$code");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
