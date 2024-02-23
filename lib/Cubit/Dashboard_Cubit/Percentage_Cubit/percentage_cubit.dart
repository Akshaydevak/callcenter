import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Percentage_Models/Percentage.dart';

import '../../../Datas/repositorys.dart';

part 'percentage_state.dart';
part 'percentage_cubit.freezed.dart';

class PercentageCubit extends Cubit<PercentageState> {
  final salesappRepository _repos = salesappRepoImpl();
  PercentageCubit() : super(PercentageState.initial());
  Future getOrderPercent() async {
    final result = await _repos.getOrderPercent();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }


}
