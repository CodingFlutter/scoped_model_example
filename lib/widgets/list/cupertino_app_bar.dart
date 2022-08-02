import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAppBar extends StatelessWidget {
  const CupertinoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
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
  }
}
