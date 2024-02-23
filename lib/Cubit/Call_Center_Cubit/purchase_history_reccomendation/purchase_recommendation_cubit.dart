import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'purchase_recommendation_state.dart';
part 'purchase_recommendation_cubit.freezed.dart';

class PurchaseRecommendationCubit extends Cubit<PurchaseRecommendationState> {
  PurchaseRecommendationCubit() : super(PurchaseRecommendationState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getPurchaseRecommendationList(String id) async {
    emit(PurchaseRecommendationState.initial());
    final result = await _repos.getPurchaseRecommendationList("",id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(PurchaseRecommendationState.initial());
    getPurchaseRecommendationList("");
  }
  Future getSearchPurchaseRecommendation(String element,String id) async {
    final result = await _repos.getPurchaseRecommendationList("element="+element,id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String element,String id) async {
    final result = await _repos.getPurchaseRecommendationList(element,id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
