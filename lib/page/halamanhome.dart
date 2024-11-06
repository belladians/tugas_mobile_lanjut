import 'package:flutter/material.dart';
import 'package:flutter_form_app/components/kartuhorizontal.dart';
import 'package:flutter_form_app/components/kartuvertikal.dart';

class HalamanHome extends StatefulWidget {
  const HalamanHome({super.key});

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  final List cardlist = [
    "Tes",
    "Tes",
    "Tes",
    "Tes",
    "Tes",
    "Tes",
    "Tes",
    "Tes",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guest",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Widget Grid View",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 130,
                  child: KartuHor(
                    title: cardlist[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Widget Grid View",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: cardlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200,
                  child: KartuVer(
                    title: cardlist[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
