import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';
import 'package:flutter_ui/src/utils/routes/routes.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      onGenerateRoute: RouterGenerator.generateRoute,
      initialRoute: '/NavigationPage',
    );
  }
}
