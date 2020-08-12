import 'package:flutter/material.dart';

/// activeTrackとinactiveTrackのtrackHeightを同じにするためのSliderTrackShape
class MyRoundedRectSliderTrackShape extends RoundedRectSliderTrackShape
    with BaseSliderTrackShape {
  @override
  void paint(PaintingContext context, Offset offset,
      {RenderBox parentBox,
      SliderThemeData sliderTheme,
      Animation<double> enableAnimation,
      TextDirection textDirection,
      Offset thumbCenter,
      bool isDiscrete = false,
      bool isEnabled = false,
      double additionalActiveTrackHeight = 2}) {
    // set additionalActiveTrackHeight 0
    super.paint(context, offset,
        parentBox: parentBox,
        sliderTheme: sliderTheme,
        enableAnimation: enableAnimation,
        textDirection: textDirection,
        thumbCenter: thumbCenter,
        isDiscrete: isDiscrete,
        isEnabled: isEnabled,
        additionalActiveTrackHeight: 0);
  }
}
