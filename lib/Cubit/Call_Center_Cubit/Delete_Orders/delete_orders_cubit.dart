import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'delete_orders_state.dart';
part 'delete_orders_cubit.freezed.dart';

class DeleteOrdersCubit extends Cubit<DeleteOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  DeleteOrdersCubit() : super(DeleteOrdersState.initial());
  Future deleteOrders(int? id) async {
    final result = await _repos.deleteOrders(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
