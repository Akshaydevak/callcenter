import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../Datas/repositorys.dart';
import '../../Models/Read_sales_genaral/Read_Sales_Genaral.dart';

part 'read_sales_genaral_state.dart';
part 'read_sales_genaral_cubit.freezed.dart';

class ReadSalesGenaralCubit extends Cubit<ReadSalesGenaralState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadSalesGenaralCubit() : super(ReadSalesGenaralState.initial());
  Future getGeneralSalesRead(int id) async {
    print("read general sales read cubits");
    final result = await _repos.getSalesGenaralRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
