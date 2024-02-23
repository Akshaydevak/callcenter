import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Assign_Org_List/Assign_Org_List.dart';

import '../../Datas/repositorys.dart';

part 'assign_to_org_list_state.dart';
part 'assign_to_org_list_cubit.freezed.dart';

class AssignToOrgListCubit extends Cubit<AssignToOrgListState> {
  final salesappRepository _repos = salesappRepoImpl();
  AssignToOrgListCubit() : super(AssignToOrgListState.initial());
  Future getItemListAssignToOrgList() async {
    final result = await _repos.getAssignToOrgList();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
