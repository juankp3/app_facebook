import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HeaderIcons extends StatelessWidget {
  final String icon;

  HeaderIcons({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundColor: AppTheme.kLight,
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: Image.asset("assets/icons/$icon"),
        ),
      ),
    );
  }
}
