import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';

import '../../../../utils/response_utils.dart';

part 'employee_delete_state.dart';
part 'employee_delete_cubit.freezed.dart';

class EmployeeDeleteCubit extends Cubit<EmployeeDeleteState> {
  EmployeeDeleteCubit() : super(EmployeeDeleteState.initial());

  final salesappRepository repo = salesappRepoImpl();

  Future deleteAdminUser(String code) async {
    emit(EmployeeDeleteState.initial());

    final result = await repo.deleteAdminUser(code);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
