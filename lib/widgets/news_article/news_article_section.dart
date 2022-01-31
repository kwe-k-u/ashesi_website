import 'package:ashesi_website/widgets/news_article/news_article_large.dart';
import 'package:ashesi_website/widgets/news_article/news_article_small.dart';
import 'package:ashesi_website/widgets/view_port.dart';
import 'package:flutter/material.dart';


class NewsArticleSection extends StatelessWidget {
  const NewsArticleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ViewPort(
        large: NewsArticleLarge(),
        small: NewsArticleSmall(),
    );
  }
}
