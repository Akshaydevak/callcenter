import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';

import '../../Datas/repositorys.dart';

part 'read_return_invoice_state.dart';
part 'read_return_invoice_cubit.freezed.dart';

class ReadReturnInvoiceCubit extends Cubit<ReadReturnInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadReturnInvoiceCubit() : super(ReadReturnInvoiceState.initial());
  Future getReturnInvoiceRead(int id) async {
    final result = await _repos.getReturnIvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
