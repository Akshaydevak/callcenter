import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'read_captch_state.dart';
part 'read_captch_cubit.freezed.dart';

class ReadCaptchCubit extends Cubit<ReadCaptchState> {
  final salesappRepository _repos = salesappRepoImpl();
  ReadCaptchCubit() : super(ReadCaptchState.initial());
  Future getCaptcha() async {
    emit(ReadCaptchState.initial());
    final result = await _repos.getCaptcha();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
