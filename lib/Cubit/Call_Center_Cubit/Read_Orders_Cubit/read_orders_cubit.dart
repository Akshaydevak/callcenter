import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';

import '../../../Datas/repositorys.dart';

part 'read_orders_state.dart';
part 'read_orders_cubit.freezed.dart';

class ReadOrdersCubit extends Cubit<ReadOrdersState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadOrdersCubit() : super(ReadOrdersState.initial());
  Future getOrdersRead(int id) async {
    emit(ReadOrdersState.initial());
    final result = await _repos.getOrdersRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
