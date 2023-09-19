import 'dart:math';

import 'package:flutter/material.dart';
import 'package:space_app/components/shared/txt_style.dart';
import 'package:space_app/models/planets.dart';
import 'package:space_app/utils/constants/colors.dart';
import 'package:space_app/utils/extension/screen_size.dart';

class PlanetItem extends StatelessWidget {
  const PlanetItem({
    super.key,
    required this.viewPortFraction,
    required this.scale,
    required this.planet,
  });
  final PlanetsModel planet;

  final double viewPortFraction;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return
    
     Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: context.getHeight *
              0.4 *
              max(viewPortFraction, scale - viewPortFraction),
          width: context.getWidth * 0.8,
          decoration: BoxDecoration(
              color: darkBlue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
        ),
        Positioned(
          left: 80,
          bottom: 12,
          child: Image.asset(
            'assets/images/${planet.thumbnail}',
            height: context.getHeight * 0.65 * (scale - viewPortFraction),
            width: context.getWidth * 0.65 * (scale - viewPortFraction),
          ),
        ),
        Positioned(
          left: 36,
          right: 36,
          bottom: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(planet.name!,
                  style: headerStyle.copyWith(color: white, fontSize: 32)),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: blue,
              )
            ],
          ),
        )
      ],
    );
  }
}
