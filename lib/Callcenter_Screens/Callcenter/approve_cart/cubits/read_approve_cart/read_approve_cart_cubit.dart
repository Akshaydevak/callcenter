import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/approve_cart/model/cart_approve_model.dart';
import 'package:salesapp/Datas/repositorys.dart';

part 'read_approve_cart_state.dart';
part 'read_approve_cart_cubit.freezed.dart';

class ReadApproveCartCubit extends Cubit<ReadApproveCartState> {
  ReadApproveCartCubit() : super(ReadApproveCartState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future getApproveCartRead(int id) async {
    emit(ReadApproveCartState.initial());
    final result = await _repos.getApproveCartRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
