import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'recommendation_state.dart';
part 'recommendation_cubit.freezed.dart';

class RecommendationCubit extends Cubit<RecommendationState> {
  final salesappRepository _repos = salesappRepoImpl();
  RecommendationCubit() : super(RecommendationState.initial());
  String? prev;
  String? next;
  Future getRecommendationList() async {
    emit(RecommendationState.initial());
    final result = await _repos.getRecommendationList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(RecommendationState.initial());
    getRecommendationList();
  }
  Future getSearchRecommendation(String element) async {
    final result = await _repos.getRecommendationList("element="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String element) async {
    final result = await _repos.getRecommendationList(element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
