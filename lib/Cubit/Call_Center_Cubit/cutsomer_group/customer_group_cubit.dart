import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/utils/response_utils.dart';

import '../../../Datas/repositorys.dart';

part 'customer_group_state.dart';
part 'customer_group_cubit.freezed.dart';

class CustomerGroupCubit extends Cubit<CustomerGroupState> {

  final salesappRepository _repos = salesappRepoImpl();
  CustomerGroupCubit() : super(CustomerGroupState.initial());
  String? prev;
  String? next;
  Future getPromotionCustomerGroupList() async {
    // next = null;
    // prev = null;
    print("cubit");

    emit( CustomerGroupState.initial());
    final result = await _repos.getPromotionCustomerGroupList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      // next = r.nextPage;
      // prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchPromotionCustomerGroup(String filter) async {
    emit( CustomerGroupState.initial());
    final result = await _repos.getPromotionCustomerGroupList(filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      // next = r.nextPage;
      // prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await _repos.getPromotionCustomerGroupList("?$next");
    result.fold((l) => emit(_Error()), (r) {
      // next = r.nextPage;
      // prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await _repos.getPromotionCustomerGroupList("?$prev");
    result.fold((l) => emit(_Error()), (r) {
      // next = r.nextPage;
      // prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CustomerGroupState.initial());
    getPromotionCustomerGroupList();
  }

}
