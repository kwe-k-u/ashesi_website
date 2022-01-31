import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/news_article/widget/news_article_widget.dart';
import 'package:flutter/material.dart';


class NewsArticleLarge extends StatelessWidget {
  const NewsArticleLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NewsArticleWidget(article: experienceAshesiArticle),
        NewsArticleWidget(article: globalReachArticle),
        NewsArticleWidget(article: supportOurWorkArticle),
      ],
    );
  }
}
