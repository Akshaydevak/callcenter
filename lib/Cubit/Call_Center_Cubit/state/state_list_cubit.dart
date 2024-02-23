import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';

part 'state_list_state.dart';
part 'state_list_cubit.freezed.dart';

class StateListCubit extends Cubit<StateListState> {
  StateListCubit() : super(StateListState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getStateList(String? code) async {
    emit(StateListState.initial());
    final result = await _repos.getStateList( code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}
