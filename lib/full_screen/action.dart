import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter_demo/full_screen/video_component/state.dart';

//TODO replace with your own action
enum FullTestAction { refreshListOkay, refreshIndexOkay }

class FullTestActionCreator {
  static Action onRefreshListOkay(List<VideoItemState> list) {
    return Action(FullTestAction.refreshListOkay, payload: list);
  }

  static Action onRefreshIndexOkay(int index) {
    return Action(FullTestAction.refreshIndexOkay, payload: index);
  }
}
