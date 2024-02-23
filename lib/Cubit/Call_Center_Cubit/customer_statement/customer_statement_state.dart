part of 'customer_statement_cubit.dart';


@freezed
class CustomerStatementState with _$CustomerStatementState {
  const factory CustomerStatementState.initial() = _Initial;
  const factory CustomerStatementState.loading() = _Loading;
  const factory CustomerStatementState.success(PaginatedResponse data) = _Success;
  const factory CustomerStatementState.error() = _Error;

}
