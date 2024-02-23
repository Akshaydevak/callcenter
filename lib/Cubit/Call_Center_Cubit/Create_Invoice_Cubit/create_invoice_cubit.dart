import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';
import '../../../Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import '../../../Models/Call_Center_Model/Invoice_Orders/Invoice_Orders.dart';
import '../../../utils/response_utils.dart';

part 'create_invoice_state.dart';
part 'create_invoice_cubit.freezed.dart';

class CreateInvoiceCubit extends Cubit<CreateInvoiceState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateInvoiceCubit() : super(CreateInvoiceState.initial());
  Future postCreateInvoice(InvoiceOrderCallCenter model) async {

    final result = await _repos.postCreateInvoice(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
