import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hover_payment_state.dart';

class HoverPaymentCubit extends Cubit<HoverPaymentState> {
  HoverPaymentCubit() : super(HoverPaymentState(isHover: false));
  setIsHover(bool isHover){
    emit(HoverPaymentState(isHover:isHover ));
  }
}
