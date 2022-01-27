

import 'package:flutter/cupertino.dart';

class TitleBarItem{
  final String title;
  final List<String>? innerItems;

  TitleBarItem({
    required this.title,
    this.innerItems
  });
}