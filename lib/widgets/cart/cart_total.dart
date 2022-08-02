import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../models/combain.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var priceStyle = Theme.of(context).textTheme.headline4;
    var textTheme3 = Theme.of(context).textTheme.headline3;

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScopedModelDescendant(
                rebuildOnChange: true,
                builder:
                    (BuildContext context, Widget child, CombainModel model) {
                  return Text('\$${model.totalPrice}', style: priceStyle);
                }),
            const SizedBox(width: 25),
            FlatButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      '  Buying not supported yet',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                );
              },
              color: Colors.white,
              child: Text(
                'Buy',
                style: textTheme3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
