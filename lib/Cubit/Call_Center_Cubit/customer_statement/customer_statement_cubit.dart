import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/usermodel/customer_model.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'customer_statement_state.dart';
part 'customer_statement_cubit.freezed.dart';

class CustomerStatementCubit extends Cubit<CustomerStatementState> {
  CustomerStatementCubit() : super(CustomerStatementState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  String? prev;
  String? next;
  Future getAllCustomerStatementList(UserCustomerStatementPostModel model) async {
    emit(CustomerStatementState.initial());
    final result = await _repos.getAllCustomerStatementList(model,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh(UserCustomerStatementPostModel model) async {
    emit(CustomerStatementState.initial());
    _repos. getAllCustomerStatementList(model,"");
  }
  Future getSearchOrder(UserCustomerStatementPostModel model,String code) async {
    final result = await _repos.getAllCustomerStatementList(model,code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(UserCustomerStatementPostModel model) async {
    final result = await _repos.getAllCustomerStatementList(model,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
