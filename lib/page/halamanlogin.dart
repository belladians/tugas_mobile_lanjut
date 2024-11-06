import 'package:flutter/material.dart';
import 'package:flutter_form_app/components/snackbar.dart';
import 'package:flutter_form_app/components/textfield.dart';
import 'package:flutter_form_app/page/halamanlupapas.dart';
import 'package:flutter_form_app/page/halamanpendaftaran.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final control_email = TextEditingController();
  final control_password = TextEditingController();

  Future<void> cekaja(context, email, password) async {
    if (email != "" && password != "") {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showSnackBar(context, "isi semua kolom.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Image.asset('assets/images/logo.jpg'),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Masukkan Email"),
                  InputTextField(
                    control: control_email,
                    hint: "Email",
                    obscure_text: false,
                    keytype: TextInputType.emailAddress,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Masukkan Password"),
                  InputTextField(
                    control: control_password,
                    hint: "Password",
                    obscure_text: true,
                    keytype: TextInputType.text,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                width: 250,
                height: 30,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "belum memiliki akun?",
                          style: TextStyle(fontSize: 10),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SigninPage()));
                          },
                          child: Text(
                            "buat akun disini",
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LupaPassPage()));
                      },
                      child: Text(
                        "Lupa akun?",
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    backgroundColor: Color.fromARGB(255, 63, 121, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () async {
                    cekaja(context, control_email.text.toString(),
                        control_password.text.toString());
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
