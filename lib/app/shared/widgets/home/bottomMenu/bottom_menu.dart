import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:nubank_clone/app/shared/widgets/home/bottomMenu/item_menu_bottom.dart';

class BottomMenu extends StatefulWidget {
  final HomeController homeController;

  const BottomMenu({Key key, this.homeController}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {

  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150, end: 0);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          bottom: (!widget.homeController.showMenu) ?  0 + MediaQuery.of(context).padding.bottom : 0,
          left: value,
          right: value * -1,
          height: MediaQuery.of(context).size.height * 0.13,
          child: IgnorePointer(
            ignoring: widget.homeController.showMenu,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: widget.homeController.showMenu ? 0 : 1,
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
                      icon: FontAwesome5Solid.comments_dollar,
                      text: 'Cobrar',
                    ),
                    ItemMenuBottom(
                      icon: EvilIcons.arrow_down,
                      text: 'Depositar',
                    ),
                    ItemMenuBottom(
                      icon: EvilIcons.arrow_up,
                      text: 'Transferir',
                    ),
                    ItemMenuBottom(
                      icon: FontAwesome.sliders,
                      text: 'Ajustar limite',
                    ),
                    ItemMenuBottom(
                      icon: Icons.help_outline,
                      text: 'Me Ajuda',
                    ),
                    ItemMenuBottom(
                      icon: MaterialCommunityIcons.barcode,
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
                      icon: FontAwesome.sort_amount_asc,
                      text: 'Organizar atalhos',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}