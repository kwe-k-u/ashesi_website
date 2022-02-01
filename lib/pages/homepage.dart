import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/footer/footer.dart';
import 'package:ashesi_website/widgets/mission_statement/misson_statement.dart';
import 'package:ashesi_website/widgets/news_article/news_article_section.dart';
import 'package:ashesi_website/widgets/population_stats/population_stats.dart';
import 'package:ashesi_website/widgets/slide_show/slide_show.dart';
import 'package:ashesi_website/widgets/title_bar/small_nav_options.dart';
import 'package:ashesi_website/widgets/title_bar/title_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageController = PageController(initialPage: 1);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,

          children: [
            SmallNavOptions(items: items, onClose: (){
              pageController.jumpToPage(1);
            }),



            SingleChildScrollView(
              child: Column(
                children:  [
                  Container(
                    color: ashesiGrey,
                    child: TitleBar(
                      items: items,
                      onMenuButtonTap: (){
                        pageController.jumpToPage(0);
                      },
                    ),
                  ),

                  const Slideshow(),

                  const MissionStatement(),

                  const PopulationStats(),

                  const NewsArticleSection(),

                  Image.asset("images/impact_rankings.jpg"),


                  const Footer()
                ],
              ),
            ),
          ],
        )
    );
  }
}



