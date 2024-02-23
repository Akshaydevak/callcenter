import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'payment_process_list_state.dart';
part 'payment_process_list_cubit.freezed.dart';

class PaymentProcessListCubit extends Cubit<PaymentProcessListState> {
  final salesappRepository _repos = salesappRepoImpl();
  PaymentProcessListCubit() : super(PaymentProcessListState.initial());
  String? next;
  String? previous;
  List<PaymentProcessList>? items = [];
  Future getPaymentProcessList() async {
    next = null;
    previous = null;
    emit(PaymentProcessListState.initial());
    final result = await _repos.getPaymentProcessList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(PaymentProcessListState.initial());
    getPaymentProcessList();
  }
  Future getSearched(String code) async {
    emit(PaymentProcessListState.initial());
    final result = await _repos.getSalesReturnList("?search_key=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future getFilterdByTime(String strtDate,String endDate) async {
    emit(PaymentProcessListState.initial());
    final result = await _repos.getSalesReturnList("?start_date=${strtDate}&end_date=$endDate");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future nextslotSectionPageList(int val) async {
    emit(PaymentProcessListState.initial());
    final result = await _repos.getSalesReturnList("?page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    emit(PaymentProcessListState.initial());
    // print(previous);
    final result = await _repos.getSalesReturnList(previous);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;

      emit(_Success(r));
    });
  }
}
