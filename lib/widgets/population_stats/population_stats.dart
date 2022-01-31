import 'package:ashesi_website/widgets/population_stats/population_stats_large.dart';
import 'package:ashesi_website/widgets/population_stats/population_stats_small.dart';
import 'package:ashesi_website/widgets/view_port.dart';
import 'package:flutter/material.dart';


class PopulationStats extends StatelessWidget {

  const PopulationStats({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ViewPort(
        large: PopulationStatsLarge( genderDescription: gender.description, genderValue: gender.value, scholarshipDescription: scholarship.description, scholarshipValue: scholarship.value, studentsDescription: students.description, studentsValue: students.value,),
        small: PopulationStatsSmall( genderDescription: gender.description, genderValue: gender.value, scholarshipDescription: scholarship.description, scholarshipValue: scholarship.value, studentsDescription: students.description, studentsValue: students.value,),
    );
  }
}
_Stats gender = _Stats(value: "1:1", description: "gender balance");
_Stats scholarship = _Stats(value: "43%", description: "on scholarships");
_Stats students = _Stats(value: "2863", description: "students & alumni");


class _Stats{
  String value;
  String description;

  _Stats({required this.value,required this.description});
}
