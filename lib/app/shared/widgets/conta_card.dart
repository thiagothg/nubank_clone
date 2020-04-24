import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';

class ContaCard extends StatefulWidget {

  @override
  _ContaCardState createState() => _ContaCardState();
}

class _ContaCardState extends State<ContaCard> {
  final HomeController homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.attach_money,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Conta',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13
                                    ),
                                  )
                                ]
                              ),

                              GestureDetector(
                                onTap: () {
                                  homeController.showSaldo = !homeController.showSaldo;
                                  setState(() {});
                                },
                                child: Icon((homeController.showSaldo) 
                                  ? MaterialCommunityIcons.eye 
                                  : MaterialCommunityIcons.eye_off_outline,
                                  color: Colors.grey,
                                ),
                              )
                             
                            ]
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Saldo Disponivel',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),

                                homeController.showSaldo ? 
                                Text.rich(
                                  TextSpan(text: 'R\$ 3.432,40',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                    )
                                  )
                                ) : Container(
                                    height: 30, 
                                    width: MediaQuery.of(context).size.width * 0.5, 
                                    color: Colors.grey[300],
                                )
                              ]
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05)
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
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),

                    Flexible(
                      child: Text('Compra mais recente em Super Mercado no Valor no valor de R\$ 130,00 sexta',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13
                        ),
                      ),
                    ),

                    Icon(Icons.chevron_right, 
                      color: Colors.grey,
                    )
                  ]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}