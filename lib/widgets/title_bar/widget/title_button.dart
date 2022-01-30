import 'package:ashesi_website/constants.dart';
import 'package:flutter/material.dart';

class TitleButton extends StatefulWidget {
  final Widget child;
  final void Function(bool) onHover;
  const TitleButton({
    Key? key,
    required this.onHover,
    required this.child
  }) : super(key: key);

  @override
  _TitleButtonState createState() => _TitleButtonState();
}

class _TitleButtonState extends State<TitleButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: (){

        },
        onHover: (hover) {
          setState(() {
            _isHovered = hover;
            widget.onHover(_isHovered);
          });
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _isHovered ? ashesiRed : Colors.transparent,
                width: 2
              )
            )
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
