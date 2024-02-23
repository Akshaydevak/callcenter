import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/List_Sales_Return/List_Sales_Return.dart';

import '../../Datas/repositorys.dart';
import '../../utils/response_utils.dart';

part 'sales_return_list_state.dart';
part 'sales_return_list_cubit.freezed.dart';

class SalesReturnListCubit extends Cubit<SalesReturnListState> {
  final salesappRepository _repos = salesappRepoImpl();
  SalesReturnListCubit() : super(SalesReturnListState.initial());
  String? next;
  String? previous;
  List<SalesReturnList>? items = [];
  Future getReturnItemList() async {
    next = null;
    previous = null;
    emit(SalesReturnListState.initial());
    final result = await _repos.getSalesReturnList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(SalesReturnListState.initial());
    getReturnItemList();
  }
  Future getSearched(String code) async {
    final result = await _repos.getSalesReturnList("?code=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
