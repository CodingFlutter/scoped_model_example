import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../models/combain.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme4 = Theme.of(context).textTheme.headline4;

    return ScopedModelDescendant(
        rebuildOnChange: true,
        builder: (BuildContext context, Widget child, CombainModel model) {
          return ListView.builder(
            itemCount: model.fruits.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(
                Icons.done,
                color: Colors.white,
              ),
              title: Text(
                model.fruits[index].name,
                style: textTheme4,
              ),
            ),
          );
        });
  }
}
