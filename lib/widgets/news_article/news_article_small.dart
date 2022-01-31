import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/news_article/widget/news_article_widget.dart';
import 'package:flutter/material.dart';


class NewsArticleSmall extends StatelessWidget {
  const NewsArticleSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NewsArticleWidget(isSmall: true, article: experienceAshesiArticle),
        NewsArticleWidget(isSmall: true, article: globalReachArticle),
        NewsArticleWidget(isSmall: true, article: supportOurWorkArticle),
      ],
    );
  }
}
