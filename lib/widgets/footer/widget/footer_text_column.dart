import 'package:ashesi_website/constants.dart';
import 'package:flutter/material.dart';


class FooterTextColumn extends StatelessWidget {
  final String header;
  final EdgeInsets? margin;
  final List<String> children;

  const FooterTextColumn({
    Key? key,
    this.margin,
    required this.header,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: margin ?? const EdgeInsets.all(8) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(header,
          style: Theme.of(context).textTheme.headline6!.copyWith(color: ashesiWhite),
          ),

          ...children.map((e) => Text(e)).toList()
        ],
      ),
    );
  }
}
