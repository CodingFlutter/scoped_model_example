import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

import '../../models/combin.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme4 = Theme.of(context).textTheme.headline4;

    return ScopedModelDescendant(
        rebuildOnChange: true,
        builder: (BuildContext context, Widget child, CombinModel model) {
          return ListView.builder(
            itemCount: model.fruits.length,
            itemBuilder: (context, index) => Platform.isIOS
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Card(
                      elevation: 0,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            model.fruits[index].name,
                            style: textTheme4,
                          ),
                        ],
                      ),
                    ),
                  )
                : ListTile(
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
