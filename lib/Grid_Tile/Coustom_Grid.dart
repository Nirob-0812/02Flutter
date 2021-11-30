import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoustomGrid extends StatelessWidget {
  final String? imgUrl;
  final String? Title;
  final String? time;
  final String? Category;
  final List? ingrident;
  final List? direction;
  final VoidCallback? onTap;

  const CoustomGrid(
      {Key? key,
      this.imgUrl,
      this.Title,
      this.time,
      this.ingrident,
      this.Category,
      this.direction,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int ingList = ingrident!.length;
    final String imgs = imgUrl!;
    return InkWell(
      onTap: onTap,
      child: Card(
          elevation: 10,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "$imgUrl",
                  height: 100,
                ),
                Text(
                  "$Title",
                  style: TextStyle(color: Colors.deepPurple),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "$time min",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.utensils,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "$ingList Ingredients",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ])),
    );
  }
}
