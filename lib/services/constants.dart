import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


final kKnobPaint = BasicPalette.red.withAlpha(200).paint();
final kBackgroundPaint = BasicPalette.blue.withAlpha(100).paint();

final kjoystick = JoystickComponent(
  knob: CircleComponent(radius: 20, paint: kKnobPaint),
  background: CircleComponent(radius: 50, paint: kBackgroundPaint),
  margin: const EdgeInsets.only(left: 40, bottom: 40),
);

const kHudTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: Colors.white,
  fontSize: 16,
  fontFamily: 'MajorMono',
);

const kSubtitleText = TextStyle(
  fontSize: 14,
);