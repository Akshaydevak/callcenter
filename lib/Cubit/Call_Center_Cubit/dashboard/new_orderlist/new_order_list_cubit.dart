import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'new_order_list_state.dart';
part 'new_order_list_cubit.freezed.dart';

class NewOrderListCubit extends Cubit<NewOrderListState> {
  final salesappRepository _repos = salesappRepoImpl();
  NewOrderListCubit() : super(NewOrderListState.initial());
  String? prev;
  String? next;
  Future getNewOrderList() async {
    next = null;
    prev = null;
    print("enterd");
    emit(NewOrderListState.initial());
    final result = await _repos.getNewOrderList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchNewOrderList(String filter) async {
    emit(NewOrderListState.initial());
    final result = await _repos.getNewOrderList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await _repos.getNewOrderList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await _repos.getNewOrderList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(NewOrderListState.initial() );
    getNewOrderList();
  }
}
