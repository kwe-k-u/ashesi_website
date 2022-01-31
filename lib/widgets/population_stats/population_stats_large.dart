import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/population_stats/widget/stat_tile.dart';
import 'package:flutter/material.dart';


class PopulationStatsLarge extends StatelessWidget {
  final String genderValue;
  final String studentsDescription;
  final String scholarshipValue;
  final String genderDescription;
  final String scholarshipDescription;
  final String studentsValue;
  const PopulationStatsLarge({
    Key? key,
    required this.genderValue,
    required  this.studentsDescription,
    required  this.scholarshipValue,
    required  this.genderDescription,
    required  this.scholarshipDescription,
    required  this.studentsValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ashesiGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          StatTile(value: genderValue, description: genderDescription,),
          _VerticalDivider(),
          StatTile(value: scholarshipValue, description: scholarshipDescription,),
          _VerticalDivider(),
          StatTile(value: studentsValue, description: studentsDescription,),
        ],
      ),
    );
  }
}





class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: 0.5,
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
    );
  }
}
