import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/Gp_Card_Callcenter/Gp_Card_Long.dart';

import '../../../Datas/repositorys.dart';

part 'gp_card_read_state.dart';
part 'gp_card_read_cubit.freezed.dart';

class GpCardReadCubit extends Cubit<GpCardReadState> {
  final salesappRepository _repos = salesappRepoImpl();
  GpCardReadCubit() : super(GpCardReadState.initial());
  Future getGpCallcenter() async {
    emit(GpCardReadState.initial());
    final result = await _repos.getGpCallcenter();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
