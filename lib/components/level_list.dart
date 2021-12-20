import 'package:arpg/models/level_model.dart';
import 'package:flutter/material.dart';

final ListView levelList = ListView.builder(
  itemCount: LevelModel.levels.length,
  itemBuilder: (BuildContext context, int index) {
    // String key = LevelModel.levels.keys.elementAt(index);
    return Row(
      children: <Widget>[
        Text('$index : '),
      ],
    );
  },
);
