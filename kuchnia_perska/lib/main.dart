import 'dart:io';

import 'package:custom_flutter_framework/configs/app_params_config.dart';
import 'package:custom_flutter_framework/configs/app_params_loading_config.dart';
import 'package:custom_flutter_framework/configs/http_overrides_config.dart';
import 'package:custom_flutter_framework/configs/profiles_name_config.dart';
import 'package:flutter/material.dart';
import 'package:kuchnia_perska/src/view/main_layout_view.dart';

Future<void> main() async {
  // using the root bundle to ensure that an instance of WidgetsBinding.
  HttpOverrides.global = HttpOverridesConfig();
  WidgetsFlutterBinding.ensureInitialized();
  String env = Profiles_name.MOBILE_LOCAL;
  // load config property
  AppParamsLoadingConfig(await AppParamsConfig.forEnvironment(env));

  runApp(const MainLayoutView());
}