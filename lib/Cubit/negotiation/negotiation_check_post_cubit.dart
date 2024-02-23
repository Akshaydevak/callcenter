import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'negotiation_check_post_state.dart';
part 'negotiation_check_post_cubit.freezed.dart';

class NegotiationCheckPostCubit extends Cubit<NegotiationCheckPostState> {
  final salesappRepository _repos = salesappRepoImpl();
  NegotiationCheckPostCubit() : super(const NegotiationCheckPostState.initial());
  Future postReadNegotiationCheck(NegotiationCheckModel model) async {
    emit(NegotiationCheckPostState.initial());
    final result = await _repos.postReadNegotiationCheck(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }



}
