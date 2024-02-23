import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../Datas/repositorys.dart';
import '../../Models/Read_sales_genaral/Read_Sales_Genaral.dart';
import '../../utils/response_utils.dart';

part 'patch_sales_genaral_state.dart';
part 'patch_sales_genaral_cubit.freezed.dart';

class PatchSalesGenaralCubit extends Cubit<PatchSalesGenaralState> {
  final salesappRepository _repos = salesappRepoImpl();
  PatchSalesGenaralCubit() : super(PatchSalesGenaralState.initial());
  Future postSalesGenaralPatch(int? id,ReadSalesGenaral model) async {
    emit(_Loading());
    final result = await _repos.postSalesGenaralPatch(model,id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
