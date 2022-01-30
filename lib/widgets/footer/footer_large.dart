

import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/footer/widget/footer_text_column.dart';
import 'package:flutter/material.dart';


class FooterLarge extends StatelessWidget {
  const FooterLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: ashesiGrey,
      width: size.width,
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.5,
            child: Column(
              children: [

                Row(
                  children: [
                    FooterTextColumn(header: "University",
                        children: [
                          "Webmail",
                          "Student Information System",
                          "Academic Calendar",
                          "Institutional Repository"
                        ]
                    ),
                    FooterTextColumn(header: "New Here?",
                        children: [
                          "Our Campus",
                          "Alumni Stories",
                          "Campus Life Blog",
                          "Awards & Recognition"
                        ]
                    ),


                    FooterTextColumn(header: "For Businesses",
                        children: [
                          "Career Services Office",
                          "Recruit Ashesi Students",
                          "Job Openings"
                              "Support Ashesi"
                        ]
                    ),
                    SizedBox(
                      width: 50,
                      height: 80,
                    ),
                  ],
                ),

                Row(
                  children: [


                    FooterTextColumn(header: "Street Address",
                        children: [
                          "1 University Avenue",
                          "Berekuso, E/R, (See map\nhere)"
                        ]
                    ),

                    FooterTextColumn(header: "Postal Adress",
                        children: [
                          "PMB CT3",
                          "Cantonments, Accra"
                        ]
                    ),
                    FooterTextColumn(header: "Phone & Email",
                        children: [
                          "(T) +233 302 610 330",
                          "(E) info@ashesi.edu.gh"
                        ]
                    ),
                    FooterTextColumn(header: "See Also",
                        children: [
                          "+ Ashesi Foundation",
                          "+ Climate Innovation Centre",
                          "+ Education Collaborative"
                        ]
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
