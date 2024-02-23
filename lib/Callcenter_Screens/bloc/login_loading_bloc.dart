import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_loading_event.dart';
part 'login_loading_state.dart';

class LoginLoadingBloc extends Bloc<LoginLoadingEvent, LoginLoadingState> {
  LoginLoadingBloc() : super(LoginLoadingInitial()) {
    on<LoginLoadingEvent>((event, emit) {
      emit(LoginLoadingState(loading: state.loading));
    });
  }
}
