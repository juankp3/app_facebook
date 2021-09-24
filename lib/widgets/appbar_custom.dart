import 'package:app_facebook/widgets/headerIcons.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 55.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Image.asset("assets/icons/fb.png"),
        ),
        actions: [
          HeaderIcons(icon: "search.png"),
          HeaderIcons(icon: "alert.png"),
          HeaderIcons(icon: "messenger.png"),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/8d/75/f3/8d75f3ef8b863be412c6b6438cb51283.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}