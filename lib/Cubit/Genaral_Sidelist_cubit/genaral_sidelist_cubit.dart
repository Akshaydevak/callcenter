import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../Datas/repositorys.dart';
import '../../Models/Sales_Genaral_SideList/Sales_Genaral_Sidelist.dart';
import '../../utils/response_utils.dart';

part 'genaral_sidelist_state.dart';
part 'genaral_sidelist_cubit.freezed.dart';

class GenaralSidelistCubit extends Cubit<GenaralSidelistState> {
  final salesappRepository _repos = salesappRepoImpl();
  GenaralSidelistCubit() : super(GenaralSidelistState.initial());
  String? next;
  String? previous;
  List<SalesGeneralList>? items = [];
  Future getItemList() async {
    next = null;
    previous = null;
    emit(GenaralSidelistState.initial());
    final result = await _repos.getSalesList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(GenaralSidelistState.initial());
    getItemList();
  }
  Future getSearch(String code) async {
    final result = await _repos.getSalesList("?code=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
