import 'package:fish_redux/fish_redux.dart';

class VideoItemState implements Cloneable<VideoItemState> {

  bool isPlay = false;
  int index = 0;
  int value = 0;
  @override
  VideoItemState clone() {
    return VideoItemState()..index = index
    ..isPlay = isPlay
    ..value = value;
  }
}

VideoItemState initState(Map<String, dynamic> args) {
  return VideoItemState();
}
