import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    FullTestState state, Dispatch dispatch, ViewService viewService) {
  var listAdapter = viewService.buildAdapter();
  var height = MediaQuery.of(viewService.context).size.height;

  return Scaffold(
    backgroundColor: Color(0xff12131C),
    body:
//      NotificationListener<ScrollEndNotification>(
//        onNotification: (notification) {
//          if (notification is ScrollEndNotification) {
////  l.d('autoPlay', '滑动停止触发 auto play');
//            var endScrollOffset = notification.metrics.pixels;
//            var index = (endScrollOffset) ~/ height;
//            print("NotificationListener()...$index");
//            dispatch(FullTestActionCreator.onRefreshIndexOkay(index));
//          }
//          return true;
//        },
//        child:
        PageView.builder(
//      controller: ScrollController(),
//      pageSnapping: false,
      itemBuilder: listAdapter.itemBuilder,
      itemCount: listAdapter.itemCount,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
//          itemExtent: height,
//          cacheExtent: 2*height,

      onPageChanged: (int index) {
        print("onPageChanged()...index:$index");
        dispatch(FullTestActionCreator.onRefreshIndexOkay(index));
      },
//        ),
    ),
  );
}
