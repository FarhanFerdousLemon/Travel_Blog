import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'package:travelapp/widget/most_populer.dart';
import 'package:travelapp/widget/travel_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 244, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 244, 237),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Travel Blog",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(flex: 4, child: TravelInfo()),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 20),
                child: Text(
                  "Most Populer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                "See More",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(flex: 3, child: MostPopuler())
        ],
      ),
    );
  }
}
