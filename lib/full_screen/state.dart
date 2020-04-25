import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:test_flutter_demo/full_screen/video_component/state.dart';

class FullTestState extends MutableSource implements Cloneable<FullTestState> {
  List<VideoItemState> listStates;
  int curIndex = 0;
//  SwiperController controller = SwiperController();

  @override
  FullTestState clone() {
    return FullTestState()
      ..listStates = listStates
      ..curIndex = curIndex
//    ..controller = controller
    ;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return listStates[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return "video_item";
  }

  @override
  // TODO: implement itemCount
  int get itemCount => listStates?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    listStates[index] = data;
  }
}

FullTestState initState(Map<String, dynamic> args) {
  var state =  FullTestState();

  return state;
}
