import 'package:bdfoods/TabScreen/Bread/Bread.dart';
import 'package:bdfoods/TabScreen/Desart/Desart.dart';
import 'package:bdfoods/TabScreen/FastFood/FastFood.dart';
import 'package:bdfoods/TabScreen/Non%20Veg/NonVeg.dart';
import 'package:bdfoods/TabScreen/Rice/Rice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = "Home";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text("BD Food"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [Colors.lightBlue, Colors.orange.shade900])),
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Fast Food",
                  ),
                  Tab(
                    text: "Bread",
                  ),
                  Tab(
                    text: "Rice",
                  ),
                  Tab(
                    text: "Desart",
                  ),
                  Tab(
                    text: "Non veg",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                FastFood(),
                Bread(),
                Rice(),
                Desart(),
                NonVeg(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
