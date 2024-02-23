import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'frequently_recommendation_state.dart';
part 'frequently_recommendation_cubit.freezed.dart';

class FrequentlyRecommendationCubit extends Cubit<FrequentlyRecommendationState> {
  FrequentlyRecommendationCubit() : super(FrequentlyRecommendationState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  String? prev;
  String? next;
  Future getFrequentlyRecommendationList(String id) async {
    emit(FrequentlyRecommendationState.initial());
    final result = await _repos.getFrequentlyRecommendationList("",id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(FrequentlyRecommendationState.initial());
    getFrequentlyRecommendationList("");
  }
  Future getSearchFrequentlyRecommendation(String element,String id) async {
    final result = await _repos.getFrequentlyRecommendationList("element="+element,id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String element,String id) async {
    final result = await _repos.getFrequentlyRecommendationList(element,id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
