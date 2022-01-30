import 'package:ashesi_website/widgets/footer/footer_large.dart';
import 'package:ashesi_website/widgets/view_port.dart';
import "package:flutter/material.dart";


class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const ViewPort(
        large: FooterLarge()
    );
  }
}
