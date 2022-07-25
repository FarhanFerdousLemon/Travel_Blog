import 'package:flutter/material.dart';
import 'package:travelapp/model/travel.dart';

class MostPopuler extends StatefulWidget {
  final travel_list = Travel.mostPopulerTravelBlog();

  @override
  State<MostPopuler> createState() => _MostPopulerState();
}

class _MostPopulerState extends State<MostPopuler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: widget.travel_list.length,
          itemBuilder: (context, index) {
            var travel = widget.travel_list[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset(
                      travel.img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 80,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            travel.name,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            travel.address,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ))
              ],
            );
          }),
    );
  }
}
