import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Business_Unit_Data/Business_Unit_Data.dart';

import '../../Datas/repositorys.dart';

part 'read_business_data_state.dart';
part 'read_business_data_cubit.freezed.dart';

class ReadBusinessDataCubit extends Cubit<ReadBusinessDataState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadBusinessDataCubit() : super(ReadBusinessDataState.initial());
  Future getBusinessData() async {
    final result = await _repos.getBusinessData();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
