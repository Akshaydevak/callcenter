import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'patch_orders_state.dart';
part 'patch_orders_cubit.freezed.dart';

class PatchOrdersCubit extends Cubit<PatchOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  PatchOrdersCubit() : super(PatchOrdersState.initial());
  Future postOrderPatch(int? id,ReadOrderCallCenter model) async {

    final result = await _repos.postOrderPatch(model,id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
