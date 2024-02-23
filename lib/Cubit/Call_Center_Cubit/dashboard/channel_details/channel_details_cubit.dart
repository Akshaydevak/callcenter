import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/model/channel_model.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'channel_details_state.dart';
part 'channel_details_cubit.freezed.dart';

class ChannelDetailsCubit extends Cubit<ChannelDetailsState> {
  ChannelDetailsCubit() : super(ChannelDetailsState.initial());
  final salesappRepository repo = salesappRepoImpl();

  Future postChannelSave(ChannelCreateModel model) async {
    emit(ChannelDetailsState.initial());

    final result = await repo.postChannelSave(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
