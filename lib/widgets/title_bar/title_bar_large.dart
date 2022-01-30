import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/title_bar_item.dart';
import 'package:ashesi_website/widgets/ashesi_logo.dart';
import 'package:ashesi_website/widgets/title_bar/widget/title_button.dart';
import 'package:ashesi_website/widgets/title_bar/widget/title_icon_button.dart';
import 'package:flutter/material.dart';

class TitleBarLarge extends StatefulWidget {
  final List<TitleBarItem> items;


  const TitleBarLarge({
    Key? key,
    required this.items
  }) : super(key: key);

  @override
  _TitleBarLargeState createState() => _TitleBarLargeState();

}

class _TitleBarLargeState extends State<TitleBarLarge> {
  List<TitleBarItem>? subItems;
  GlobalKey key = GlobalKey();




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          AshesiLogo(),


            ...widget.items.map((e) => TitleButton(
                child: Text(e.title),
              onHover: (isHovered){
                  if (isHovered) {
                    if (e.innerItems != null) {
                      setState(() {
                        subItems = e.innerItems;
                      });
                    }
                  } else {
                    setState(() {
                      subItems = null;
                    });
                  }
              },

            ))
                .toList(),

            const TitleIconButton(
              icon: Icons.search,),

          ],
        ),

        subItems != null ?
            Container(
              color: ashesiGrey,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  ...subItems!.map((e) => _SubItemButton( title: e.title)).toList(),
                  Spacer(),

                ],
              ),
            )
            : Container()
      ],
    );
  }
}






class _SubItemButton extends StatelessWidget {
  final String title;
  const _SubItemButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),child: Text(title));


  }
}
