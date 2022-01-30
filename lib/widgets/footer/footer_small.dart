import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/footer/widget/footer_text_column.dart';
import 'package:flutter/material.dart';


class FooterSmall extends StatelessWidget {
  const FooterSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Theme(
      data: ThemeData(
        textTheme: Theme.of(context).textTheme
            .copyWith(bodyText2: TextStyle(fontSize: 4))
      ),
      child: Container(
        color: ashesiGrey,
        width: size.width,
        // height: size.height,
        child: Row(
          children: [
            SizedBox(
              width: size.width*0.5,
              child: Column(
                children: const [

                  _HeaderText("Quick Links"),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "University",
                      children: [
                        "Webmail",
                        "Student Information System",
                        "Academic Calendar",
                        "Institutional Repository"
                      ]
                  ),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "For Businesses",
                      children: [
                        "Career Services Office",
                        "Recruit Ashesi Students",
                        "Job Openings"
                            "Support Ashesi"
                      ]
                  ),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "Street Address",
                      children: [
                        "1 University Avenue",
                        "Berekuso, E/R, (See map\nhere)"
                      ]
                  ),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "Phone & Email",
                      children: [
                        "(T) +233 302 610 330",
                        "(E) info@ashesi.edu.gh"
                      ]
                  ),



                  _HeaderText("Contact Us"),
                ],
              ),
            ),
            SizedBox(
              width: size.width*0.5,
              child: Column(
                children: const [

                  FooterTextColumn(
                    margin: EdgeInsets.symmetric(vertical: 4),
                      header: "New Here?",
                      children: [
                        "Our Campus",
                        "Alumni Stories",
                        "Campus Life Blog",
                        "Awards & Recognition"
                      ]
                  ),

                  SizedBox(
                    width: 80,
                      height: 40,
                      child: Placeholder( fallbackWidth: 10, fallbackHeight: 20,)),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "Postal Address",
                      children: [
                        "PMB CT3",
                        "Cantonments, Accra"
                      ]
                  ),

                  FooterTextColumn(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      header: "See Also",
                      children: [
                        "+ Ashesi Foundation",
                        "+ Climate Innovation Centre",
                        "+ Education Collaborative"
                      ]
                  ),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class _HeaderText extends StatelessWidget {
  final String text;
  const _HeaderText(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: Theme.of(context).textTheme.headline6!.
      copyWith(color: Colors.grey),
    );
  }
}























