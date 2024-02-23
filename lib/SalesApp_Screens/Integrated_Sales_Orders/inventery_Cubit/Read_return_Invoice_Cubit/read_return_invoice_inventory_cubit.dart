import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../Datas/repositorys.dart';
import '../../../../Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';

part 'read_return_invoice_inventory_state.dart';
part 'read_return_invoice_inventory_cubit.freezed.dart';

class ReadReturnInvoiceInventoryCubit extends Cubit<ReadReturnInvoiceInventoryState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadReturnInvoiceInventoryCubit() : super(ReadReturnInvoiceInventoryState.initial());
  Future getReturnInvoiceReadInventory(int id) async {
    final result = await _repos.getReturnInvoiceReadInventory(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
