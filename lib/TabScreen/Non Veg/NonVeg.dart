import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:bdfoods/FoodData/Food_data.dart';
import 'package:bdfoods/Grid_Tile/Coustom_Grid.dart';
import 'package:flutter/material.dart';

class NonVeg extends StatelessWidget {
  List Non_Veg = Bdfoods["non_veg"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
        itemCount: Non_Veg.length,
        itemBuilder: (BuildContext contex, int index) {
          return CoustomGrid(
            onTap: () {
              Navigator.pushNamed(context, DetailsPage.route,
                  arguments: Non_Veg[index]);
            },
            imgUrl: Non_Veg[index]["image"],
            Title: Non_Veg[index]["title"],
            time: Non_Veg[index]["Time"],
            ingrident: Non_Veg[index]["ingredients"],
            Category: Non_Veg[index]["Category"],
            direction: Non_Veg[index]["directions"],
          );
        });
  }
}
