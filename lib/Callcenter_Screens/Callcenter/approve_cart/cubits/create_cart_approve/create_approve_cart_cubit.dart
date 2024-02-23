import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'create_approve_cart_state.dart';
part 'create_approve_cart_cubit.freezed.dart';

class CreateApproveCartCubit extends Cubit<CreateApproveCartState> {
  CreateApproveCartCubit() : super(CreateApproveCartState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future postApproveCart(ApproveCartModel model) async {
    final result = await _repos.postApproveCart(model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
