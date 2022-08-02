import 'package:scoped_model/scoped_model.dart';
import 'cart.dart';
import 'list.dart';

class CombinModel extends Model with CartModel, ListModel {
  CombinModel._privateConstructor();

  static final CombinModel _instance = CombinModel._privateConstructor();

  static CombinModel get instance {
    return _instance;
  }
}
