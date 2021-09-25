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
          children: [Header(), _menu(context)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }

  Widget _menu(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
          width: double.infinity,
          //height: 200.0,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Menú', style: AppTheme.headLine3),
                    Row(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppTheme.kPurple,
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        // color: AppTheme.kPurple,
                        child:
                            Image.asset("assets/icons/luna.png", width: 15.0),
                      ),
                      SizedBox(width: 8.0),
                      Text('Modo oscuro', style: AppTheme.headLine4),
                      SizedBox(width: 8.0),
                      Image.asset("assets/icons/switch.png", width: 27.0),
                    ])
                  ]),
            ),
            // Container(
            //     width: double.infinity,
            //     height: 34,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 3,
            //       itemBuilder: (context, index) => _bottonIcon(
            //         context: context,
            //         title: index.toString(),
            //         icon: "camera",
            //       ),
            // )),
            Container(
                width: double.infinity,
                height: 34,
                // margin: EdgeInsets.symmetric(vertical: 30.0),
                // color: Colors.red,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  _bottonIcon(
                    context: context,
                    title: "Ayuda y soporte",
                    icon: "camera",
                  ),
                  _bottonIcon(
                    context: context,
                    title: "Configuración y privacidad",
                    icon: "camera",
                  ),
                  _bottonIcon(
                    context: context,
                    title: "Configuración y privacidad",
                    icon: "camera",
                  ),
                  SizedBox(width: 16.0)
                ])),
            SizedBox(height: 16.0),
            Container(
                width: double.infinity,
                height: 150,
                // color: Colors.amber,
                // margin: EdgeInsets.symmetric(vertical: 30.0),
                // color: Colors.red,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 16.0),
                      _card1(), _card2()])),

            // _bottonIcon(
            //     context: context,
            //     title: "Fotos",
            //     icon: "camera",
            //   )
          ])),
    );
  }

  Widget _bottonIcon({
    required BuildContext context,
    required String title,
    required String icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(248, 249, 250, 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/$icon.png", width: 15.0),
            SizedBox(width: 8.0),
            Text(
              title,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppTheme.kDarkBlue, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card1() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        // borderRadious : BorderRadius.circular(15.0),
        child: Card(
          elevation: 0,
          // color: Colors.red,
          // margin: EdgeInsets.only(left: 30),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(250.0),
          // ),
          child: Container(
            width: 226.0,
            height: 132.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/card1.jpg"),
                alignment: Alignment.center,
                fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
    );
  }

  Widget _card2() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        // borderRadious : BorderRadius.circular(15.0),
        child: Card(
          elevation: 0,
          color: Color.fromRGBO(25, 119, 243, 1.0),
          // margin: EdgeInsets.only(left: 30),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          child: Container(
            width: 226.0,
            height: 132.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/card2.png"),
                alignment: Alignment.bottomRight,
                // fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
    );
  }
}
