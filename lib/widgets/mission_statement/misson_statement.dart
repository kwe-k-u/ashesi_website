import 'package:flutter/material.dart';


class MissionStatement extends StatelessWidget {
  const MissionStatement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Our mission is to educate ethical, entrepreneurial leaders in Africa;",
          style: Theme.of(context).textTheme.headline4,
        ),
        Text("to cultivate within students, the critical thinking skills, the concern for others"
            " and the courage it will take to transform the continent."),

        Text("Where do you see yourself at Ashesi?",
          style: Theme.of(context).textTheme.headline6,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _SectionImage(
                image: "images/student.jpg",
                text: "Apply to be a student"
            ),

            _SectionImage(
                image: "images/career.jpg",
                text: "pursue a career at ashesi"
            ),
          ],
        )
      ],
    );
  }
}






class _SectionImage extends StatelessWidget {
  final String image;
  final String text;
  const _SectionImage({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
                image,
              height: 120,
            ),
          ),
          Text(text.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2!
            .copyWith(fontWeight: FontWeight.w700),)
        ],
      ),
    );
  }
}

