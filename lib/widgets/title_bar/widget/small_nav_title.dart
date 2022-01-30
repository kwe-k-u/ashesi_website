import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/title_bar_item.dart';
import "package:flutter/material.dart";


ThemeData _hoveredTheme = ThemeData(
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.black
    )
  )
);

ThemeData _normalTheme = ThemeData(
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: ashesiWhite
    )
  )
);






class SmallNavTile extends StatefulWidget {
  final TitleBarItem item;

  const SmallNavTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  _SmallNavTileState createState() => _SmallNavTileState();
}

class _SmallNavTileState extends State<SmallNavTile> {
  bool _isHovered = false;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hover){
        setState(() {
          _isHovered = hover;
        });
      },

      child: Theme(
        data: _isHovered ? _hoveredTheme : _normalTheme,
        child: widget.item.innerItems == null ?
        _OptionTile(
            title: widget.item.title,
          showTrailing: widget.item.innerItems != null,
        ) :
            ExpansionTile(
              iconColor: _isHovered ? Colors.black : ashesiWhite,
              textColor: Colors.black,
              onExpansionChanged: (expanded){
                setState(() {
                  _isExpanded = expanded;
                });
              },
              collapsedTextColor: ashesiWhite,
              childrenPadding: const EdgeInsets.only(left: 30),
              trailing: Icon( _isHovered || _isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
              color: _isExpanded ? Colors.black : ashesiWhite,),
                title: Text(widget.item.title),
              children: widget.item.innerItems!.map((e) => SmallNavTile(item: e)).toList(),
            )
        ,
      ),
    );
  }
}







class _OptionTile extends StatefulWidget {
  final String title;
  final bool showTrailing;
  const _OptionTile({
    Key? key,
    required this.title,
    required this.showTrailing
  }) : super(key: key);

  @override
  __OptionTileState createState() => __OptionTileState();
}

class __OptionTileState extends State<_OptionTile> {
  bool _isHovered = false;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (hovered){
        setState(() {
          _isHovered = hovered;
        });
      },



      child: ListTile(
          textColor: _isHovered ? Colors.black : ashesiWhite,
          title: Text(widget.title),
          trailing: widget.showTrailing ? Icon(
            _isHovered ? Icons.arrow_drop_down : Icons.arrow_right,
            color: _isHovered ? Colors.black : ashesiWhite,
          ) : null
      ),
    );
  }
}