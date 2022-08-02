import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/list/my_app_bar.dart';
import '../widgets/list/cupertino_app_bar.dart';
import '../widgets/list/my_fruit_item.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
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
            ),
            child: CupertinoScrollbar(
              child: Text('yes'),
            ),
          )
        : Scaffold(
            body: CustomScrollView(
              slivers: [
                const MyAppBar(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 12,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => MyFruitItem(index),
                  ),
                ),
              ],
            ),
          );
  }
}
