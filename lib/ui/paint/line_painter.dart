import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  Paint _paintBkgLine;
  Paint _paintFrontLine;
  double _progress;

  LinePainter(this._progress, height) {
    _paintBkgLine = Paint()
      ..color = AppColors.shadow.withOpacity(0.4)
      ..strokeWidth = height
      ..strokeCap = StrokeCap.round;
    _paintFrontLine = Paint()
      ..color = AppColors.primary
      ..strokeWidth = height
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0.0, 0.0),
      Offset(size.width, size.height),
      _paintBkgLine,
    );
    canvas.drawLine(
      Offset(0.0, 0.0),
      Offset(size.width * _progress, size.height),
      _paintFrontLine,
    );
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate._progress != _progress;
  }
}
