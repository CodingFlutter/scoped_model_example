import 'package:scoped_model/scoped_model.dart';
import 'cart.dart';
import 'list.dart';

class CombainModel extends Model with CartModel, ListModel {
  CombainModel._privateConstructor();

  static final CombainModel _instance = CombainModel._privateConstructor();

  static CombainModel get instance {
    return _instance;
  }
}
