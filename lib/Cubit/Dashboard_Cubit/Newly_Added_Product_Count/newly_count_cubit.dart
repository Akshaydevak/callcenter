import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../Datas/repositorys.dart';

part 'newly_count_state.dart';
part 'newly_count_cubit.freezed.dart';

class NewlyCountCubit extends Cubit<NewlyCountState> {
  final salesappRepository _repos = salesappRepoImpl();
  NewlyCountCubit() : super(NewlyCountState.initial());
  Future getNewlyCount() async {
    final result = await _repos.getNewlyCount();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
