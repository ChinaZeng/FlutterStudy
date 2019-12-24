import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 15;

  void _onPressed() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount--;
      } else {
        _favoriteCount++;
      }
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: _isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
          color: Colors.red,
          onPressed: _onPressed,
        ),
        Text("$_favoriteCount"),
      ],
    );
  }
}
