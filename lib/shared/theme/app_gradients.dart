import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get background;
  Gradient get backgroundInfoCard;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get background => const LinearGradient(
        colors: [
          Color(0xFF45CC93),
          Color(0xFF40B38C),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(2.35619 * pi),
      );

  @override
  Gradient get backgroundInfoCard => const LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFF0FAF7),
        ],
        transform: GradientRotation(2.35619 * pi),
      );
}
