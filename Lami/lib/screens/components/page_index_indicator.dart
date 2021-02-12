import 'package:Lami/constants.dart';
import 'package:flutter/material.dart';

Widget pageIndexIndicator(bool isCurrentPage) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.0),
    height: isCurrentPage ? 20.0 : 16.0,
    width: isCurrentPage ? 20.0 : 16.0,
    decoration: BoxDecoration(
      color: isCurrentPage ? lamiPrimaryColor : Color(0x00000000),
      border: Border.all(color: lamiPrimaryColor),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
