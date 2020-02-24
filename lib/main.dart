import 'package:flutter/material.dart';

import 'layout_template.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anton Rozdorozhniuk CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        textTheme:
            Theme.of(context).textTheme.apply(fontFamily: 'San Francisco'),
      ),
      home: LayoutTemplate(),
    );
  }
}
