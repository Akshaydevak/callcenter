import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'negotiation_post_state.dart';
part 'negotiation_post_cubit.freezed.dart';

class NegotiationPostCubit extends Cubit<NegotiationPostState> {
  final salesappRepository _repos = salesappRepoImpl();
  NegotiationPostCubit() : super(const NegotiationPostState.initial());
  Future postReadNegotiation(NegotiationModel model) async {
    emit(NegotiationPostState.initial());
    final result = await _repos.postReadNegotiation(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
