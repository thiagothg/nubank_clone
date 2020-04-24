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

  final _$showSaldoAtom = Atom(name: '_HomeControllerBase.showSaldo');

  @override
  bool get showSaldo {
    _$showSaldoAtom.context.enforceReadPolicy(_$showSaldoAtom);
    _$showSaldoAtom.reportObserved();
    return super.showSaldo;
  }

  @override
  set showSaldo(bool value) {
    _$showSaldoAtom.context.conditionallyRunInAction(() {
      super.showSaldo = value;
      _$showSaldoAtom.reportChanged();
    }, _$showSaldoAtom, name: '${_$showSaldoAtom.name}_set');
  }

  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$xPositionAtom = Atom(name: '_HomeControllerBase.xPosition');

  @override
  double get xPosition {
    _$xPositionAtom.context.enforceReadPolicy(_$xPositionAtom);
    _$xPositionAtom.reportObserved();
    return super.xPosition;
  }

  @override
  set xPosition(double value) {
    _$xPositionAtom.context.conditionallyRunInAction(() {
      super.xPosition = value;
      _$xPositionAtom.reportChanged();
    }, _$xPositionAtom, name: '${_$xPositionAtom.name}_set');
  }

  final _$yPositionAtom = Atom(name: '_HomeControllerBase.yPosition');

  @override
  double get yPosition {
    _$yPositionAtom.context.enforceReadPolicy(_$yPositionAtom);
    _$yPositionAtom.reportObserved();
    return super.yPosition;
  }

  @override
  set yPosition(double value) {
    _$yPositionAtom.context.conditionallyRunInAction(() {
      super.yPosition = value;
      _$yPositionAtom.reportChanged();
    }, _$yPositionAtom, name: '${_$yPositionAtom.name}_set');
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
    final string =
        'showMenu: ${showMenu.toString()},showSaldo: ${showSaldo.toString()},currentIndex: ${currentIndex.toString()},xPosition: ${xPosition.toString()},yPosition: ${yPosition.toString()}';
    return '{$string}';
  }
}
