import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class LanguageLevel extends StatefulWidget {
  final String text;
  final double percent;
  final double strokeHeight;
  final double width;

  LanguageLevel(
    this.text, {
    this.width = UISize.langLevelWidthDesktop,
    this.percent = 1.0,
    this.strokeHeight = 5.0,
  });

  @override
  _LanguageLevelState createState() => _LanguageLevelState();
}

class _LanguageLevelState extends State<LanguageLevel>
    with SingleTickerProviderStateMixin {
  double _progress = 0.0;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: widget.percent).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {
          _progress = animation.value;
        });
      });
    Future.delayed(const Duration(milliseconds: 300), () {
      controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 5.0),
        SizedBox(
          width: widget.width,
          child: CustomPaint(
            painter: LinePainter(
              _progress,
              widget.strokeHeight,
            ),
          ),
        ),
      ],
    );
  }
}

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
