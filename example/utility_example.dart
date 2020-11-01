// ignore: avoid_relative_lib_imports
import '../lib/utility.dart';

void main() {
  var list = compact([0, 1, null, true, false, 'hey', '', 'hi']);
  print(isNumber(2.12));
  print('awesome: ${list}');
}
