import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5, 
            color: Colors.white54,
          ),
          top: BorderSide(
            width: 0.5,
            color: Colors.white38
          )
        )
      ),
      child: RaisedButton(
        color: Theme.of(context).scaffoldBackgroundColor,
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(width: 20),
                Text(text),
              ]
            ),
           
            Icon(Icons.chevron_right, size: 16,)
          ]
        ),
      ),
    );
  }
}