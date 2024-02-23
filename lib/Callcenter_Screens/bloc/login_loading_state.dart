part of 'login_loading_bloc.dart';

 class LoginLoadingState {
  bool loading;
  LoginLoadingState({required this.loading});
 }

class LoginLoadingInitial extends LoginLoadingState {
  LoginLoadingInitial():super(loading: false);

}
