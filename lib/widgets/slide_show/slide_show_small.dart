import 'dart:async';

import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/slide.dart';
import 'package:ashesi_website/widgets/slide_show/widget/slide_show_widget.dart';
import "package:flutter/material.dart";


class SlideshowSmall extends StatefulWidget {
  const SlideshowSmall({Key? key}) : super(key: key);

  @override
  _SlideshowSmallState createState() => _SlideshowSmallState();
}

class _SlideshowSmallState extends State<SlideshowSmall> {
  // Slide _currentSlide = slides[0];
  int index = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SlideShowWidget(
            height: size.height * 0.5,
            width: size.width,
            onSlideChanged: (newIndex){
              setState(() {
                index = newIndex;
              });
            }
        ),

        Container(
          width: size.width,
          color: ashesiGrey,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                slides[index].headline,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text("Read Story")),
                    TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text("More Stories")),
                  ],
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
