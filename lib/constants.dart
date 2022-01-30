//break points
// ignore_for_file: constant_identifier_names

//screen sizes
import 'package:ashesi_website/utils/title_bar_item.dart';
import 'package:flutter/cupertino.dart';

const double MEDIUM_SCREEN = 600;
const double LARGE_SCREEN = 1080;

//colours
const Color ashesiRed = Color(0xFFbe1e2d);
const Color ashesiGrey = Color(0xFF404041);
const Color ashesiWhite = Color(0xFFfbfbfb);




//nav bar items
 List<TitleBarItem> items = [
  TitleBarItem(
    title: "Home",
  ),


  TitleBarItem(
      title: "About",
      innerItems: [
        TitleBarItem(title: "Overview"),
        TitleBarItem(
            title: "Facts and Data",
          innerItems: [
            TitleBarItem(title: "Quick Facts"),
            TitleBarItem(title: "Mission and History"),
            TitleBarItem(title: "Logo and Identity"),
            TitleBarItem(title: "Recognition"),
            TitleBarItem(title: "University Policies"),
            TitleBarItem(title: "Reports"),
          ]
        ),
        TitleBarItem(
          title: "Leadership",
          innerItems: [
            TitleBarItem(title: "Governance"),
            TitleBarItem(
                title: "President's Office",
              innerItems: [
                TitleBarItem(title: "President's Message"),
                TitleBarItem(title: "Biography"),
                TitleBarItem(title: "About the Presidency"),
                TitleBarItem(title: "Selected Speeches and Memos"),
              ]
            ),
            TitleBarItem(title: "Executive Team"),
            TitleBarItem(title: "Student Leadership"),
          ]
        ),
        TitleBarItem(
            title: "Careers at Ashesi",
          innerItems: [
            TitleBarItem(title: "Overiview"),
            TitleBarItem(title: "Our Culture"),
            TitleBarItem(title: "Administrative Positions"),
            TitleBarItem(title: "Faculty Positions"),
          ]
        ),
        TitleBarItem(title: "Our Campus"),
        TitleBarItem(
            title: "Alumni",
          innerItems: [
            TitleBarItem(title: "Alumni Stories"),
            TitleBarItem(title: "Alumni Relations"),
            TitleBarItem(title: "Alumni Council"),
            TitleBarItem(title: "Alumni Resources"),
            TitleBarItem(title: "Make a Gift"),
          ]
        )
      ]
  ),


  TitleBarItem(
      title: "Admissions",
      innerItems: [
        TitleBarItem(title: "Overview"),
        TitleBarItem(
            title: "Ashesi Advantage",
          innerItems: [
            TitleBarItem(title: "Explore Ashesi"),
            TitleBarItem(title: "Graduate Outcomes"),
            TitleBarItem(title: "Our Campus & Student Life"),
            TitleBarItem(title: "Our Curriculum"),
          ]
        ),
        TitleBarItem(
            title: "Undergraduate Programmes",
          innerItems: [
            TitleBarItem(title: "Admissions Process"),
            TitleBarItem(title: "Fees"),
            TitleBarItem(
                title: "Scholarships",
              innerItems: [
                TitleBarItem(title: "Overview"),
                TitleBarItem(title: "The Mastercard Foundation Scholars Program"),
                TitleBarItem(title: "Jim Ovia Foundation Leaders Scholarship"),
              ]
            ),
            TitleBarItem(title: "How to Apply"),
          ]
        ),
        TitleBarItem(
            title: "Master in Mechatronic Engineering",
          innerItems: [
            TitleBarItem(title: "Overview"),
            TitleBarItem(title: "Programme Structure"),
            TitleBarItem(title: "Fees and Scholarships"),
            TitleBarItem(title: "Partners"),
            TitleBarItem(title: "How to Apply"),
          ]
        ),
        TitleBarItem(title: "Contact Us"),

      ]
  ),


  TitleBarItem(
      title: "Academics",
      innerItems: [
        TitleBarItem(title: "Overview"),
        TitleBarItem(
            title: "Departments",
          innerItems: [
            TitleBarItem(title: "Overview"),
            TitleBarItem(
                title: "Humanities",
              innerItems: [
                TitleBarItem(title: "Overview"),
                TitleBarItem(title: "People"),
                TitleBarItem(title: "Courses"),
                TitleBarItem(title: "Writing Centre"),
                TitleBarItem(title: "Research & Projects"),
              ]
            ),
            TitleBarItem(
                title: "Business Administration",
                innerItems: [
                  TitleBarItem(title: "Overview"),
                  TitleBarItem(title: "People"),
                  TitleBarItem(title: "Courses"),
                  TitleBarItem(title: "Writing Centre"),
                  TitleBarItem(title: "Research & Projects"),
                ]
            ),
            TitleBarItem(title: "Computer Science",
                innerItems: [
                  TitleBarItem(title: "Overview"),
                  TitleBarItem(title: "People"),
                  TitleBarItem(title: "Curriculum"),
                  TitleBarItem(title: "CS Courses"),
                  TitleBarItem(title: "MIS Courses"),
                  TitleBarItem(title: "Research & Projects"),
                ]
            ),
            TitleBarItem(title: "Engineering",
                innerItems: [
                  TitleBarItem(title: "Overview"),
                  TitleBarItem(title: "People"),
                  TitleBarItem(title: "Undergraduate Programmes"),
                  TitleBarItem(title: "Master in Mechatronic Engineering"),
                  TitleBarItem(title: "Research & Projects"),
                ]
            ),
          ]
        ),
        TitleBarItem(title: "Learning Goals"),
        TitleBarItem(title: "Academic Registry",
            innerItems: [
              TitleBarItem(title: "Course Pre-Requisites"),
              TitleBarItem(title: "Grading Policies"),
              TitleBarItem(title: "Registry Forms"),
              TitleBarItem(title: "Academic Calendar"),
              TitleBarItem(title: "For Parents"),
            ]
        ),
        TitleBarItem(title: "Calendar"),
        TitleBarItem(title: "Library",
          innerItems: [
            TitleBarItem(title: "Overview"),
            TitleBarItem(title: "Publications"),
            TitleBarItem(title: "Library Catalogue"),
          ]
        ),
        TitleBarItem(title: "Academic Affairs",
          innerItems: [
            TitleBarItem(title: "Overview"),
            TitleBarItem(title: "Who We Serve",
              innerItems: [
                TitleBarItem(title: "Business Department"),
                TitleBarItem(title: "Humanities Department"),
                TitleBarItem(title: "Computer Science Department"),
                TitleBarItem(title: "Engineering Department"),
              ]
            ),
            TitleBarItem(title: "Service",
              innerItems: [
                TitleBarItem(title: "Units of Service"),
                TitleBarItem(title: "Innovation & Impact",
                  innerItems: [
                    TitleBarItem(title: "Overview"),
                    TitleBarItem(title: "Education Collaborative"),
                    TitleBarItem(title: "African Pop Culture"),
                    TitleBarItem(title: "Cocoa Youth Program(MASO)"),
                    TitleBarItem(title: "Entrepreneurship"),
                  ]
                ),
              ]
            ),
            TitleBarItem(title: "University Policies"),
            TitleBarItem(title: "Curriculum"),
            TitleBarItem(title: "Research Review Board",
              innerItems: [
                TitleBarItem(title: "Exemptions"),
                TitleBarItem(title: "Application Process"),
                TitleBarItem(title: "Submitting Applications"),
              ]
            ),
          ]
        ),
        TitleBarItem(title: "Class of 2025",
          innerItems: [
            TitleBarItem(title: "First Year Experience"),
            TitleBarItem(title: "Grading Policies"),
          ]
        ),
      ]
  ),


  TitleBarItem(
      title: "Student Life",
      innerItems: [

        TitleBarItem(title: "Overview"),
        TitleBarItem(title: "Student Affairs",
          innerItems: [
            TitleBarItem(title: "Honour Code"),
            TitleBarItem(title: "Clubs and Societies"),
            TitleBarItem(title: "Judicial Council Records"),
          ]
        ),
        TitleBarItem(title: "Living here",
          innerItems: [
            TitleBarItem(title: "On-campus Housing"),
            TitleBarItem(title: "Off-campus Housing"),
            TitleBarItem(title: "Photo Gallery"),
          ]
        ),
        TitleBarItem(title: "Student Services",
          innerItems: [
            TitleBarItem(title: "Coaching, Counselling & Advising"),
            TitleBarItem(title: "Diversity & International Programs",
              innerItems: [
                TitleBarItem(title: "International Programs"),
                TitleBarItem(title: "Diversity & Inclusion"),
                TitleBarItem(title: "Sexual Misconduct Prevention"),
              ]
            ),
            TitleBarItem(title: "Career Services",
              innerItems: [
                TitleBarItem(title: "Overview"),
                TitleBarItem(title: "For Students"),
                TitleBarItem(title: "For Recruiters"),
                TitleBarItem(title: "Career Outcomes"),
                TitleBarItem(title: "Postgraduate Placement"),
                TitleBarItem(title: "Recruiting Partners"),
              ]
            ),
            TitleBarItem(title: "Health and Wellbeing"),
          ]
        ),
        TitleBarItem(title: "Student Leadership",),
      ]
  ),


  TitleBarItem(
      title: "News",
      innerItems: [
        TitleBarItem(title: "Stories"),
        TitleBarItem(title: "Ashesi Bulletin"),
        TitleBarItem(title: "Student & Alumni Profiles"),
        TitleBarItem(title: "Commencement",
          innerItems: [
            TitleBarItem(title: "Overview"),
            TitleBarItem(title: "2021 Speeches",
              innerItems: [
                TitleBarItem(title: "President's Address"),
                TitleBarItem(title: "Class Speaker's Address"),
                TitleBarItem(title: "Guest Speaker's Address"),
                TitleBarItem(title: "Reading by Provost"),
              ]
            ),
            TitleBarItem(title: "President's Award Recipients"),
            TitleBarItem(title: "Candidates for Degrees"),
            TitleBarItem(title: "Past Ceremonies"),
          ]
        ),
      ]
  ),


  TitleBarItem(
      title: "Useful Links",
      innerItems: [
        TitleBarItem(title: "COVID-19"),
        TitleBarItem(title: "Office 365"),
        TitleBarItem(title: "CAMU (Students)"),
        TitleBarItem(title: "CAMU (Faculty)"),
        TitleBarItem(title: "Institutional Repository",),
        TitleBarItem(title: "All Resources",),
      ]
  ),
  TitleBarItem(
    title: "Donate",
  ),
];