part of 'read_return_inventory_cubit.dart';

@freezed
class ReadReturnInventoryState with _$ReadReturnInventoryState {
  const factory ReadReturnInventoryState.initial() = _Initial;
  const factory ReadReturnInventoryState.loading() = _Loading;
  const factory ReadReturnInventoryState.error() = _Error;
  const factory ReadReturnInventoryState.success(ReadSalesReturn data) =_Success;
}
