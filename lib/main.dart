import 'package:flutter/material.dart';
import 'package:space_app/data/planets_data.dart';
import 'package:space_app/models/planets.dart';
import 'package:space_app/screens/splash_screen.dart';



List<PlanetsModel> listPlanets = [];

void main() {
 for (var element in planetsData["planets"]) {
    listPlanets.add(PlanetsModel.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
            debugShowCheckedModeBanner: false,

      home: SplashScreen(),
    );
  }
}


