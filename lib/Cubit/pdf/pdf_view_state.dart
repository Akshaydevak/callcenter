part of 'pdf_view_cubit.dart';


@freezed
class PdfViewState with _$PdfViewState {
  const factory PdfViewState.initial() = _Initial;
  const factory PdfViewState.loading() = _Loading;
  const factory PdfViewState.error() = _Error;
  const factory PdfViewState.success( DoubleResponse data) =_Success;

}
