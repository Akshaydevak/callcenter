import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Assign_To_List/Assign_To_List.dart';

import '../../Datas/repositorys.dart';

part 'assign_to_state.dart';
part 'assign_to_cubit.freezed.dart';

class AssignToCubit extends Cubit<AssignToState> {
  final salesappRepository _repos = salesappRepoImpl();
  AssignToCubit() : super(AssignToState.initial());
  Future getItemListAssignTo() async {
    final result = await _repos.getAssignTo();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
