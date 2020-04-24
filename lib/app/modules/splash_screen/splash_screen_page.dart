import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_screen_controller.dart';

class SplashScreenPage extends StatefulWidget {
  final String title;
  const SplashScreenPage({Key key, this.title = "SplashScreen"})
      : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState
    extends ModularState<SplashScreenPage, SplashScreenController> {
  //use 'controller' variable to access controller

 @override
 void initState() { 
   super.initState();
   delay();
 }

  Future<void> delay() async {
    await Future.delayed(Duration(seconds: 2), (){
      Navigator.popAndPushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/nubank-logo.png",
              height: 55,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
