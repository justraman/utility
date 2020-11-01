import 'package:utility/src/dynamic/is_falsey.dart';

List<T> compact<T>(List<T> list) {
  return list.where((element) {
    if(isFalsey(element)){
      return false;
    }
    return true;
  }).toList();
}

