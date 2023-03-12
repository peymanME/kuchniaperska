import 'package:custom_flutter_framework/views/components/app_bar_menu_component.dart';
import 'package:custom_flutter_framework/views/components/layout_view_component.dart';
import 'package:flutter/material.dart';
import 'package:kuchnia_perska/src/view/components/nav_drawer_component.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key, this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String? title;

  @override
  State<MyHomeView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomeView> {

  @override
  Widget build(BuildContext context) {
    return LayoutViewComponent(
      drawerComponent: const NavDrawerComponent(),
      appBarComponent: AppBarMenuComponent(title: "Kuchnia perska"),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Your welcome to kuchnia perska.' ,
            ),
          ],
        ),
      ),
    );
  }
}
