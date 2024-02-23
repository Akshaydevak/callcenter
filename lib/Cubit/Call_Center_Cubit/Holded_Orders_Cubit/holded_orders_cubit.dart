import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'holded_orders_state.dart';
part 'holded_orders_cubit.freezed.dart';

class HoldedOrdersCubit extends Cubit<HoldedOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  HoldedOrdersCubit() : super(HoldedOrdersState.initial());
  Future getHoldedOrdersList() async {
    emit(HoldedOrdersState.initial());
    final result = await _repos.getHoldedOrdersList();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(HoldedOrdersState.initial());
    getHoldedOrdersList();
  }
  Future getSearchHoldedOrders(String element) async {
    final result = await _repos.getSearchHoldedOrders("element="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(int val) async {
    emit(HoldedOrdersState.initial());
    final result = await _repos.getSearchHoldedOrders("page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
}
