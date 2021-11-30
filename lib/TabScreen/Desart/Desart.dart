import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:bdfoods/FoodData/Food_data.dart';
import 'package:bdfoods/Grid_Tile/Coustom_Grid.dart';
import 'package:flutter/material.dart';

class Desart extends StatelessWidget {
  List DesartFood = Bdfoods["dessert"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
        itemCount: DesartFood.length,
        itemBuilder: (BuildContext contex, int index) {
          return CoustomGrid(
            onTap: () {
              Navigator.pushNamed(context, DetailsPage.route,
                  arguments: DesartFood[index]);
            },
            imgUrl: DesartFood[index]["image"],
            Title: DesartFood[index]["title"],
            time: DesartFood[index]["Time"],
            ingrident: DesartFood[index]["ingredients"],
            Category: DesartFood[index]["Category"],
            direction: DesartFood[index]["directions"],
          );
        });
  }
}
