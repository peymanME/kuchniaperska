import 'package:custom_flutter_framework/views/pages/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:kuchnia_perska/src/routers/url_router.dart';
import 'package:kuchnia_perska/src/view/my_home_view.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings,
      [BuildContext? _context]) {
    switch (settings.name) {
      case UrlRoute.root:
        return MaterialPageRoute(builder: (_) => const MyHomeView());
      // case UrlRoute.equipmentToAddOrEdit:
      //   return (settings.arguments == null)
      //       ? MaterialPageRoute(builder: (_) => const EquipmentsAddEditView())
      //       : MaterialPageRoute(
      //           builder: (_) => const EquipmentsAddEditView(),
      //           settings: RouteSettings(arguments: settings.arguments));
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundView());
    }
  }
}
