// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$showMenuAtom = Atom(name: '_HomeControllerBase.showMenu');

  @override
  bool get showMenu {
    _$showMenuAtom.context.enforceReadPolicy(_$showMenuAtom);
    _$showMenuAtom.reportObserved();
    return super.showMenu;
  }

  @override
  set showMenu(bool value) {
    _$showMenuAtom.context.conditionallyRunInAction(() {
      super.showMenu = value;
      _$showMenuAtom.reportChanged();
    }, _$showMenuAtom, name: '${_$showMenuAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'showMenu: ${showMenu.toString()}';
    return '{$string}';
  }
}
