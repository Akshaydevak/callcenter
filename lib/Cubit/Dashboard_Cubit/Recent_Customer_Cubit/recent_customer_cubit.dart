import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Recent_Customers/Recent_Customers.dart';

import '../../../Datas/repositorys.dart';

part 'recent_customer_state.dart';
part 'recent_customer_cubit.freezed.dart';

class RecentCustomerCubit extends Cubit<RecentCustomerState> {
  final salesappRepository _repos = salesappRepoImpl();
  RecentCustomerCubit() : super(RecentCustomerState.initial());
  Future getRecent() async {
    final result = await _repos.getRecent();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
