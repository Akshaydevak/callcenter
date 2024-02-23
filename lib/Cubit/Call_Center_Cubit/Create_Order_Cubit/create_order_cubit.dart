import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'create_order_state.dart';
part 'create_order_cubit.freezed.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateOrderCubit() : super(CreateOrderState.initial());
  Future postCreateOrder(CreateOrder model) async {
    // emit(_Loading());
    final result = await _repos.postCreateOrder(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
