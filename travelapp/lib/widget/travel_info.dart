import 'package:flutter/material.dart';
import 'package:travelapp/model/travel.dart';

class TravelInfo extends StatefulWidget {
  final travel_list = Travel.genareteTravelBlog();

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
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
                  borderRadius: BorderRadius.circular(40),
                  //clipBehavior: Clip.none,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Image.asset(
                      travel.img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 40,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            travel.name,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
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
