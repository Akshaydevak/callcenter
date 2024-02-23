import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Read_sales_invoice/Read_Sales_Invoice.dart';

import '../../Datas/repositorys.dart';

part 'read_sales_invoice_state.dart';
part 'read_sales_invoice_cubit.freezed.dart';

class ReadSalesInvoiceCubit extends Cubit<ReadSalesInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadSalesInvoiceCubit() : super(ReadSalesInvoiceState.initial());
  Future getSalesInvoiceRead(int id) async {
    final result = await _repos.getSalesInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
