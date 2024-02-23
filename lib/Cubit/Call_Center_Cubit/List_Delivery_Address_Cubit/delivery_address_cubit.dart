import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';

part 'delivery_address_state.dart';
part 'delivery_address_cubit.freezed.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  final salesappRepository _repos = salesappRepoImpl();
  DeliveryAddressCubit() : super(DeliveryAddressState.initial());
  Future getDeliveryAddressList() async {
    emit(DeliveryAddressState.initial());
    final result = await _repos.getDeliveryAddressList();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}