import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'channel_refresh_event.dart';
part 'channel_refresh_state.dart';

class ChannelRefreshBloc extends Bloc<ChannelRefreshEvent, ChannelRefreshState> {
  ChannelRefreshBloc() : super(ChannelRefreshInitial()) {
    on<ChannelRefreshEvent>((event, emit) {
    emit(ChannelRefreshState(channelValue: state.channelValue));
    });
  }
}
