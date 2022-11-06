import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_detail.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final detailProfile = Padding(
      padding: const EdgeInsets.only(left: 12, top: 85, right: 12),
      child: Row(
        children: <Widget>[
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img/profile.png")),
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Ash Ketchump\n",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: "Monoton")),
              TextSpan(
                  text: "ash_ketchump@gmail.com",
                  style: TextStyle(
                      color: Colors.white70, fontSize: 12, fontFamily: "Monoton"))
            ])),
          )
        ],
      ),
    );

    final widgetMenu = Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          createIconButton(Icons.bookmark_border, mini: true, active: true),
          createIconButton(Icons.card_giftcard, mini: true),
          createIconButton(Icons.add, active: true),
          createIconButton(Icons.mail_outline, mini: true),
          createIconButton(Icons.person, mini: true)
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        GradientBack(
          "Perfil",
          heigth: 380,
        ),
        Positioned(
          child: Icon(
            Icons.settings,
            size: 15,
            color: Colors.white38,
          ),
          right: 20,
          top: 45,
        ),
        Column(
          children: <Widget>[detailProfile, widgetMenu],
        ),
        ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 270),
          children: <Widget>[
            CardImageDetail(
                "Region Hoenn",
                "Hoenn es la tercera región del mundo Pokémon y se dio a conocer por primera vez en los videojuegos Pokémon Rubí y Zafiro, que hicieron su debut en Japón en 2002.",
                "assets/img/hoeen.jpeg",
                13000),
            CardImageDetail(
                "Region Jhoto",
                " Es una región casi llana con una meseta al este y un sistema montañoso al noreste en el cual la cima más alta es el Mt. Plateado.",
                "assets/img/jhoto.jpeg",
                13000),
          ],
        )
      ],
    );
  }

  Widget createIconButton(IconData iconData,
      {bool mini = false, bool active = false}) {
    return Expanded(
      flex: 1,
      child: Container(
        height: mini ? 35 : 60,
        width: mini ? 35 : 60,
        child: Center(
          child: Icon(
            iconData,
            color: Color(0xFF584CD1),
            size: mini ? 20 : 50,
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? Colors.white : Colors.white54),
      ),
    );
  }
}