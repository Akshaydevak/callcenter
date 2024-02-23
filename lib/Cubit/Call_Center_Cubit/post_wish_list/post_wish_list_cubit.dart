import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'post_wish_list_state.dart';
part 'post_wish_list_cubit.freezed.dart';

class PostWishListCubit extends Cubit<PostWishListState> {
  PostWishListCubit() : super(PostWishListState.initial());
  final salesappRepository _repos = salesappRepoImpl();

  Future postWhisList(String variantId,String variantCode) async {

    final result = await _repos.postWhisList(variantId,variantCode);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
