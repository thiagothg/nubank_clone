import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool showMenu = false;

  @observable
  int currentIndex = 0;

  @observable
  double xPosition = 0;

  @observable
  double yPosition = 0;

  @action
  void increment() {
    
  }
}
