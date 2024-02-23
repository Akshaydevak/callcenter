import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';

part 'delivery_slot_state.dart';
part 'delivery_slot_cubit.freezed.dart';

class DeliverySlotCubit extends Cubit<DeliverySlotState> {

  final salesappRepository _repos = salesappRepoImpl();
  DeliverySlotCubit() : super(DeliverySlotState.initial());
  Future getDeliverySlot() async {
    emit(DeliverySlotState.initial());
    final result = await _repos.getDeliverySlot();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
