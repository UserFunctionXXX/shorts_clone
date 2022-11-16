import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shorts_clone/app/app_module.dart';
import 'package:shorts_clone/app/app_widget.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}