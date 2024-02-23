import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'offer_hub_list_state.dart';
part 'offer_hub_list_cubit.freezed.dart';

class OfferHubListCubit extends Cubit<OfferHubListState> {
  OfferHubListCubit() : super(OfferHubListState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getHubList(String variantCode) async {
    emit(OfferHubListState.initial());
    final result = await _repos.getHubList(variantCode,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh(String variantCode) async {
    emit(OfferHubListState.initial());
    getHubList(variantCode);
  }
  Future getSearchHubList(String variantCode,String element) async {
    final result = await _repos.getHubList(variantCode,"name="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String variantCode,int val) async {
    final result = await _repos.getHubList(variantCode,"page=$val"??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future previuosslotSectionPageList(String variantCode,int val) async {

    final result = await _repos.getHubList(variantCode,prev??"1");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
}
