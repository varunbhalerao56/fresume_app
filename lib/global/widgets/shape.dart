import 'package:flutter/material.dart';

class Shape {
  static BorderRadius roundedShapeOnly({double? topLeft, double? bottomLeft, double? topRight, double? bottomRight}) {
    return BorderRadius.only(
        topLeft: topLeft == null ? const Radius.circular(0) : Radius.circular(topLeft),
        bottomLeft: bottomLeft == null ? const Radius.circular(0) : Radius.circular(bottomLeft),
        topRight: topRight == null ? const Radius.circular(0) : Radius.circular(topRight),
        bottomRight: bottomRight == null ? const Radius.circular(0) : Radius.circular(bottomRight));
  }

  static BorderRadius roundedShapeAll(double radius) {
    return BorderRadius.all(Radius.circular(radius));
  }

  ///All sided rectangle borded taking in [radius]
  static RoundedRectangleBorder roundedRectangleBorderAll(double radius) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
    );
  }

  ///Allow more customization for each edgle
  static RoundedRectangleBorder roundedRectangleBorderOnly(
      {double? topLeft, double? bottomLeft, double? topRight, double? bottomRight}) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: topLeft == null ? const Radius.circular(0) : Radius.circular(topLeft),
          bottomLeft: bottomLeft == null ? const Radius.circular(0) : Radius.circular(bottomLeft),
          topRight: topRight == null ? const Radius.circular(0) : Radius.circular(topRight),
          bottomRight: bottomRight == null ? const Radius.circular(0) : Radius.circular(bottomRight)),
    );
  }
}
