import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './style/my_app_theme.dart';

import 'models/combain.dart';

import './screens/cart.dart';
import './screens/list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CombainModel.instance,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management Scoped Model',
        theme: myAppTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const MyList(),
          '/cart': (context) => const MyCart(),
        },
      ),
    );
  }
}
