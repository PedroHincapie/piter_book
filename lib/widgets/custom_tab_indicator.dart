import 'package:flutter/material.dart';

class RoundedRectangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  RoundedRectangleTabIndicator(
      {Key key,
      @required Color color,
      @required double weight,
      @required double width})
      : _painter = _RRectanglePaintColor(color, weight, width);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _RRectanglePaintColor extends BoxPainter {
  final Paint _paint;
  final double weight;
  final double width;

  _RRectanglePaintColor(Color color, this.weight, this.width)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset customOffset =
        offset + Offset(0, configuration.size.height - weight);

    //custome Recatangle
    Rect myRect = customOffset & Size(width, weight);

    //Custom Rounded Rectangle
    RRect myRRect = RRect.fromRectXY(myRect, weight, weight);
    canvas.drawRRect(myRRect, _paint);
  }
}
