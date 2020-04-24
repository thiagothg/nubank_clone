import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class RewardsCard extends StatefulWidget {

  @override
  _RewardsCardState createState() => _RewardsCardState();
}

class _RewardsCardState extends State<RewardsCard> {
  final bool _showPontos = false;
  bool bottomPressed = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: _showPontos 
        ? _pontosShow() 
        : _noPontosShow(),
    );
  }

  Widget _noPontosShow() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(MaterialCommunityIcons.gift_outline,
            color: Colors.grey,
          ),

          SizedBox(width: 10),
          Text('Nubank Rewards',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text('Acumula pontos que nunca expiram e troque por passagens aereas ou servicos que voce realmente usa.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16
            ),
            textAlign: TextAlign.center,
          ),

          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 0.7,
                color: Colors.purple[800]
              )
            ),
            child: RaisedButton(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              elevation: 0,
              disabledElevation: 0,
              highlightElevation: 0,
              onPressed: () {},
              child: Text('ATIVE O SEU REWARDS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
              ),
              highlightColor: Colors.purple[800],
              textColor: bottomPressed ? Colors.white : Colors.purple[800],
              disabledColor: Colors.white,
              onHighlightChanged: (pressed) {
                bottomPressed = pressed;

                setState(() {});
              },
            )
          ),
        ],
      ),
    );
  }

  Widget _pontosShow() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Icon(MaterialCommunityIcons.gift_outline,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('Rewards',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                              ),
                            )
                          ]
                        ),
                      )
                    ]
                  )
                ),
              ]
            ),
          )
        ),

        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[200]
          ),
        ),
      ],
    );
  }
}
