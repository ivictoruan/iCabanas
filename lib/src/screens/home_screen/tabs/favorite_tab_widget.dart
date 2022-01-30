import 'package:flutter/material.dart';

class FavoriteTabWidget extends StatelessWidget {
  const FavoriteTabWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: const [
                Icon(Icons.favorite),
                Text("No Favorites yet",) 
              ]
    );
  }
}