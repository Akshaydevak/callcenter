import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Percentage_Models/Percentage.dart';

import '../../../Datas/repositorys.dart';

part 'percentage_gp_state.dart';
part 'percentage_gp_cubit.freezed.dart';

class PercentageGpCubit extends Cubit<PercentageGpState> {
  final salesappRepository _repos = salesappRepoImpl();
  PercentageGpCubit() : super(PercentageGpState.initial());
  Future getOrderPercentGp() async {
    final result = await _repos.getOrderPercentGp();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
