import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'offer_state.dart';
part 'offer_cubit.freezed.dart';

class OfferCubit extends Cubit<OfferState> {
  final salesappRepository _repos = salesappRepoImpl();
  OfferCubit() : super(OfferState.initial());
  String? prev;
  String? next;
  Future getOfferList(String type) async {
    emit(OfferState.initial());
    final result = await _repos.getOfferList("",type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(OfferState.initial());
    getOfferList("");
  }
  Future getSearchOffer(String element,String type) async {
    final result = await _repos.getOfferList("element="+element,type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String element,String type) async {
    final result = await _repos.getOfferList(element,type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
}
