import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hint;
  final bool obscure_text;
  final keytype;
  final control;
  InputTextField(
      {super.key,
      required this.hint,
      required this.obscure_text,
      required this.keytype,
      this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: 50,
        width: 250,
        child: TextField(
          controller: control,
          keyboardType: keytype,
          obscureText: obscure_text,
          decoration: InputDecoration(
            focusColor: Colors.black,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[300], fontSize: 15),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color: const Color.fromARGB(255, 0, 0, 0))),
          ),
        ),
      ),
    );
  }
}
