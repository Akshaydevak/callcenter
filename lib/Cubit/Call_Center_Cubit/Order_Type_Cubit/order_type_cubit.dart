import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import '../../../Datas/repositorys.dart';

part 'order_type_state.dart';
part 'order_type_cubit.freezed.dart';

class OrderTypeCubit extends Cubit<OrderTypeState> {
  final salesappRepository _repos = salesappRepoImpl();
  OrderTypeCubit() : super(OrderTypeState.initial());
  Future getOrderTypes() async {
    emit(OrderTypeState.initial());
    final result = await _repos.getOrderTypes();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
