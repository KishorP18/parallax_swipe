import 'package:flutter/material.dart';
import 'package:parallax_swipe/route_const.dart';
import 'package:parallax_swipe/ui/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parallax Swipe',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteConst.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}


