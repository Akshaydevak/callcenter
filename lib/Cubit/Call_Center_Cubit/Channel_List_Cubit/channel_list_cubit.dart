import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../Datas/repositorys.dart';

part 'channel_list_state.dart';
part 'channel_list_cubit.freezed.dart';

class ChannelListCubit extends Cubit<ChannelListState> {
  final salesappRepository _repos = salesappRepoImpl();
  ChannelListCubit() : super(ChannelListState.initial());
  Future getChannelList() async {
    emit(ChannelListState.initial());
    final result = await _repos.getChannelList();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
