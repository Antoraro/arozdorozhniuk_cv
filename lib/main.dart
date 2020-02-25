import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:flutter/material.dart';

import 'layout_template.dart';

main() {
//  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyInfo.title,
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        brightness: Brightness.light,
        textTheme:
            Theme.of(context).textTheme.apply(fontFamily: 'San Francisco'),
      ),
      home: Scaffold(
        backgroundColor: AppColors.secondary.withOpacity(0.2),
        body: LayoutTemplate(),
      ),
    );
  }
}
