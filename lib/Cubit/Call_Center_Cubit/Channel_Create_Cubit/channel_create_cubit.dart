import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';

import '../../../Datas/repositorys.dart';
import '../../../utils/response_utils.dart';

part 'channel_create_state.dart';
part 'channel_create_cubit.freezed.dart';

class ChannelCreateCubit extends Cubit<ChannelCreateState> {
  final salesappRepository repo = salesappRepoImpl();
  ChannelCreateCubit() : super(ChannelCreateState.initial());
  Future postChannelCreate(CreateChannel model) async {
    emit(_Loading());
    print("Channel create call");
    final result = await repo.postChannelCreate(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
