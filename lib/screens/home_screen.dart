import 'package:flutter/material.dart';
import 'package:space_app/components/categories/categories_component.dart';
import 'package:space_app/components/news/astronomical_news.dart';
import 'package:space_app/components/news/news_item.dart';
import 'package:space_app/components/planets/planets_card.dart';
import 'package:space_app/components/shared/txt_style.dart';

import 'package:space_app/utils/constants/colors.dart';
import 'package:space_app/utils/constants/spaces.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text("Welcome!",
                      style: headerStyle.copyWith(color: white, fontSize: 32)),
                ),
                pVSpace16,
                const CategoriesComponent(),
                pVSpace24,
                const PlanetsCard(),
                const AstronomicalNews(),
                pVSpace16,
                const NewsItem()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
