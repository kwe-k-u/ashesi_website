import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/title_bar_item.dart';
import 'package:ashesi_website/widgets/title_bar/widget/small_nav_title.dart';
import "package:flutter/material.dart";


class SmallNavOptions extends StatefulWidget {
  final List<TitleBarItem> items;
  final void Function() onClose;

  const SmallNavOptions({
    Key? key,
    required this.items,
    required this.onClose,
  }) : super(key: key);

  @override
  _SmallNavOptionsState createState() => _SmallNavOptionsState();
}

class _SmallNavOptionsState extends State<SmallNavOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ashesiRed,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text("MENU"),
                ),
                const Spacer(),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    color: ashesiWhite.withOpacity(0.4),
                    child: IconButton(

                        onPressed: widget.onClose,
                        icon: const Icon(Icons.close)
                    ),
                  ),
                )
              ],
            ),
            ...widget.items.map(
                    (e) => SmallNavTile(
                      item: e
                    )
            ).toList()
          ],
        ),
      ),
    );
  }
}






