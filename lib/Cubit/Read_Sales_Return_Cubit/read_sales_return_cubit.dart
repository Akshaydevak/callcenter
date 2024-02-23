import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Read_Sales_return/Read_Sales_Return.dart';

part 'read_sales_return_state.dart';
part 'read_sales_return_cubit.freezed.dart';

class ReadSalesReturnCubit extends Cubit<ReadSalesReturnState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadSalesReturnCubit() : super(ReadSalesReturnState.initial());
  Future getSalesReturnRead(int id) async {
    print("read general sales read cubits");
    final result = await _repos.getSalesReturnRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
