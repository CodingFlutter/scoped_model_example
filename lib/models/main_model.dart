import 'package:scoped_model/scoped_model.dart';
import 'cart.dart';
import 'shopping.dart';

class MainModel extends Model with CartModel, ShoppingModel {
  MainModel._privateConstructor();

  static final MainModel _instance = MainModel._privateConstructor();

  static MainModel get instance {
    return _instance;
  }
}
