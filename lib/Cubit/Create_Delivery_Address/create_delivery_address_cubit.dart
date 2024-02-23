import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../Datas/repositorys.dart';
import '../../Models/delivery_Address_model/Delivery_Address.dart';
import '../../utils/response_utils.dart';

part 'create_delivery_address_state.dart';
part 'create_delivery_address_cubit.freezed.dart';

class CreateDeliveryAddressCubit extends Cubit<CreateDeliveryAddressState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateDeliveryAddressCubit() : super(CreateDeliveryAddressState.initial());
  Future createdeliveryAddress(DeliveryAddressData model) async {
    // emit(_Loading());
    final result = await _repos.createdeliveryAddress(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
