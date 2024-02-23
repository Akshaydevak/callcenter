import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../Datas/repositorys.dart';
import '../../Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import '../../utils/response_utils.dart';

part 'customer_update_state.dart';
part 'customer_update_cubit.freezed.dart';

class CustomerUpdateCubit extends Cubit<CustomerUpdateState> {
  final salesappRepository _repos = salesappRepoImpl();
  CustomerUpdateCubit() : super(const CustomerUpdateState.initial());
  Future postCustomerUpdate(CustomerCreate model) async {

    final result = await _repos.postCustomerUpdate(model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
