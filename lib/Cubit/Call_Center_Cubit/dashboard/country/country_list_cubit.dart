// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:meta/meta.dart';
// import 'package:salesapp/Datas/repositorys.dart';
// import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
//
// part 'country_list_state.dart';
// part 'country_list_cubit.freezed.dart';
//
// class CountryListCubit extends Cubit<CountryListState> {
//   CountryListCubit() : super(CountryListState.initial());
//   final salesappRepository _repos = salesappRepoImpl();
//   Future getProducedCountry(String? code) async {
//     emit(CountryListState.initial());
//     final result = await _repos.getProducedCountry(code);
//     result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
//   }
//
//
// }
