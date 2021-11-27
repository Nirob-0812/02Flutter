import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? img;
  final String? titl;
  final String? Ctgry;
  final List? ingrdnt;
  final List? directn;

  const DetailsPage(
      {Key? key, this.img, this.titl, this.Ctgry, this.ingrdnt, this.directn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imagess = img.toString();
    final List? get_ingredient = ingrdnt;
    final List? get_direction = directn;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Details",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 70),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Cetagory: $Ctgry",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagess,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$titl",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 50,
                  child: Text(
                    "Ingredient: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: get_ingredient!.length,
                      itemBuilder: (contex, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${index + 1}) " + get_ingredient[index]),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 50,
                //decoration: BoxDecoration(
                // boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 2)],
                // borderRadius: BorderRadius.all(Radius.circular(2))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Direction: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: get_direction!.length,
                      itemBuilder: (contex, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${index + 1}) ${get_direction[index]}"),
                        );
                      }),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
