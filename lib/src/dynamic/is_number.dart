import 'dart:developer';

bool isNumber(dynamic s) {
  print(s is num);
  if(s is num){
    return true;
  }
  if(s == null) {
    return false;
  }
  return double.parse(s, (e) => null) != null;
}