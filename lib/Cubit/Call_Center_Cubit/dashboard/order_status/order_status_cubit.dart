import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'order_status_state.dart';
part 'order_status_cubit.freezed.dart';

class OrderStatusCubit extends Cubit<OrderStatusState> {
  final salesappRepository _repos = salesappRepoImpl();
  OrderStatusCubit() : super(OrderStatusState.initial());
  String? prev;
  String? next;
  Future getOrderStatus() async {
    next = null;
    prev = null;
    print("enterd");
    emit(OrderStatusState.initial());
    final result = await _repos.getOrderStatus(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchBogoVerticalList(String filter) async {
    emit(OrderStatusState.initial() );
    final result = await _repos.getOrderStatus("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await _repos.getOrderStatus(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await _repos.getOrderStatus(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(OrderStatusState.initial()  );
    getOrderStatus();
  }
}
