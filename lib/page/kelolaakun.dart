import 'package:flutter/material.dart';
import 'package:flutter_form_app/components/appbar.dart';
import 'package:flutter_form_app/components/kartuhorizontal.dart';
import 'package:flutter_form_app/components/textfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ResAppbar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Container(
                    height: 180, width: 150, child: KartuHor(title: "Contoh"))),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      InputTextField(
                        hint: "email",
                        obscure_text: false,
                        keytype: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama"),
                      InputTextField(
                        hint: "nama",
                        obscure_text: false,
                        keytype: TextInputType.text,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nomor Telepon"),
                      InputTextField(
                        hint: "nomor telepon",
                        obscure_text: false,
                        keytype: TextInputType.text,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alamat"),
                      InputTextField(
                        hint: "alamat",
                        obscure_text: true,
                        keytype: TextInputType.text,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 63, 121, 255),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 300,
                    child: Center(
                      child: Text(
                        'Ubah Profile',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
