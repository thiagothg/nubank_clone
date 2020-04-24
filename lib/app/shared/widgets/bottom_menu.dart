import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:nubank_clone/app/shared/widgets/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final HomeController homeController;

  const BottomMenu({Key key, this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: (!homeController.showMenu) ?  0 + MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.15,
      child: IgnorePointer(
        ignoring: homeController.showMenu,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: homeController.showMenu ? 0 : 1,
          child: Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ItemMenuBottom(
                  icon: Icons.person_add,
                  text: 'Indicar amigos',
                ),
                ItemMenuBottom(
                  icon: Icons.phone_iphone,
                  text: 'Recarga de Celular',
                ),
                ItemMenuBottom(
                  icon: Icons.question_answer,
                  text: 'Cobrar',
                ),
                ItemMenuBottom(
                  icon: Icons.dehaze,
                  text: 'Depositar',
                ),
                ItemMenuBottom(
                  icon: Icons.cloud_upload,
                  text: 'Transferir',
                ),
                ItemMenuBottom(
                  icon: Icons.collections,
                  text: 'Ajustar limite',
                ),
                ItemMenuBottom(
                  icon: Icons.help_outline,
                  text: 'Me Ajuda',
                ),
                ItemMenuBottom(
                  icon: Icons.code,
                  text: 'Pagar',
                ),
                ItemMenuBottom(
                  icon: Icons.lock_open,
                  text: 'Bloquear cartão',
                ),
                ItemMenuBottom(
                  icon: Icons.credit_card,
                  text: 'Cartão Virtual',
                ),
                ItemMenuBottom(
                  icon: Icons.code,
                  text: 'Organizar atalhos',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}