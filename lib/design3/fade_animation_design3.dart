import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({super.key, this.delay = 0, required this.child});

  @override
  Widget build(BuildContext context) {
    final MovieTween tween = MovieTween()
      ..scene(
        begin: const Duration(milliseconds: 0),
        end: const Duration(milliseconds: 1000),
      ).tween('opacity', Tween(begin: 0.0, end: 1.0))
      ..scene(
        begin: const Duration(milliseconds: 200),
        end: const Duration(milliseconds: 1000),
      ).tween(
        'translateX',
        Tween(begin: 120.0, end: 0.0),
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      tween: tween,
      duration: tween.duration,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get('opacity'),
        child: Transform.translate(
          offset: Offset(value.get('translateX'), 0),
          child: child,
        ),
      ),
    );
  }
}
