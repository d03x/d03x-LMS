import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarTheme extends AppBarTheme {
  CustomAppBarTheme._()
    : super(
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(width: 0.5, color: CupertinoColors.systemGrey4),
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 19,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
      );
  static final CustomAppBarTheme instance = CustomAppBarTheme._();
}
