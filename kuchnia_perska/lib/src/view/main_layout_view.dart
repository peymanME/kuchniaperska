import 'package:flutter/material.dart';
import 'package:kuchnia_perska/src/routers/custom_router.dart';
import 'package:kuchnia_perska/src/routers/url_router.dart';
import 'package:provider/provider.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({Key? key}) : super(key: key);

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  @override
  Widget build(BuildContext context) {
    return /*MultiProvider(
        providers: [],
        child: */MaterialApp(
          // navigatorKey: NavigationService.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'My gym application',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: CustomRouter.generatedRoute,
          initialRoute: UrlRoute.root,
        )/*)*/;
  }
}
