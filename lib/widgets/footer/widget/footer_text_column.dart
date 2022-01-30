import 'package:flutter/material.dart';


class FooterTextColumn extends StatelessWidget {
  final String header;
  final List<String> children;

  const FooterTextColumn({
    Key? key,
    required this.header,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(header,
        style: Theme.of(context).textTheme.headline6,
        ),

        ...children.map((e) => Text(e)).toList()
      ],
    );
  }
}
