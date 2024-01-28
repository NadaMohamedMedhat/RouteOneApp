import 'package:flutter/material.dart';

import '../ReusableComponents/course_details_widget.dart';
import '../ReusableComponents/custom_appbar.dart';
import '../Data/course_details_data.dart';

class FullstackDiploma extends StatelessWidget {
  static const String route = 'FullstackDiploma ';
  List<CourseDetailsData> details = [
    CourseDetailsData(
      imagePath: 'assets/images/fullStack.jpeg',
      courseDetails: '''
               Content Full Stack >>>>>

•HTML	
•HTML 5 
•CSS
•CSS3
•SASS
•Bootstrap 4
•JavaScript
•Regular expressions
•ECMAScript 6
•JQuery
•angular 7
•fabric.js
•AJAX
•JSON
•Hosting and domains
•Freelancing tips and tricks
•PHP
•MYSQL
•MYSQL advanced queries and triggers
•OOP 
•Design Patterns
•MVC
•laravel 
•build Api , Api authentication
•connect wordpress with laravel
•build wordpress web service 
•agile
•Scrum
•Software development process
                ''',
    )
  ];
  FullstackDiploma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'FullStack Diploma'),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/Bg.jpg'),
          ),
        ),
        child: ListView.builder(
          itemCount: details.length,
          itemBuilder: (BuildContext context, int index) => CourseDetailsWidget(
            courseDetailsData: details[index],
          ),
        ),
      ),
    );
  }
}
