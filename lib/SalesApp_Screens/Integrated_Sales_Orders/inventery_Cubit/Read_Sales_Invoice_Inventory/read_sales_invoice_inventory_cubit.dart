import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../Datas/repositorys.dart';
import '../../../../Models/Read_sales_invoice/Read_Sales_Invoice.dart';

part 'read_sales_invoice_inventory_state.dart';
part 'read_sales_invoice_inventory_cubit.freezed.dart';

class ReadSalesInvoiceInventoryCubit extends Cubit<ReadSalesInvoiceInventoryState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadSalesInvoiceInventoryCubit() : super(ReadSalesInvoiceInventoryState.initial());
  Future getReadInvoiceInventory(int id) async {
    print("read general sales read cubits");
    final result = await _repos.getReadInvoiceInventory(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
