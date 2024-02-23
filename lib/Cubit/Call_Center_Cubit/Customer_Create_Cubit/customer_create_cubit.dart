import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'customer_create_state.dart';
part 'customer_create_cubit.freezed.dart';

class CustomerCreateCubit extends Cubit<CustomerCreateState> {
  final salesappRepository repo = salesappRepoImpl();
  CustomerCreateCubit() : super(CustomerCreateState.initial());
  Future postCustomerCreate(CustomerCreate model) async {
    emit(_Loading());
    print("customer create print");
    final result = await repo.postCustomerCreate(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
