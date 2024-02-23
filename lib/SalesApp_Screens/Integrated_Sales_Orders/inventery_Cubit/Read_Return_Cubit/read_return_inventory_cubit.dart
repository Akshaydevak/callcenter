import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../Datas/repositorys.dart';
import '../../../../Models/Read_Sales_return/Read_Sales_Return.dart';

part 'read_return_inventory_state.dart';
part 'read_return_inventory_cubit.freezed.dart';

class ReadReturnInventoryCubit extends Cubit<ReadReturnInventoryState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadReturnInventoryCubit() : super(ReadReturnInventoryState.initial());
  Future getInventoryReturnRead(int id) async {
    print("read general sales read cubits");
    final result = await _repos.getInventoryReturnRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
