import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build

  // initialize the variabel for isFav and for the cound number of favorites
  bool _isFavorited = false;
  int _favoriteCount = 41;
  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  // create a function with _ in front of the name because its private and cannot be use in other file/screen
  void _toggleFavorite() {
    // setstate is to change the state of the application, that is why use statefull widget
    setState(() {
      if (_isFavorited) {
        // if isFav = true kurangin variabel favCount -1
        _favoriteCount -= 1;
        //  ubah isFav menjadi kebalikannya atau false
        _isFavorited = !_isFavorited;
      } else {
        // jika isFav = false tambahkan variabel favCount +1
        _favoriteCount += 1;
        // ubah isFav menjadi kebalikannya atau true
        _isFavorited = !_isFavorited;
      }
    });
  }
  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            // if isFav = true ubah icon menjadi filled Star, jika tidak hanya border saja
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            // showing the  favCount number to the screen
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}
