import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'deletwish_list_varient_popup_state.dart';
part 'deletwish_list_varient_popup_cubit.freezed.dart';
class DeletwishListVarientPopupCubit extends Cubit<DeletwishListVarientPopupState> {
  DeletwishListVarientPopupCubit() : super(DeletwishListVarientPopupState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future deleteWhisList(String variantId) async {
    final result = await _repos.deleteWhisList(variantId);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
