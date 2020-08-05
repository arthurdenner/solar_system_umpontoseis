import 'package:flutter/material.dart';

class GradientMask extends StatelessWidget {
  const GradientMask({
    Key key,
    @required this.gradient,
    @required this.child,
  })  : assert(gradient != null),
        assert(child != null),
        super(key: key);

  final Gradient gradient;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: gradient.createShader,
      child: child,
    );
  }
}
