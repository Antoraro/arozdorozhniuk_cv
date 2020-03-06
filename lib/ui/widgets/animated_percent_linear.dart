import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/paint/line_painter.dart';
import 'package:flutter/cupertino.dart';

class AnimatedPercentLinear extends StatefulWidget {
  final double percent;
  final double height;
  final Duration delay;
  final bool reverse;

  AnimatedPercentLinear({
    this.percent = 1.0,
    this.height = 5.0,
    this.delay = const Duration(),
    this.reverse = false,
  });

  @override
  _AnimatedPercentLinearState createState() => _AnimatedPercentLinearState();
}

class _AnimatedPercentLinearState extends State<AnimatedPercentLinear>
    with SingleTickerProviderStateMixin {
  double _progress = 0.0;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
      duration: Duration(milliseconds: UISize.animationDuration),
      vsync: this,
    );
    _animation = _getAnimationTween().animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOutCubic),
    )..addListener(() {
        setState(() {
          _progress = _animation.value;
        });
      });
    Future.delayed(widget.delay, () => controller.forward());
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(
        _progress,
        widget.height,
      ),
    );
  }

  Tween<double> _getAnimationTween() {
    return widget.reverse
        ? Tween(begin: widget.percent, end: 0.0)
        : Tween(begin: 0.0, end: widget.percent);
  }
}
