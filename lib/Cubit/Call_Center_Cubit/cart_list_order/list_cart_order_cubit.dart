import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'list_cart_order_state.dart';
part 'list_cart_order_cubit.freezed.dart';
class ListCartOrderCubit extends Cubit<ListCartOrderState> {
  ListCartOrderCubit() : super(ListCartOrderState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getCArtOrderList() async {
    emit(ListCartOrderState.initial());
    final result = await _repos.getCArtOrderList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(ListCartOrderState.initial());
    getCArtOrderList();
  }
  Future getSearchCartList(String element) async {
    final result = await _repos.getCArtOrderList("element=$element");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String  nextUrl) async {
    final result = await _repos.getCArtOrderList(nextUrl);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future previuosslotSectionPageList(int val) async {
    print("previouaaaaaaaaaaaas$prev");
    final result = await _repos.getCArtOrderList(prev??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
}
