
import 'package:flutter/material.dart';
import 'package:space_app/components/shared/txt_style.dart';
import 'package:space_app/models/planets.dart';
import 'package:space_app/utils/constants/colors.dart';
import 'package:space_app/utils/constants/spaces.dart';

class SizeAndDistance extends StatelessWidget {
  const SizeAndDistance({
    super.key,
    required this.planet,
  });

  final PlanetsModel planet;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Size',
                style: subHeaderStyle.copyWith(
                    color: blue, fontSize: 18),
              ),
              pVSpace24,
              Text(
                'd = ${planet.size} km',
                style: pBodyeStyle.copyWith(
                    color: white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Text(
                'Distance from Sun',
                style: subHeaderStyle.copyWith(
                    color: blue, fontSize: 18),
              ),
              const SizedBox(height: 20),
              Text(
                '${planet.distanceFromSun} km',
                style: pBodyeStyle.copyWith(
                    color: white, fontWeight: FontWeight.bold),
              )
            ],
          )
        ]);
  }
}
