import 'package:bdfoods/FoodData/Food_data.dart';
import 'package:bdfoods/Grid_Tile/Coustom_Grid.dart';
import 'package:flutter/material.dart';

class Rice extends StatelessWidget {
  List Rice_Item = Bdfoods["rice"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
        itemCount: Rice_Item.length,
        itemBuilder: (BuildContext contex, int index) {
          return CoustomGrid(
            imgUrl: Rice_Item[index]["image"],
            Title: Rice_Item[index]["title"],
            time: Rice_Item[index]["Time"],
            ingrident: Rice_Item[index]["ingredients"],
            Category: Rice_Item[index]["Category"],
            direction: Rice_Item[index]["directions"],
          );
        });
  }
}
