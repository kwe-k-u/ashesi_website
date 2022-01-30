import 'package:ashesi_website/constants.dart';
import 'package:flutter/material.dart';


class TitleIconButton extends StatefulWidget {
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final void Function()? onTap;
  const TitleIconButton({
    Key? key,
    required this.icon,
    this.iconSize,
    this.onTap,
    this.iconColor,
  }) : super(key: key);

  @override
  _TitleIconButtonState createState() => _TitleIconButtonState();
}

class _TitleIconButtonState extends State<TitleIconButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: InkWell(
        hoverColor: Colors.transparent,
        child: Icon(
          widget.icon,
          size: widget.iconSize ?? 35,
          color: _isHovered ? ashesiRed : widget.iconColor ?? ashesiWhite,
        ),
        onHover: (hover) {
          setState(() {
            _isHovered = hover;
          });
        },
        onTap: widget.onTap ?? (){},
      ),
    );
  }
}
