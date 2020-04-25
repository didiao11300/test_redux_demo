import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoItemState> buildEffect() {
  return combineEffects(<Object, Effect<VideoItemState>>{
//    VideoItemAction.action: _onAction,
    Lifecycle.didChangeDependencies:_didChangeDependencies,
    Lifecycle.initState:_initState,
    Lifecycle.didUpdateWidget:_didUpdateWidget,
  });
}

void _didUpdateWidget(Action action, Context<VideoItemState> ctx) {
  print("video_item: _didUpdateWidget index${ctx.state.index} payload:${action.payload} state:${ctx.state.isPlay}");
  ctx.dispatch(VideoItemActionCreator.onRefresh());
}
void _didChangeDependencies(Action action, Context<VideoItemState> ctx) {
  print("video_item: _didChangeDependencies index${ctx.state.index} payload:${action.payload} state:${ctx.state.isPlay}");
}
void _initState(Action action, Context<VideoItemState> ctx) {
  print("video_item: _initState index${ctx.state.index} payload:${action.payload}");
}
