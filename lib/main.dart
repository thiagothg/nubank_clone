import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark
  ));

  runApp(ModularApp(module: AppModule()));
} 
