import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../Datas/repositorys.dart';
import '../../../../Models/Read_sales_genaral/Read_Sales_Genaral.dart';

part 'read_sales_order_inventory_state.dart';
part 'read_sales_order_inventory_cubit.freezed.dart';

class ReadSalesOrderInventoryCubit extends Cubit<ReadSalesOrderInventoryState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadSalesOrderInventoryCubit() : super(ReadSalesOrderInventoryState.initial());
  Future getGereralReadInventory(int id) async {
    print("read general sales read cubits");
    final result = await _repos.getGereralReadInventory(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
