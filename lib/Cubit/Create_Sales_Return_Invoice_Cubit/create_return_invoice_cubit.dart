import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Read_Sales_Return_Invoice/Read_Sales_Return_Invoice.dart';

import '../../Datas/repositorys.dart';
import '../../utils/response_utils.dart';

part 'create_return_invoice_state.dart';
part 'create_return_invoice_cubit.freezed.dart';

class CreateReturnInvoiceCubit extends Cubit<CreateReturnInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateReturnInvoiceCubit() : super(CreateReturnInvoiceState.initial());
  Future postSalesReturnInvoiceCreate(ReadSalesReturnInvoice model) async {
    emit(_Loading());
    final result = await _repos.postCreateSalesReturnInvoice(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
