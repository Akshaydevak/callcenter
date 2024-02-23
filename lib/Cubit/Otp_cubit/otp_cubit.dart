import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../utils/response_utils.dart';
import '../../Datas/repositorys.dart';


part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

class OtpCubit extends Cubit<OtpState> {
  final salesappRepository repo = salesappRepoImpl();
  OtpCubit() : super(OtpState.initial());
  Future postOtpData(String email,String mobile,String otp,String createdCode) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postOtp(email,mobile,otp,createdCode);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
