import 'dart:async';

import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/slide.dart';
import 'package:ashesi_website/widgets/slide_show/widget/slide_show_widget.dart';
import "package:flutter/material.dart";


class SlideshowLarge extends StatefulWidget {
  const SlideshowLarge({Key? key}) : super(key: key);

  @override
  _SlideshowLargeState createState() => _SlideshowLargeState();
}

class _SlideshowLargeState extends State<SlideshowLarge> {
  // Slide _currentSlide = slides[0];
  int index = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SlideShowWidget(
            height: size.height,
            width: size.width,
          onSlideChanged: (newIndex){
              setState(() {
                index = newIndex;
              });
          }
        ),

        Positioned(
            bottom: size.height * 0.1,
            child: SizedBox(
              width: size.width,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: Column(
                      children: [
                        Text(
                          slides[index].headline,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text("Read Story")),
                              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text("More Stories")),
                            ],
                          ),
                        ),


                        SizedBox(height: size.height * 0.03,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.keyboard_arrow_down,
                                size: size.height * 0.1,
                                color: Colors.white,
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))

      ],
    );
  }
}
