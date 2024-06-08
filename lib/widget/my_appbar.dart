import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  
  final String titleText;
  final Color appBarColor;
  final Color iconColor;

  const MyAppBar({
    super.key,
    required this.titleText,
    required this.appBarColor,
    this.iconColor = Colors.transparent,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(
        titleText,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: appBarColor,
      iconTheme: IconThemeData(color: iconColor),
    );
  }
}