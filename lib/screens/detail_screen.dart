import 'package:flutter/material.dart';
import 'package:space_app/components/categories/categories_planet_component.dart';
import 'package:space_app/components/icons_component.dart';
import 'package:space_app/components/informationPlanet/size_and_distance.dart';
import 'package:space_app/components/shared/txt_style.dart';

import 'package:space_app/models/planets.dart';
import 'package:space_app/utils/constants/colors.dart';
import 'package:space_app/utils/constants/spaces.dart';
import 'package:space_app/utils/extension/screen_size.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.planet});
  final PlanetsModel planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Stack(
          children: [
            pVSpace24,
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: IconsComponent(),
                ),
                pVSpace24,
                const CategoriesPlanetComponent(),
                pVSpace64,
                Image.asset(
                  'assets/images/${planet.thumbnail}',
                  width: context.getWidth * 0.8,
                ),
                pVSpace24,
                Text(
                  planet.name!,
                  style: headerStyle.copyWith(fontSize: 32, color: white),
                ),
                pVSpace24,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: SizeAndDistance(planet: planet),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
