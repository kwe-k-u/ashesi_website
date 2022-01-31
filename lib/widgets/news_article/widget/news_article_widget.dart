import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/utils/news_article_model.dart';
import 'package:flutter/material.dart';


class NewsArticleWidget extends StatelessWidget {
  final NewsArticleModel article;
  final bool isSmall;

  const NewsArticleWidget({
    Key? key,
    required this.article,
    this.isSmall = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: isSmall? size.width : size.width * 0.2,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(article.title,
              style: Theme.of(context).textTheme.headline6!
              .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(article.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( article.description,
              maxLines: 7,
              style: Theme.of(context).textTheme.bodyText2!
              .copyWith(fontSize: 20, fontWeight: FontWeight.w100, color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){},
                child: Text(article.actionText,
                  style: const TextStyle(
                      color: ashesiRed
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
