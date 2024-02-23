import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';

import '../../Datas/repositorys.dart';
import '../../utils/response_utils.dart';

part 'create_sales_invoice_state.dart';
part 'create_sales_invoice_cubit.freezed.dart';

class CreateSalesInvoiceCubit extends Cubit<CreateSalesInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateSalesInvoiceCubit() : super(const CreateSalesInvoiceState.initial());
  Future postSalesInvoiceCreate(CreateSalesInvoice model) async {
    emit(_Loading());
    final result = await _repos.postCreateSalesInvoice(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
