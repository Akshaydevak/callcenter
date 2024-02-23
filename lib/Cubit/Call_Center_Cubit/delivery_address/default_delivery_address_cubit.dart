import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'default_delivery_address_state.dart';
part 'default_delivery_address_cubit.freezed.dart';

class DefaultDeliveryAddressCubit extends Cubit<DefaultDeliveryAddressState> {
  DefaultDeliveryAddressCubit() : super(DefaultDeliveryAddressState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future postDefaultDeliverAdrress({String? userCode,int? addressId,bool? isDefault} ) async {
    // emit(_Loading());
    final result = await _repos.postDefaultDeliverAdrress(userCode: userCode,addressId: addressId,isDefault: isDefault);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
