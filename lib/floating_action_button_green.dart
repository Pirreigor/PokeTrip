import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false;
  void onPressedFav(){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a Favoritos"),
        )
    );
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Favorito",
      onPressed: onPressedFav,
      child: Icon(
          this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}