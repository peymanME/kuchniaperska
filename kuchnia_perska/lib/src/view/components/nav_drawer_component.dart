import 'package:custom_flutter_framework/configs/app_params_loading_config.dart';
import 'package:custom_flutter_framework/views/components/rich_text_component.dart';

import 'package:flutter/material.dart';

import 'package:kuchnia_perska/src/routers/go_router.dart';
import 'package:kuchnia_perska/src/routers/url_router.dart';

class NavDrawerComponent extends StatelessWidget {
  const NavDrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home page"),
            onTap: () => GoRouter.route(context, UrlRoute.root),
          ),
          ExpansionTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.flag),
                  title: const Text("Backup"),
                  onTap: () => [])
            ],
          ),
          RichTextComponent(title: 'version : ', value: AppParamsLoadingConfig.config?.version )
        ],
      ),
    );
  }
}
