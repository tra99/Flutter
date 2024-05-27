import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter layout demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://static.photocdn.pt/images/articles/2022/01/12/beautiful_landscape.webp",
              width: double.infinity,
              height: 260,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oeschinen Lake Campground",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(color: Colors.grey,fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 245, 96, 66),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "41",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 28,
                      color: Color.fromARGB(255, 70, 7, 81),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(color: Color.fromARGB(255, 70, 7, 81)),
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      size: 28,
                      color: Color.fromARGB(255, 70, 7, 81),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "ROUTE",
                      style: TextStyle(color: Color.fromARGB(255, 70, 7, 81)),
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 28,
                      color: Color.fromARGB(255, 70, 7, 81),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(color: Color.fromARGB(255, 70, 7, 81)),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alphine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer tobggan run.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
