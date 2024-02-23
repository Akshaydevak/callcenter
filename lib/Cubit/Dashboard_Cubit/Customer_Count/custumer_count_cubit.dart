import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Count_Model_Class/Count_Model_Class.dart';

import '../../../Datas/repositorys.dart';

part 'custumer_count_state.dart';
part 'custumer_count_cubit.freezed.dart';

class CustumerCountCubit extends Cubit<CustumerCountState> {
  final salesappRepository _repos = salesappRepoImpl();
  CustumerCountCubit() : super(CustumerCountState.initial());
  Future getCustomerCount() async {
    final result = await _repos.getCustomerCount();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
