import 'package:flutter/material.dart';

import '../widgets/cart/cart_list.dart';
import '../widgets/cart/cart_total.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme4 = Theme.of(context).textTheme.headline4;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: textTheme4,
        ),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        color: Colors.red[300],
        child: Column(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: CartList(),
              ),
            ),
            Divider(height: 5, color: Colors.black),
            CartTotal(),
          ],
        ),
      ),
    );
  }
}
