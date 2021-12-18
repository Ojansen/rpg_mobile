import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/cupertino.dart';


final kKnobPaint = BasicPalette.red.withAlpha(200).paint();
final kBackgroundPaint = BasicPalette.blue.withAlpha(100).paint();

final joystick = JoystickComponent(
  knob: CircleComponent(radius: 30, paint: kKnobPaint),
  background: CircleComponent(radius: 90, paint: kBackgroundPaint),
  margin: const EdgeInsets.only(left: 40, bottom: 40),
);