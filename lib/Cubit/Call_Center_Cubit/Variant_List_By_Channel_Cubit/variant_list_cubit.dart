import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Variant_List_By_Channel/Varriant_List.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'variant_list_state.dart';
part 'variant_list_cubit.freezed.dart';

class VariantListCubit extends Cubit<VariantListState> {
  final salesappRepository _repos = salesappRepoImpl();
  VariantListCubit() : super(VariantListState.initial());
  String? prev;
  String? next;
  Future getVariantList() async {
    emit(VariantListState.initial());
    next = null;
    prev = null;
    final result = await _repos.getVariantList();
    result.fold((l) => emit(_Error()), (r) {

      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }
  Future refresh() async {
    emit(VariantListState.initial());
    getVariantList();
  }
  Future getSearchVariants(String element) async {
    final result = await _repos.getSearchVariants("name="+element);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));});
  }
  Future nextslotSectionPageList(String nextURL) async {
    emit(VariantListState.initial());
    final result = await _repos.getSearchVariants(nextURL);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

}
