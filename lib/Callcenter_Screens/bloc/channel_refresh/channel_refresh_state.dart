part of 'channel_refresh_bloc.dart';

 class ChannelRefreshState {
   String channelValue;
   ChannelRefreshState({required this.channelValue});
 }

class ChannelRefreshInitial extends ChannelRefreshState {
  ChannelRefreshInitial():super(channelValue: "");

}
