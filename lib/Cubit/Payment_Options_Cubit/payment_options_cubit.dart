import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/Payment_Models/Payment_Model.dart';

import '../../utils/response_utils.dart';

part 'payment_options_state.dart';
part 'payment_options_cubit.freezed.dart';

class PaymentOptionsCubit extends Cubit<PaymentOptionsState> {
  final salesappRepository _repos = salesappRepoImpl();
  PaymentOptionsCubit() : super(PaymentOptionsState.initial());
  String? next;
  String? previous;
  List<PaymentOptions>? items = [];
  Future getPaymentOptionList() async {
    next = null;
    previous = null;
    emit(PaymentOptionsState.initial());
    final result = await _repos.getPaymentOptionList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      previous = r.previousPage;
      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(PaymentOptionsState.initial());
    getPaymentOptionList();
  }
  Future getSearched(String code) async {
    final result = await _repos.getSalesReturnList("?code=$code");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}


