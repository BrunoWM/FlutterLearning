import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_store.dart';

//import 'package:course_schedules/app/modules/home/home_page.dart';

import 'package:course_schedules/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
