import 'package:ashesi_website/utils/title_bar_item.dart';
import 'package:ashesi_website/widgets/title_bar/title_bar_large.dart';
import 'package:ashesi_website/widgets/title_bar/title_bar_small.dart';
import 'package:ashesi_website/widgets/view_port.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final List<TitleBarItem> items;
  final void Function() onMenuButtonTap;

  const TitleBar({
    Key? key,
    required this.onMenuButtonTap,
    required this.items }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewPort(
      large: TitleBarLarge(
        items: items,
      ),
      medium: TitleBarSmall(items: items,onMenuTap: onMenuButtonTap),
      small: TitleBarSmall(items: items, onMenuTap: onMenuButtonTap),
    );
  }
}