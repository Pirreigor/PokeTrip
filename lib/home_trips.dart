import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String descriptionDummy= "es una especie de Pokémon de Nintendo y de la franquicia de Pokémon de Game Freak. Este Pokémon es de tipo fantasma y veneno. Tiene muchas púas en su espalda, y tiene unos imponentes ojos rojos y una sonrisa larga y";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[

        ListView(
          children: <Widget>[
            DescriptionPlace("Gengar", 4, descriptionDummy),
            ReviewList()

          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}