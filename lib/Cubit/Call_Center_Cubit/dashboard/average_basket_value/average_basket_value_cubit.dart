import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';

part 'average_basket_value_state.dart';
part 'average_basket_value_cubit.freezed.dart';

class AverageBasketValueCubit extends Cubit<AverageBasketValueState> {
  AverageBasketValueCubit() : super(AverageBasketValueState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getAveragebasketValue() async {
    emit( AverageBasketValueState.initial());
    final result = await _repos.getAveragebasketValue();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
