import 'dart:async';

import 'package:ashesi_website/constants.dart';
import "package:flutter/material.dart";

class SlideShowWidget extends StatefulWidget {
  final double height;
  final void Function(int) onSlideChanged;
  final double width;
  SlideShowWidget({
    Key? key,
    required this.width,
    required this.onSlideChanged,
    required this.height,
  }) : super(key: key);

  @override
  _SlideShowWidgetState createState() => _SlideShowWidgetState();
}

class _SlideShowWidgetState extends State<SlideShowWidget> {
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) async {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % slides.length;
        });
        widget.onSlideChanged(_currentIndex);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(child: child, opacity: animation);
      },
      child: Stack(
        children: [

          Image.asset(
            slides[_currentIndex].image,
            fit: BoxFit.fill,
            key: ValueKey<int>(_currentIndex),
            height: widget.height,
            width: widget.width,
          ),

          //left button
          Positioned(
            top: widget.height * 0.2,
            left: widget.width * 0.01,
            child: IconButton(
              iconSize: widget.height * 0.3,
                icon:  const Icon(Icons.chevron_left,
                  color: Colors.white,
                ),
                onPressed: () {
                  _timer.cancel();

                  setState(() {
                    _currentIndex = (_currentIndex -1) % slides.length;
                  });
                  widget.onSlideChanged(_currentIndex);

                },
              ),
          ),

          //right button
          Positioned(
              top: widget.height * 0.2,
              right: widget.width * 0.01,
              child: IconButton(
                iconSize: widget.height * 0.3,
                icon:  const Icon(Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {
                  _timer.cancel();
                  setState(() {
                    _currentIndex = (_currentIndex +1) % slides.length;
                  });
                  widget.onSlideChanged(_currentIndex);

                },
              )),


        ],
      ),
    );
  }
}
