import 'package:flutter/material.dart';

import '../../models/combin.dart';

import 'add_button.dart';

class MyFruitItem extends StatelessWidget {
  final int index;
  final CombinModel model = CombinModel.instance;

  MyFruitItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fruit = model.getByPosition(index);
    var textTheme2 = Theme.of(context).textTheme.headline2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: AspectRatio(
              aspectRatio: 1.8,
              child: Container(
                height: 250,
                width: 250,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade300),
                ),
                child: InteractiveViewer(
                  panEnabled: false,
                  boundaryMargin: const EdgeInsets.all(100),
                  minScale: 0.8,
                  maxScale: 2,
                  child: Image.asset(
                    fruit.image,
                  ),
                ),
              ),
            ),
            title: Text(
              fruit.name,
              style: textTheme2,
            ),
            trailing: AddButton(fruit: fruit),
          ),
        ],
      ),
    );
  }
}
