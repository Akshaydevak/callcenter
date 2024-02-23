import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
// import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';

import '../../../Datas/repositorys.dart';
import '../../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';

part 'read_variant_state.dart';
part 'read_variant_cubit.freezed.dart';

class ReadVariantCubit extends Cubit<ReadVariantState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadVariantCubit() : super(ReadVariantState.initial());
  Future getVariantRead(int id,) async {
    emit(ReadVariantState.initial());
    final result = await _repos.getVariantRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
