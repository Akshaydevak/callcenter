import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';

part 'producedcountry_state.dart';

part 'producedcountry_cubit.freezed.dart';

class ProducedcountryCubit extends Cubit<ProducedcountryState> {
  final salesappRepository _repos = salesappRepoImpl();
  ProducedcountryCubit() : super( ProducedcountryState.initial());
  Future getProducedCountry(String? code) async {
    emit(ProducedcountryState.initial());
    final result = await _repos.getProducedCountry(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
