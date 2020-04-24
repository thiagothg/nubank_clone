import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
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
                            children: <Widget>[
                              Icon(Icons.credit_card,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text('Cartão de Crédito',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13
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
                                Text('FATURA ATUAL',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),

                                Text.rich(
                                  TextSpan(text: 'R\$ ',
                                    children: [
                                      TextSpan(text: '600,40',
                                        style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold
                                        )
                                      )
                                    ],
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ),

                                Text.rich(
                                  TextSpan(text: 'Limite disponível  ',
                                    children: [
                                      TextSpan(text: 'R\$ 2.000,40',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        )
                                      )
                                    ],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      //fontWeight: FontWeight.bold
                                    )
                                  )
                                ),
                              ]
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05)
                      ]
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 8,
                        decoration: BoxDecoration(
                          //color: Colors.teal,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.orange
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.blue
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.green
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
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
                      child: Text('Compra mais recente em Super Mercado no Valor',
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