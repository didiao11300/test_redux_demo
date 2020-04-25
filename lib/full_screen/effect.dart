import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter_demo/full_screen/video_component/state.dart';
import 'action.dart';
import 'state.dart';

Effect<FullTestState> buildEffect() {
  return combineEffects(<Object, Effect<FullTestState>>{
    Lifecycle.initState: _onInit,
  });
}

void _onInit(Action action, Context<FullTestState> ctx) {

//  ctx.state.controller.addListener((){
//
//    var index = ctx.state.controller.index;
//    print("onPageChanged()...index:$index");
//    if(index != ctx.state.curIndex){
//      print("onPageChanged()...index:$index");
//      ctx.dispatch(FullTestActionCreator.onRefreshIndexOkay(index));
//    }
//
//  });
  List<VideoItemState> list = [];
  for (int iLoop = 0; iLoop < 10; iLoop++) {
    VideoItemState vis = VideoItemState()..index = iLoop;
    list.add(vis);
  }
  list[0]?.isPlay = true;
  ctx.dispatch(FullTestActionCreator.onRefreshListOkay(list));
}
