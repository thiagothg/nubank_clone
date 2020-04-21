import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/shared/widgets/menu_app.dart';
import 'package:nubank_clone/app/shared/widgets/my_app_bar.dart';
import 'package:nubank_clone/app/shared/widgets/my_dots_app.dart';
import 'package:nubank_clone/app/shared/widgets/page_view_app.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if( _homeController.yPosition == 0) {
      _homeController.yPosition = _screenHeight * 0.24;
    }
    return Scaffold(
      body: Observer(builder: (_) =>
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _homeController.showMenu,
              onTap: () {
                  _homeController.showMenu = !_homeController.showMenu;
                  _homeController.yPosition = _homeController.showMenu 
                    ? _screenHeight * 0.75 : _screenHeight * 0.24;
              },
            ),

            MenuApp(
              showMenu: _homeController.showMenu,
              top: _screenHeight * 0.20,
            ),

            PageViewApp(
              showMenu: _homeController.showMenu,
              screenHeight: _homeController.yPosition,
              onPanUpdate: (details) {
                double positionBottomLimit = _screenHeight * 0.75;
                double positionTopLimit = _screenHeight * 0.24;
                double midlePosition =  positionBottomLimit - positionTopLimit;
                midlePosition  = midlePosition / 2;

                _homeController.yPosition += details.delta.dy;

                _homeController.yPosition =  _homeController.yPosition < positionTopLimit
                  ? positionTopLimit : _homeController.yPosition;
                
                _homeController.yPosition =  _homeController.yPosition > positionBottomLimit
                  ? positionBottomLimit : _homeController.yPosition;

                if(_homeController.yPosition != positionBottomLimit && details.delta.dy > 0) {
                  _homeController.yPosition = _homeController.yPosition > positionTopLimit + midlePosition
                  ? positionBottomLimit : _homeController.yPosition;
                }

                if(_homeController.yPosition != positionTopLimit && details.delta.dy < 0) {
                  _homeController.yPosition = _homeController.yPosition < positionTopLimit + midlePosition
                  ? positionTopLimit : _homeController.yPosition;
                }
                
                if(_homeController.yPosition == positionBottomLimit) {
                  _homeController.showMenu = true;
                } else if(_homeController.yPosition == positionTopLimit){
                  _homeController.showMenu = false;
                }
                setState(() {});
              },
              onChanged: (index) {
                _homeController.currentIndex = index;
                setState(() {});
              },
            ),
            
            MyDotsApp(
              showMenu: _homeController.showMenu,
              top: _screenHeight * 0.7,
              currentIndex: _homeController.currentIndex,
            )
          ],
        ),
      )
    );
  }
}
