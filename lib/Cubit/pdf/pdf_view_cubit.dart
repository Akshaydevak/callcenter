import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Create_Sales_Invoice/Create_Sales_Invoice.dart';
import 'package:salesapp/utils/response_utils.dart';
part 'pdf_view_cubit.freezed.dart';
part 'pdf_view_state.dart';


class PdfViewCubit extends Cubit<PdfViewState> {
  final salesappRepository _repos = salesappRepoImpl();

  PdfViewCubit() : super(PdfViewState.initial());

  Future getPdfView(String invoiceId,String type) async {
    final result = await _repos.getPdfView(invoiceId, type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}