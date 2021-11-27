import 'package:bdfoods/FoodData/Food_data.dart';
import 'package:bdfoods/Grid_Tile/Coustom_Grid.dart';
import 'package:flutter/material.dart';

class FastFood extends StatelessWidget {
  List Fstfood = Bdfoods["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
        itemCount: Fstfood.length,
        itemBuilder: (BuildContext contex, int index) {
          return CoustomGrid(
            imgUrl: Fstfood[index]["image"],
            Title: Fstfood[index]["title"],
            time: Fstfood[index]["Time"],
            ingrident: Fstfood[index]["ingredients"],
            Category: Fstfood[index]["Category"],
            direction: Fstfood[index]["directions"],
          );
        });
  }
}
