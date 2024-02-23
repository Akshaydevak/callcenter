import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';
import '../../../Models/Call_Center_Model/Payment_Models/Payment_Model.dart';
import '../../../utils/response_utils.dart';

part 'put_payment_process_state.dart';
part 'put_payment_process_cubit.freezed.dart';

class PutPaymentProcessCubit extends Cubit<PutPaymentProcessState> {
  final salesappRepository _repos = salesappRepoImpl();
  PutPaymentProcessCubit() : super(PutPaymentProcessState.initial());
  Future putPaymentProcess(PostResponse model) async {
    emit(_Loading());
    final result = await _repos.putPaymentProcess(model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
