import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter_demo/full_screen/video_component/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<FullTestState> buildReducer() {
  return asReducer(
    <Object, Reducer<FullTestState>>{
      FullTestAction.refreshListOkay: _refreshListOkay,
      FullTestAction.refreshIndexOkay:_refreshIndexOkay,
    },
  );
}

FullTestState _refreshListOkay(FullTestState state, Action action) {
  var list = action.payload as List<VideoItemState>;
  return state.clone()..listStates = list;
}
FullTestState _refreshIndexOkay(FullTestState state, Action action) {
  var index = action.payload as int;
  print("_refreshIndexOkay()...index:$index");
  List<VideoItemState> newList = List<VideoItemState>.from(state.listStates);
//  newList.firstWhere((it)=>it.isPlay = true)?.isPlay = false;
  for(var data in newList){
    data.isPlay = false;
  }

  newList[index]?.isPlay = true;
  return state.clone()..listStates = newList..curIndex = index;
}
