import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';
import '../../../Models/Dashboard_model_Class/Read_Latest_Order/Latest_Order.dart';

part 'read_latest_order_state.dart';
part 'read_latest_order_cubit.freezed.dart';

class ReadLatestOrderCubit extends Cubit<ReadLatestOrderState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadLatestOrderCubit() : super(ReadLatestOrderState.initial());
  Future getLatestOrder() async {
    print("read general sales read cubits");
    final result = await _repos.getLatestOrder();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
