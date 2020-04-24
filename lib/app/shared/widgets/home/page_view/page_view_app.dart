import 'package:flutter/material.dart';
import 'package:nubank_clone/app/shared/widgets/home/cards/card_app.dart';
import 'package:nubank_clone/app/shared/widgets/home/cards/conta_card.dart';
import 'package:nubank_clone/app/shared/widgets/home/cards/credit_card.dart';
import 'package:nubank_clone/app/shared/widgets/home/cards/rewards_card.dart';

class PageViewApp extends StatefulWidget {
  final double screenHeight;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  PageViewApp({this.screenHeight, this.onChanged, this.onPanUpdate, this.showMenu});

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();

    _tween = Tween<double>(begin: 150, end: 0);
    //delayAnimation();
  }

  Future<void> delayAnimation() async {
    await Future.delayed(Duration(milliseconds: 250), () {
      _tween = Tween<double>(begin: 150, end: 0);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 250),
          top: widget.screenHeight,
          height: MediaQuery.of(context).size.height * 0.45,
          left: value,
          right: value * -1,
          curve: Curves.easeInOut,
          child: GestureDetector(
            onPanUpdate: widget.onPanUpdate,
            child: PageView(
              onPageChanged: widget.onChanged,
              physics: widget.showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
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
    );
  }
}