import 'package:scoped_model/scoped_model.dart';

import 'fruit.dart';

abstract class ShoppingModel extends Model {
  static const _fruitNames = [
    'Apples',
    'Banana',
    'Figs',
    'Kiwifruit',
    'Mandarin',
    'Mango',
    'Peaches',
    'Pear',
    'Pineapple',
    'Watermelon',
  ];

  static const List<String> _myImages = [
    'assets/images/apple.jpg',
    'assets/images/banana.jpg',
    'assets/images/fig.jpg',
    'assets/images/kiwifruit.jpg',
    'assets/images/mandarin.jpg',
    'assets/images/mango.jpg',
    'assets/images/peache.jpg',
    'assets/images/pear.jpg',
    'assets/images/pineapple.jpg',
    'assets/images/watermelon.jpg',
  ];

  //Get fruit by (id).
  //The list is infinite, looping over (_fruitNames).
  Fruit getById(int id) => Fruit(
        id,
        _fruitNames[id % _fruitNames.length],
        _myImages[id % _myImages.length],
      );

  //Get fruit by its position in the list.
  Fruit getByPosition(int position) {
    // the fruit position in the list is also its id.
    return getById(position);
  }
}
