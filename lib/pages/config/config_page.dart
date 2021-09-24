import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 55.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Image.asset("assets/icons/fb.png"),
        ),
        actions: [
          _headerIcons(icon: "search.png"),
          _headerIcons(icon: "alert.png"),
          _headerIcons(icon: "messenger.png"),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/8d/75/f3/8d75f3ef8b863be412c6b6438cb51283.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Text('aaa'),
    );
  }
}


Widget _headerIcons({required String icon}) {
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