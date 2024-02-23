import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';

part 'warranty_state.dart';
part 'warranty_cubit.freezed.dart';

class WarrantyCubit extends Cubit<WarrantyState> {
  final salesappRepository _repos = salesappRepoImpl();
WarrantyCubit() : super(WarrantyState.initial());
Future getWarrantys(int id) async {
  emit(WarrantyState.initial());
  final result = await _repos.getWarrantys(id);
  result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
}
}
