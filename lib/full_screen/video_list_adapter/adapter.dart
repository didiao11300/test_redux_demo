import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter_demo/full_screen/state.dart';
import 'package:test_flutter_demo/full_screen/video_component/component.dart';

class VideoListAdapter extends SourceFlowAdapter<FullTestState> {
  VideoListAdapter()
      : super(pool: <String, Component<Object>>{
          "video_item": VideoItemComponent(),
        });
}
