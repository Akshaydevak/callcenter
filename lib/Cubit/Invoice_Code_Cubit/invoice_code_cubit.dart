import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/SalesInvoiceCodeList/Sales_Invoice_Code_List.dart';

part 'invoice_code_state.dart';
part 'invoice_code_cubit.freezed.dart';

class InvoiceCodeCubit extends Cubit<InvoiceCodeState> {
  final salesappRepository _repos = salesappRepoImpl();
  InvoiceCodeCubit() : super(InvoiceCodeState.initial());
  Future getItemListInvoiceCode() async {
    final result = await _repos.getInvoiceCode();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
