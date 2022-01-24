import 'package:bdfoods/TabScreen/Video_Play/Video_Play.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DetailsPage extends StatelessWidget {
  static const route = "Detals";

  void shareData(Map details) {
    Share.share("${details["youtubeUrl"]}");
  }

  @override
  Widget build(BuildContext context) {
    final Map DetailsData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              shareData(DetailsData);
            },
            icon: Icon(Icons.share, size: 30),
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.red,
        title: Text(
          "Details",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 70),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Cetagory: ${DetailsData["Category"]}",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Image.asset(
                  DetailsData["image"],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.25),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${DetailsData["title"]}",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    color: Colors.orange,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Cooked",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    color: Colors.deepOrangeAccent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Favorite",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    color: Colors.red,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Video_Play(
                            title: DetailsData["title"],
                            VideoUrl: DetailsData["youtubeUrl"],
                          );
                        }));
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.movie,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Videos",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 40,
                          child: Text(
                            "Ingredient: ",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        for (int i = 0;
                            i < DetailsData["ingredients"].length;
                            i++)
                          Row(
                            children: [
                              Text(
                                  "${i + 1})  ${DetailsData["ingredients"][i]}"),
                            ],
                          ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 40,
                          child: Text(
                            "Direction: ",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        for (int i = 0;
                            i < DetailsData["directions"].length;
                            i++)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                      "${i + 1})  ${DetailsData["directions"][i]}\n")),
                            ],
                          ),
                        // Container(
                        //   alignment: Alignment.topLeft,
                        //   height: 40,
                        //   child: (
                        //     "Watch on Youtube: ${DetailsData["youtubeUrl"]}",
                        //     style: TextStyle(
                        //       color: Colors.deepOrangeAccent,
                        //       fontSize: 28,
                        //     ),
                        //   ),
                        // ),
                        // Divider(
                        //   thickness: 2,
                        //   color: Colors.orange,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
