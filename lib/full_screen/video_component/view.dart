import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    VideoItemState state, Dispatch dispatch, ViewService viewService) {
  var width = MediaQuery.of(viewService.context).size.width;
  var height = MediaQuery.of(viewService.context).size.height;
  return Container(
      width: width,
      height: height,
      child: Stack(children: <Widget>[
        state.isPlay
            ? Container(
                width: width,
                height: height,
                color: Colors.red,
                child: Center(
                    child: Text("index:${state.index} play:${state.isPlay}")),
              )
            : Container(
                width: width,
                height: height,
                color: Colors.white,
                child: Center(
                    child: Text("index:${state.index} play:${state.isPlay}"))),
        Positioned(
          bottom: 50,
          left: 50,
          child: RaisedButton(
            child: Text(
              "${state.value}",
            ),
            onPressed: () {
              var newValue = state.value + 1;
              print("item ${state.index} click $newValue");
              dispatch(VideoItemActionCreator.onValueAdd(newValue));
            },
          ),
        ),
      ]));
}
