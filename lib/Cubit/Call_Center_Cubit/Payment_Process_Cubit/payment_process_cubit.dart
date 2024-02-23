import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'payment_process_state.dart';
part 'payment_process_cubit.freezed.dart';

class PaymentProcessCubit extends Cubit<PaymentProcessState> {
  final salesappRepository _repos = salesappRepoImpl();
  PaymentProcessCubit() : super(PaymentProcessState.initial());
  Future postProcessPay(PostResponse model) async {
    emit(_Loading());
    final result = await _repos.postProcessPay(model);

    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
