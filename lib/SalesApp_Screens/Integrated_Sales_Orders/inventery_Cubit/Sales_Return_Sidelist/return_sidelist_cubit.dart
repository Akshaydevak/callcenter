import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../Datas/repositorys.dart';
import '../../../../Models/List_Sales_Return/List_Sales_Return.dart';
import '../../../../utils/response_utils.dart';

part 'return_sidelist_state.dart';
part 'return_sidelist_cubit.freezed.dart';

class ReturnSidelistCubit extends Cubit<ReturnSidelistState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReturnSidelistCubit() : super(ReturnSidelistState.initial());
  String? next;
  String? previous;
  List<SalesReturnList>? items = [];
  Future getReturnSideList() async {
    next = null;
    previous = null;
    emit(ReturnSidelistState.initial());
    final result = await _repos.getReturnSideList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(ReturnSidelistState.initial());
    getReturnSideList();
  }
  Future getSearched(String code) async {
    final result = await _repos.getSalesReturnList("?code=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
