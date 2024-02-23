import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'invoice_order_state.dart';
part 'invoice_order_cubit.freezed.dart';

class InvoiceOrderCubit extends Cubit<InvoiceOrderState> {
  final salesappRepository _repos = salesappRepoImpl();
  InvoiceOrderCubit() : super(InvoiceOrderState.initial());
  String? prev;
  String? next;
  Future getInvoiceOrderList() async {
    print("at cubit");

    final result = await _repos.getInvoiceOrderList();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(InvoiceOrderState.initial());
    getInvoiceOrderList();
  }
  Future getSearchAllOrders(String element) async {
    final result = await _repos.getSearchInvoice("element="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(int val) async {
    emit(InvoiceOrderState.initial());
    final result = await _repos.getSearchInvoice("page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }
  Future previuosslotSectionPageList() async {
    print("previouaaaaaaaaaaaas$prev");
    final result = await _repos.getSearchInvoice(prev??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
}
