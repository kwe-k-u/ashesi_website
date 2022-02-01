import 'package:ashesi_website/widgets/slide_show/slide_show_large.dart';
import 'package:ashesi_website/widgets/slide_show/slide_show_small.dart';
import 'package:ashesi_website/widgets/view_port.dart';
import 'package:flutter/material.dart';


class Slideshow extends StatelessWidget {
  const Slideshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ViewPort(
        large: SlideshowLarge(),
      small: SlideshowSmall(),
    );
  }
}
