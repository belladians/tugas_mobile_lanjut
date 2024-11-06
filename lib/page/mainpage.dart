import 'package:flutter/material.dart';
import 'package:flutter_form_app/components/appbar.dart';
import 'package:flutter_form_app/page/halamanakun.dart';
import 'package:flutter_form_app/page/halamanhome.dart';
import 'package:flutter_form_app/page/logout.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected_index = 0;
  List pages = [HalamanHome(), HalamanAkun(), Logout()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: ResAppbar(),
      body: Center(
        child: pages.elementAt(selected_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 63, 121, 255),
        currentIndex: selected_index,
        onTap: tappage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "akun"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout")
        ],
      ),
    );
  }

  void tappage(index) {
    setState(() {
      selected_index = index;
    });
  }
}
