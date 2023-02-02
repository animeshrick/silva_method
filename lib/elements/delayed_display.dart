
import 'dart:async';

import 'package:flutter/material.dart';

class DelayedDisplay extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration fadingDuration;
  final Curve slidingCurve;
  final Offset slidingBeginOffset;
  final bool fadeIn;

  const DelayedDisplay({
    required this.child,
    this.delay = Duration.zero,
    this.fadingDuration = const Duration(milliseconds: 800),
    this.slidingCurve = Curves.decelerate,
    this.slidingBeginOffset = const Offset(0.0, 0.35),
    this.fadeIn = true,
  });

  @override
  _DelayedDisplayState createState() => _DelayedDisplayState();
}

class _DelayedDisplayState extends State<DelayedDisplay>
    with TickerProviderStateMixin {
  late AnimationController _opacityController;

  late Animation<Offset> _slideAnimationOffset;

  Timer? _timer;

  Duration get delay => widget.delay;

  Duration get opacityTransitionDuration => widget.fadingDuration;

  Curve get slidingCurve => widget.slidingCurve;

  /// Simple getter for widget's beginOffset
  Offset get beginOffset => widget.slidingBeginOffset;

  /// Simple getter for widget's fadeIn
  bool get fadeIn => widget.fadeIn;

  /// Initialize controllers, curve and offset with given parameters or default values
  /// Use a Timer in order to delay the animations if needed
  @override
  void initState() {
    super.initState();

    _opacityController = AnimationController(
      vsync: this,
      duration: opacityTransitionDuration,
    );

    final CurvedAnimation curvedAnimation = CurvedAnimation(
      curve: slidingCurve,
      parent: _opacityController,
    );

    _slideAnimationOffset = Tween<Offset>(
      begin: beginOffset,
      end: Offset.zero,
    ).animate(curvedAnimation);

    _runFadeAnimation();
  }

  /// Dispose the opacity controller
  @override
  void dispose() {
    _opacityController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  /// Whenever the widget is updated and that fadeIn is different from the oldWidget, triggers the fade in
  /// or out animation.
  @override
  void didUpdateWidget(DelayedDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.fadeIn == fadeIn) {
      return;
    }
    _runFadeAnimation();
  }

  void _runFadeAnimation() {
    _timer = Timer(delay, () {
      fadeIn ? _opacityController.forward() : _opacityController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _slideAnimationOffset,
        child: widget.child,
      ),
      opacity: _opacityController,
    );
  }
}