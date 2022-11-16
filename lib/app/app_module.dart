import 'package:flutter_modular/flutter_modular.dart';
import 'package:shorts_clone/modules/home/home_module.dart';
import 'package:shorts_clone/modules/splash/splash_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/home', module: HomeModule()),
        //ModuleRoute('/login', module: LoginModule()),
      ];
}
