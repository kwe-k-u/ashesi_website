import 'package:ashesi_website/constants.dart';
import 'package:ashesi_website/widgets/population_stats/widget/stat_tile.dart';
import 'package:flutter/material.dart';



class PopulationStatsSmall extends StatelessWidget {
  final String genderValue;
  final String studentsDescription;
  final String scholarshipValue;
  final String genderDescription;
  final String scholarshipDescription;
  final String studentsValue;
  const PopulationStatsSmall({
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
    Size size = MediaQuery.of(context).size;

    return Container(
      color: ashesiGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          StatTile( isSmall: true, value: genderValue, description: genderDescription,),
          Divider( color: Colors.grey, endIndent: size.width * 0.05, indent: size.width * 0.05,),
          StatTile( isSmall: true, value: scholarshipValue, description: scholarshipDescription,),
          Divider(color: Colors.grey, endIndent: size.width * 0.05, indent: size.width * 0.05),
          StatTile( isSmall: true, value: studentsValue, description: studentsDescription,),
        ],
      ),
    );
  }
}
