import 'package:flutter/material.dart';
import 'package:flutter_form_app/components/kartuakun.dart';
import 'package:flutter_form_app/page/kelolaakun.dart';

class HalamanAkun extends StatefulWidget {
  const HalamanAkun({super.key});

  @override
  State<HalamanAkun> createState() => _HalamanAkunState();
}

class _HalamanAkunState extends State<HalamanAkun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Center(
              child: Container(
                  height: 200, width: 200, child: KartuAkun(title: "Contoh"))),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 237, 248, 255)),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Kelola Akun",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 237, 248, 255)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Notifikasi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 237, 248, 255)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 237, 248, 255)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
