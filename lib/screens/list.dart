import 'package:flutter/material.dart';

import '../widgets/list/my_app_bar.dart';
import '../widgets/list/my_fruit_item.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
