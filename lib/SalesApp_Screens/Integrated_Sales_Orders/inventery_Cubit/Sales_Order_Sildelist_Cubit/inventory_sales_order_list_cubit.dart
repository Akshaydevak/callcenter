import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../Datas/repositorys.dart';
import '../../../../Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import '../../../../utils/response_utils.dart';

part 'inventory_sales_order_list_state.dart';
part 'inventory_sales_order_list_cubit.freezed.dart';

class InventorySalesOrderListCubit extends Cubit<InventorySalesOrderListState> {
  final salesappRepository _repos = salesappRepoImpl();
  InventorySalesOrderListCubit() : super(InventorySalesOrderListState.initial());
  String? next;
  String? previous;
  List<SalesGeneralList>? items = [];
  Future getSalesSidelist() async {
    next = null;
    previous = null;
    emit(InventorySalesOrderListState.initial());
    final result = await _repos.getSalesSidelist(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(InventorySalesOrderListState.initial());
    getSalesSidelist();
  }
  Future getSearch(String code) async {
    final result = await _repos.getSalesList("?code=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
