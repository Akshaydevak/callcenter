import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/approval/approval_model.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'approve_order_post_state.dart';
part 'approve_order_post_cubit.freezed.dart';

class ApproveOrderPostCubit extends Cubit<ApproveOrderPostState> {
  ApproveOrderPostCubit() : super(ApproveOrderPostState.initial());
  final salesappRepository repo = salesappRepoImpl();

  Future postApproveOrderCreate(ApproveOrderModel model) async {
    // emit(ApproveOrderPostState.initial() );
    final result = await repo.postApproveOrderCreate(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
