import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:cupertino_list_tile/cupertino_list_tile.dart';

import '../../models/combin.dart';

import 'add_button.dart';

class FruitItem extends StatelessWidget {
  final int index;
  final CombinModel model = CombinModel.instance;

  FruitItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fruit = model.getByPosition(index);
    var textTheme2 = Theme.of(context).textTheme.headline2;

    return SizedBox(
      height: 90,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Card(
          elevation: 0,
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: Image.asset(
                  fruit.image,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 80,
                child: Text(
                  fruit.name,
                  style: textTheme2,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              AddButton(fruit: fruit),
            ],
          ),
        ),
      ),
    );
  }
}
