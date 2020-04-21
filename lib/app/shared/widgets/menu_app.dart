import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nubank_clone/app/shared/widgets/menu_item.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: <Widget>[
              QrImage(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).scaffoldBackgroundColor,
                data: "1234567890",
                version: QrVersions.auto,
                size: 100.0,
              ),
              SizedBox(height: 10,),

              Text.rich(
                TextSpan(
                  text: 'Banco ',
                  children: [
                    TextSpan(
                      text: '260 - Nu Pagamentos S.A.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold 
                      )
                    ),
                  ]
                )
              ),
              Text.rich(
                TextSpan(
                  text: 'Agência ',
                  children: [
                    TextSpan(
                      text: '0001',
                      style: TextStyle(
                        fontWeight: FontWeight.bold 
                      )
                    ),
                  ]
                )
              ),
              Text.rich(
                TextSpan(
                  text: 'Conta ',
                  children: [
                    TextSpan(
                      text: '5231109-2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold 
                      )
                    ),
                  ]
                )
              ),
              
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(
                        text: 'Me Ajuda',
                        icon: Icons.help_outline,
                      ),
                      ItemMenu(
                        text: 'Perfil',
                        icon: Icons.person_outline,
                      ),
                      ItemMenu(
                        text: 'Configurar conta',
                        icon: Icons.account_circle,
                      ),
                      ItemMenu(
                        text: 'Configurar Cartão',
                        icon: Icons.credit_card,
                      ),
                      ItemMenu(
                        text: 'Configurar Rewards',
                        icon: SimpleLineIcons.present,
                      ),
                      ItemMenu(
                        text: 'Pedir conta PJ',
                        icon: Icons.store_mall_directory,
                      ),
                      ItemMenu(
                        text: 'Configurações do app',
                        icon: Icons.phone_iphone,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.7,
                            color: Colors.white54
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
                          child: Text('SAIR DO APP',
                            style: TextStyle(fontSize: 12),
                          )
                        ),
                      ),
                    ]
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}