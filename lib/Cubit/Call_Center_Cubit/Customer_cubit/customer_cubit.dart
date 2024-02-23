import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'customer_state.dart';
part 'customer_cubit.freezed.dart';

class CustomerCubit extends Cubit<CustomerState> {
  final salesappRepository _repos = salesappRepoImpl();
  CustomerCubit() : super(CustomerState.initial());
  String? prev;
  String? next;
  Future getCustomerListHistory(String code,String customerId) async {
    final result = await _repos.getCustomerListHistory(code,customerId);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(CustomerState.initial());
    getCustomerListHistory("",'');
  }
  Future getSearchedOrder(String code) async {
    final result = await _repos.getSearchedOrder("code="+code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String code) async {
    final result = await _repos.getSearchedOrder(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
