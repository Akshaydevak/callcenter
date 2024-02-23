import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../../utils/response_utils.dart';
import '../../Datas/repositorys.dart';
import '../../Models/SignUp_Model/SignUp.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final salesappRepository repo = salesappRepoImpl();
  SignUpCubit() : super(SignUpState.initial());
  Future postSignUpData(SignUpData model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSignUp(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postSignInData(String username,String password,String empCode) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSignIn(username,password,empCode);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
