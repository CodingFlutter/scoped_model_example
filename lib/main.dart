import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './style/my_app_theme.dart';

import 'models/combine.dart';

import 'screens/my_cart.dart';
import 'screens/my_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CombineModel.instance,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management Scoped Model',
        theme: myAppTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyList(),
          '/cart': (context) => const MyCart(),
        },
      ),
    );
  }
}
