import 'package:scoped_model/scoped_model.dart';
import 'cart.dart';
import 'list.dart';

class CombineModel extends Model with CartModel, ListModel {
  CombineModel._privateConstructor();

  static final CombineModel _instance = CombineModel._privateConstructor();

  static CombineModel get instance {
    return _instance;
  }
}
