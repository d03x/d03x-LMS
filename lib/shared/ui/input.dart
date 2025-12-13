import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final bool obsecureText;
  const Input({
    super.key,
    required this.hintText,
    this.obsecureText = false,
    required this.controller,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(2),
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        style: TextStyle(fontSize: 13),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          prefixIconColor:Colors.grey,
          filled: true,
          fillColor: const Color.fromARGB(255, 240, 240, 240),
          contentPadding: .directional(start: 9, top: 0, bottom: 0),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 13, color: Colors.black45),
          border: OutlineInputBorder(
            borderRadius: .circular(10.0),
            borderSide: .none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(10.0),
            borderSide: BorderSide(color: Colors.blue, width: 1),
          ),
        ),
      ),
    );
  }
}
