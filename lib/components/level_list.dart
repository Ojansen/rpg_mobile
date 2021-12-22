import 'package:arpg/services/constants.dart';
import 'package:arpg/services/level_const.dart';
import 'package:flutter/material.dart';

ListView levelList = ListView.builder(
  itemCount: levels.length,
  itemBuilder: (BuildContext context, int index) {
    // String key = LevelModel.levels.keys.elementAt(index);
    return Card(
      child: ListTile(
        onTap: () {
          print(levels[index].name);
        },
        title: Text(levels[index].name),
        subtitle: Text(
          levels[index].description,
          style: kSubtitleText,
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(levels[index].spriteName),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            print(levels[index].name);
          },
          child: const Text('Enter'),
        ),
      ),
    );
  },
);
