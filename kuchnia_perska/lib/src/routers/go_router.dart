import 'package:flutter/material.dart';
import 'package:kuchnia_perska/src/routers/custom_router.dart';

class GoRouter {
  static Future route(BuildContext context, String route, [Object? object]) {
    if (object == null) {
      return Navigator.pushNamed(context, route);
    } else {
      return Navigator.push(
          context,
          CustomRouter.generatedRoute(
              RouteSettings(name: route, arguments: object), context));
    }
  }

  static void closeWindow(BuildContext context, bool result) {
    Navigator.pop(context, result);
  }
}
