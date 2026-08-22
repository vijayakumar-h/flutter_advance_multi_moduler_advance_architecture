library;

import 'package:data/data.dart';
import 'package:datastore/provider/session_provider_impl.dart';
export 'package:data/data.dart';
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  var session = DevSessionProviderImpl();
  Dio dio = Dio();
}
