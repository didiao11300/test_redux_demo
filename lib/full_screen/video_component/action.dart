import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoItemAction { refresh,valueAdd }

class VideoItemActionCreator {
  static Action onRefresh() {
    return const Action(VideoItemAction.refresh);
  }
  static Action onValueAdd(int newValue) {
    return  Action(VideoItemAction.valueAdd,payload: newValue);
  }
}
