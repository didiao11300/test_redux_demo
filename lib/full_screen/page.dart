import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter_demo/full_screen/video_list_adapter/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FullTestPage extends Page<FullTestState, Map<String, dynamic>> {
  FullTestPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FullTestState>(
                adapter: NoneConn<FullTestState>() +
                    VideoListAdapter(),
                slots: <String, Dependent<FullTestState>>{
                }),
            middleware: <Middleware<FullTestState>>[
            ],);

}
