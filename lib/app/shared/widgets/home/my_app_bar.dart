import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  MyAppBar({this.showMenu, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top
        ),

        GestureDetector(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/nubank-logo.png",
                      height: 35,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text("Thiago",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ]
                ),

                Icon((!showMenu) 
                ? Icons.expand_more
                : Icons.expand_less
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}