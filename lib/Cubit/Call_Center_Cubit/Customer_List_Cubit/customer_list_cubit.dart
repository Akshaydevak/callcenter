import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../Datas/repositorys.dart';

part 'customer_list_state.dart';
part 'customer_list_cubit.freezed.dart';

class CustomerListCubit extends Cubit<CustomerListState> {
  final salesappRepository _repos = salesappRepoImpl();
  CustomerListCubit() : super(CustomerListState.initial());
  Future getCustomerList(String code) async {
    emit(CustomerListState.initial());
    if(code.isEmpty)
      code="null";

    final result = await _repos.getCustomerList("?search_key=$code");
    // emit(result.fold((l) => _Error(), (r) =>(_Success(r))));
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
