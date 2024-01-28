import 'package:flutter/material.dart';

import '../Data/course_details_data.dart';
import 'colors.dart';

class CourseDetailsWidget extends StatelessWidget {
  CourseDetailsData courseDetailsData;
  CourseDetailsWidget({super.key, required this.courseDetailsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      child: Column(
        children: [
          Image.asset(courseDetailsData.imagePath),
          const SizedBox(
            height: 10,
          ),
          Text(
            courseDetailsData.courseDetails,
            style: const TextStyle(color: white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
