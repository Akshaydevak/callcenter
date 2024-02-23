import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'success_orders_state.dart';
part 'success_orders_cubit.freezed.dart';

class SuccessOrdersCubit extends Cubit<SuccessOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  SuccessOrdersCubit() : super(SuccessOrdersState.initial());
  String? prev;
  String? next;
  Future getSuccessOrdersList() async {
    emit(SuccessOrdersState.initial());
    final result = await _repos.getSuccessOrdersList();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(SuccessOrdersState.initial());
    getSuccessOrdersList();
  }
  Future getSearchSuccessOrders(String element) async {
    final result = await _repos.getSearchSuccessOrders("element="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(int val) async {
    final result = await _repos.getSearchSuccessOrders("page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
