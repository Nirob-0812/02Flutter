import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:bdfoods/TabScreen/Bread/Bread.dart';
import 'package:bdfoods/TabScreen/Desart/Desart.dart';
import 'package:bdfoods/TabScreen/FastFood/FastFood.dart';
import 'package:bdfoods/TabScreen/Non%20Veg/NonVeg.dart';
import 'package:bdfoods/TabScreen/Rice/Rice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static const route = "Home";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.grey.shade800,
              child: Column(
                children: [
                  Image.asset("images/drawer.jpg"),
                  Container(
                    color: Colors.grey.shade700,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "All Recipe",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  ListTile(
                      onTap: () {},
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 20,
                        width: 30,
                        child: Center(child: Text("0")),
                      ),
                      title: Text("My Recipes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w100))),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                      onTap: () {},
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 20,
                        width: 30,
                        child: Center(child: Text("12")),
                      ),
                      title: Text("Favourite",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w100))),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                      onTap: () {},
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 20,
                        width: 30,
                        child: Center(child: Text("0")),
                      ),
                      title: Text("Cooked",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w100))),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                      onTap: () {},
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 20,
                        width: 30,
                        child: Center(child: Text("50+")),
                      ),
                      title: Text("Tips",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w100))),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Text(
                        "More",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.white,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Search Recipe",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      FontAwesomeIcons.thumbsUp,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Rate Us",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      FontAwesomeIcons.redo,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      FontAwesomeIcons.puzzlePiece,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "More Apps",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Info",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
