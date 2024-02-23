import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';

part 'total_orders_state.dart';
part 'total_orders_cubit.freezed.dart';

class TotalOrdersCubit extends Cubit<TotalOrdersState> {
  TotalOrdersCubit() : super( TotalOrdersState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getTotalOrders() async {
    emit( TotalOrdersState.initial());
    final result = await _repos.getTotalOrders();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
