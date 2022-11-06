import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/Gengar.png", "Gengar", "1 review · 5 photos", "Tiene el puesto 094 en la Pokedex"),
        Review("assets/img/charizard.png", "Charizard", "2 review · 5 photos", "Tiene el puesto 006 en la Pokedex"),
        Review("assets/img/pikachu.png", "Pikachu", "2 review · 2 photos", "Tiene el puesto 156 en la Pokedex"),

      ],
    );
  }

}