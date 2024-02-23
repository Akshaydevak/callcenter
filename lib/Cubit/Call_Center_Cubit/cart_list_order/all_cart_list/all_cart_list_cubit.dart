import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'all_cart_list_state.dart';
part 'all_cart_list_cubit.freezed.dart';

class AllCartListCubit extends Cubit<AllCartListState> {
  AllCartListCubit() : super(AllCartListState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getAllCArtOrderList() async {
    emit(AllCartListState.initial());
    final result = await _repos.getCArtOrderList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(AllCartListState.initial());
    getAllCArtOrderList();
  }
  Future getSearchAllCartList(String element) async {
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
