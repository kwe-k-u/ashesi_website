import 'package:ashesi_website/utils/title_bar_item.dart';
import 'package:ashesi_website/widgets/ashesi_logo.dart';
import 'package:ashesi_website/widgets/title_bar.dart/title_bar_large.dart';
import 'package:ashesi_website/widgets/title_bar.dart/widget/title_icon_button.dart';
import 'package:ashesi_website/widgets/title_bar.dart/widget/title_button.dart';
import "package:flutter/material.dart";


class TitleBarSmall extends StatefulWidget {
  final List<TitleBarItem> items;
  const TitleBarSmall({
    Key? key,
    required this.items
  }) : super(key: key);

  @override
  _TitleBarSmallState createState() => _TitleBarSmallState();
}

class _TitleBarSmallState extends State<TitleBarSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AshesiLogo(coloured: true,),

          Spacer(),
          TitleIconButton(iconColor: Colors.grey, icon: Icons.menu, iconSize: 35,),
          TitleIconButton(iconColor: Colors.grey, icon: Icons.search, iconSize: 35,),
        ],
      ),
    );
  }
}




