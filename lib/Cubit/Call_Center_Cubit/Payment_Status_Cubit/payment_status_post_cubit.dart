import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'payment_status_post_state.dart';
part 'payment_status_post_cubit.freezed.dart';

class PaymentStatusPostCubit extends Cubit<PaymentStatusPostState> {
  final salesappRepository _repos = salesappRepoImpl();
  PaymentStatusPostCubit() : super(PaymentStatusPostState.initial());
  Future postPaymentStatus(int invoiceId,int paymentId,String paymentMethod) async {

    final result = await _repos.postPaymentStatus(invoiceId,paymentId,paymentMethod);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
