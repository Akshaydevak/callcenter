import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';

part 'total_holding_state.dart';
part 'total_holding_cubit.freezed.dart';
class TotalHoldingCubit extends Cubit<TotalHoldingState> {
  TotalHoldingCubit() : super(TotalHoldingState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getTotalHoldings({String? type}) async {
    emit( TotalHoldingState.initial());
    final result = await _repos.getTotalHoldings(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
