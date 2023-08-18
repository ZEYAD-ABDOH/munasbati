import 'package:flutter/material.dart';
TextFormField costemFormField(
    {required String textTitle,
    required String? HintText,
    required TextInputType keyboard,
    required IconData icon,
   
     required bool obscureText}) {
  return TextFormField(
    keyboardType: keyboard,
    obscureText:obscureText ,
    decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 38, 47, 54),
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
        label: Text(
          textTitle,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        hintText: HintText,
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        prefixIcon: Icon(icon)),
  );
}
