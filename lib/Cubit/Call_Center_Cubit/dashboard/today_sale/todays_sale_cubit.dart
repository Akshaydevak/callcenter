import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';

part 'todays_sale_state.dart';
part 'todays_sale_cubit.freezed.dart';

class TodaysSaleCubit extends Cubit<TodaysSaleState> {
  TodaysSaleCubit() : super(TodaysSaleState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getTodaysSale({String? type}) async {
    emit(TodaysSaleState.initial());
    final result = await _repos.getTodaysSale(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
