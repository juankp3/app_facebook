import 'package:app_facebook/pages/home/widgets/histories.dart';
import 'package:app_facebook/widgets/appbar_custom.dart';
import 'package:app_facebook/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'widgets/header.dart';
import 'widgets/posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 250, 1.0),
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Histories(),
            Posts(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }

}
