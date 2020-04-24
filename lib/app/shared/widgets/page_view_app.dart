import 'package:flutter/material.dart';
import 'package:nubank_clone/app/shared/widgets/card_app.dart';
import 'package:nubank_clone/app/shared/widgets/conta_card.dart';
import 'package:nubank_clone/app/shared/widgets/credit_card.dart';
import 'package:nubank_clone/app/shared/widgets/rewards_card.dart';

class PageViewApp extends StatelessWidget {
  final double screenHeight;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  PageViewApp({this.screenHeight, this.onChanged, this.onPanUpdate, this.showMenu});
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      top: screenHeight,
      height: MediaQuery.of(context).size.height * 0.45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(
              child: CreditCard(),
            ),
            CardApp(
              child: ContaCard(),
            ),
            CardApp(
              child: RewardsCard(),
            ),
          ]
        ),
      ),
    );
  }
}