import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VideoItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoItemState>>{
      VideoItemAction.refresh: _onRefresh,
      VideoItemAction.valueAdd: _valueAdd,
    },
  );
}

VideoItemState _onRefresh(VideoItemState state, Action action) {
  return state.clone();

}
VideoItemState _valueAdd(VideoItemState state, Action action) {
  var newValue = action.payload as int;
  print("_valueAdd()...index:${state.index} newValue:$newValue");
 return  state.clone()..value = newValue;
}
