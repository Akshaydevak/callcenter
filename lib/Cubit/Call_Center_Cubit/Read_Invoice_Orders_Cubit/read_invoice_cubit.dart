import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';

import '../../../Datas/repositorys.dart';

part 'read_invoice_state.dart';
part 'read_invoice_cubit.freezed.dart';

class ReadInvoiceCubit extends Cubit<ReadInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadInvoiceCubit() : super(ReadInvoiceState.initial());
  Future getInvoiceRead(int id) async {
    emit(ReadInvoiceState.initial());
    final result = await _repos.getInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
