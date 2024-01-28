import 'package:flutter/material.dart';

import 'colors.dart';

class DiplomaWidget extends StatelessWidget {
  String imagePath;
  String btnTitle;
  VoidCallback onPressed;

  DiplomaWidget({
    super.key,
    required this.imagePath,
    required this.btnTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: colorAccent),
            onPressed: onPressed,
            child: Text(
              btnTitle.toUpperCase(),
              style: const TextStyle(
                color: white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
