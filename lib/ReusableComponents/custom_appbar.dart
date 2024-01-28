import 'package:flutter/material.dart';

import 'colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  CustomAppbar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: white,
      ),
      backgroundColor: colorPrimary,
      title: Text(
        title,
        style: const TextStyle(color: white, fontSize: 24),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
