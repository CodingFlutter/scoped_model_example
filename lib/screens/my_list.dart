import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/list/fruit_item.dart';

class MyList extends StatelessWidget {
  MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme4 = Theme.of(context).textTheme.headline4;
    final pageBody = CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => FruitItem(index),
          ),
        ),
      ],
    );
    final myAppBar = AppBar(
      backgroundColor: Colors.red[300],
      title: Text(
        'The List of Fruits',
        style: textTheme4,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () => Navigator.pushNamed(context, '/cart'),
        ),
      ],
    );

    final cupertinoAppbar = CupertinoNavigationBar(
      backgroundColor: Colors.redAccent,
      middle: const Text(
        'The List of Fruits',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      trailing: GestureDetector(
        child: const Icon(
          CupertinoIcons.shopping_cart,
          color: Colors.white,
        ),
        onTap: () => Navigator.pushNamed(context, '/cart'),
      ),
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: cupertinoAppbar,
            child: pageBody,
          )
        : Scaffold(
            body: pageBody,
            appBar: myAppBar,
          );
  }
}
