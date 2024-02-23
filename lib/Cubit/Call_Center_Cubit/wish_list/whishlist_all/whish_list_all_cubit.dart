import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'whish_list_all_state.dart';
part 'whish_list_all_cubit.freezed.dart';
class WhishListAllCubit extends Cubit<WhishListAllState> {
  WhishListAllCubit() : super( WhishListAllState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getAllWishList() async {
    emit( WhishListAllState.initial());
    final result = await _repos.getWishList("");
    result.fold((l) => emit(_Error()), (r) {

      next = r.nextPage?.split("page")[1];
      print("r.nextPage${next}");
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit( WhishListAllState.initial());
    getAllWishList();
  }
  Future getSearchAllWishList(String element) async {
    final result = await _repos.getWishList("search_key="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage?.split("&")[1];
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String  nextUrl) async {
    emit( WhishListAllState.initial());
    final result = await _repos.getWishList(nextUrl);
    result.fold((l) => emit(_Error()), (r) {
      print("r.nextPage${r.nextPage}");
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future previuosslotSectionPageList(String  val) async {
    print("previouaaaaaaaaaaaas$prev");
    final result = await _repos.getWishList(val);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

}
