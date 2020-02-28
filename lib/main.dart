import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/locator.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'layout_template.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: locator<MyInfo>().title,
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        brightness: Brightness.light,
        dividerColor: Colors.transparent,
        textTheme:
            Theme.of(context).textTheme.apply(fontFamily: 'San Francisco'),
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: LayoutTemplate(),
      ),
    );
  }
}
