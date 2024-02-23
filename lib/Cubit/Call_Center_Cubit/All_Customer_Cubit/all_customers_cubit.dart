import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/utils/response_utils.dart';
import '../../../Datas/repositorys.dart';
part 'all_customers_state.dart';
part 'all_customers_cubit.freezed.dart';

class AllCustomersCubit extends Cubit<AllCustomersState> {
  final salesappRepository _repos = salesappRepoImpl();
  AllCustomersCubit() : super(AllCustomersState.initial());
  String? prev;
  String? next;
  Future getAllCustomerList(String customerId) async {
    final result = await _repos.getAllCustomerList(customerId);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(AllCustomersState.initial());
    getAllCustomerList("");
  }
  Future getSearchOrder(String code) async {
    final result = await _repos.getSearchOrder(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String code) async {
    final result = await _repos.getSearchOrder(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
