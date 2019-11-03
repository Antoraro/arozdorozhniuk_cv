import 'package:cv_web/main_page.dart';
import 'package:flutter_web/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColorLight: Colors.white,
      ),
      home: MainPage(),
    );
  }
}