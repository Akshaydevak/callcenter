import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';

part 'latest_order_count_state.dart';
part 'latest_order_count_cubit.freezed.dart';

class LatestOrderCountCubit extends Cubit<LatestOrderCountState> {
  final salesappRepository _repos = salesappRepoImpl();
  LatestOrderCountCubit() : super(LatestOrderCountState.initial());
  Future getOrderCount() async {
    final result = await _repos.getOrderCount();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
