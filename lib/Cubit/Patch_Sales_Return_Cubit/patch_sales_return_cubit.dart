import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../Datas/repositorys.dart';
import '../../Models/Read_Sales_return/Read_Sales_Return.dart';
import '../../utils/response_utils.dart';

part 'patch_sales_return_state.dart';
part 'patch_sales_return_cubit.freezed.dart';

class PatchSalesReturnCubit extends Cubit<PatchSalesReturnState> {
  final salesappRepository _repos = salesappRepoImpl();
  PatchSalesReturnCubit() : super(PatchSalesReturnState.initial());
  Future postSalesReturnPatch(int? id,ReadSalesReturn model) async {
    emit(_Loading());
    final result = await _repos.postSalesReturnPatch(model,id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
