import 'package:flutter/material.dart';
import '../../models/combin.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../models/fruit.dart';

class AddButton extends StatelessWidget {
  final Fruit fruit;

  const AddButton({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme1 = Theme.of(context).textTheme.headline1;
    return ScopedModelDescendant<CombinModel>(
        rebuildOnChange: true,
        builder: (BuildContext context, Widget child, CombinModel model) {
          return FlatButton(
            onPressed:
                model.fruits.contains(fruit) ? null : () => model.add(fruit),
            splashColor: Theme.of(context).primaryColor,
            child: model.fruits.contains(fruit)
                ? const Icon(
                    Icons.check,
                    semanticLabel: 'Added',
                  )
                : Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.red[300],
                    child: Text(
                      'add fruit',
                      style: textTheme1,
                    ),
                  ),
          );
        });
  }
}
