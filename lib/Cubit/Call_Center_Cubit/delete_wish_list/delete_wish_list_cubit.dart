import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'delete_wish_list_state.dart';
part 'delete_wish_list_cubit.freezed.dart';

class DeleteWishListCubit extends Cubit<DeleteWishListState> {
  DeleteWishListCubit() : super(DeleteWishListState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future deleteWhisList(String variantId) async {
    final result = await _repos.deleteWhisList(variantId);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
