import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
