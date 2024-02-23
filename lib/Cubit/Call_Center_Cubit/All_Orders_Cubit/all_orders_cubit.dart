import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/All_Orders_Tables/All_Orders.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'all_orders_state.dart';
part 'all_orders_cubit.freezed.dart';

class AllOrdersCubit extends Cubit<AllOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  AllOrdersCubit() : super(AllOrdersState.initial());
  String? prev;
  String? next;
  Future getAllOrdersList() async {
    emit(AllOrdersState.initial());
    final result = await _repos.getAllOrdersList();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(AllOrdersState.initial());
    getAllOrdersList();
  }
  Future getSearchAllOrders(String element) async {
    final result = await _repos.getSearchAllOrders("element="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(int val) async {
    final result = await _repos.getSearchAllOrders("page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future previuosslotSectionPageList() async {
    print("previouaaaaaaaaaaaas$prev");
    final result = await _repos.getSearchAllOrders(prev??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
}
