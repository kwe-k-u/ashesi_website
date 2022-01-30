import 'package:ashesi_website/constants.dart';
import 'package:flutter/material.dart';

class ViewPort extends StatefulWidget {
  final Widget large;
  final Widget? small;
  final Widget? medium;
  const ViewPort({Key? key, required this.large, this.medium, this.small}) : super(key: key);

  @override
  _ViewPortState createState() => _ViewPortState();
}

class _ViewPortState extends State<ViewPort> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        //large screens
        if (constraints.maxWidth >= LARGE_SCREEN) {
          return widget.large;


          //medium screens
        } else if (constraints.maxWidth > MEDIUM_SCREEN) {
          return widget.medium ?? widget.large;


          //small screens
        } else {
          return widget.small ?? widget.large;
        }
      },
    );
  }
}
