import 'dart:convert';

import 'package:arozd_cv/config/my_info.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  final String info = await rootBundle.loadString('assets/config/info.json');
  locator.registerLazySingleton(() => MyInfo.fromJson(jsonDecode(info)));
}
