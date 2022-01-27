import 'package:flutter/material.dart';


class AshesiLogo extends StatelessWidget {
  final bool coloured;
  final double? width;
  const AshesiLogo({
    Key? key,
    this.coloured = false,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(right: 16),
        child: Image.asset(coloured ? "images/logo_coloured.png" : "images/logo_white.png",
            width: width ?? 100,
        )
    );
  }
}
