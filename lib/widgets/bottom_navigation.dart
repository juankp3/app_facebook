import 'package:app_facebook/pages/config/config_page.dart';
import 'package:app_facebook/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: Image.asset("assets/icons/home.png", width: 20.0),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Image.asset("assets/icons/youtube.png", width: 20.0),
          Image.asset("assets/icons/moun.png", width: 20.0),
          GestureDetector(
            child: Image.asset("assets/icons/Grupo.png", width: 20.0),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfigPage()));
            },
          )
        ],
      ),
    );
  }
}
