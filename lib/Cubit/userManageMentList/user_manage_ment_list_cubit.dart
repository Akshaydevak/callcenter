import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'user_manage_ment_list_state.dart';
part 'user_manage_ment_list_cubit.freezed.dart';

class UserManageMentListCubit extends Cubit<UserManageMentListState> {
  final salesappRepository _repos = salesappRepoImpl();
  UserManageMentListCubit() : super(UserManageMentListState.initial());
  String? prev;
  String? next;
  Future getUserManage(String value) async {
    emit(UserManageMentListState.initial());
    final result = await _repos.getUserManage("type=$value");
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

  Future getRecentUserManage(

     String code ) async {
    final result = await _repos.getUserManage(
      "type=$code"
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }
  Future getsearchUSer(

     String code ) async {

    final result = await _repos.getUserManage(
      "search_key=$code"
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }
  Future nextslotSectionPageList(int val) async {
    final result = await _repos.getUserManage("page=$val"??"1");

    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await _repos.getUserManage(prev??"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(UserManageMentListState.initial());
    getUserManage("");
  }
}
