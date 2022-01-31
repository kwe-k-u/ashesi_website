import 'package:ashesi_website/constants.dart';
import 'package:flutter/material.dart';


class StatTile extends StatelessWidget {
  final String value;
  final bool isSmall;
  final String description;
  const StatTile({
    Key? key,
    required this.value,
    this.isSmall = false,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? MediaQuery.of(context).size.height * 0.25 : null,
      padding:  EdgeInsets.all(isSmall ? 16 : 32),
      child: Column(
        children: [
          Text(value,
            style: isSmall ? Theme.of(context).textTheme.headline1!
            .copyWith(color: Colors.grey, fontWeight: FontWeight.w200) :
            Theme.of(context).textTheme.headline2!
                .copyWith(color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Text(description.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2!
                .copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.w200
            ),
          ),
        ],
      ),
    );
  }
}
