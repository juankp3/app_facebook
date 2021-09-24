import 'package:app_facebook/pages/home/widgets/header.dart';
import 'package:app_facebook/theme/app_theme.dart';
import 'package:app_facebook/widgets/appbar_custom.dart';
import 'package:app_facebook/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            _menu()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }

  Widget _menu() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        width: double.infinity,
        //height: 200.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Menú', style: AppTheme.headLine3),
                  Text('Modo oscuro', style: AppTheme.headLine4),
                  Container(
                    decoration: BoxDecoration(
                      color: AppTheme.kPurple,
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    // color: AppTheme.kPurple,
                    child: Image.asset("assets/icons/luna.png", width: 15.0),
                  )

                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
