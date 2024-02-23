import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'delete_cart_state.dart';
part 'delete_cart_cubit.freezed.dart';
class DeleteCartCubit extends Cubit<DeleteCartState> {
  DeleteCartCubit() : super(DeleteCartState.initial());
  final salesappRepository _repos = salesappRepoImpl();
  Future postDeleteCart(CreateCartModel model) async {
    final result = await _repos.postCreateCart(model);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
