part of utility;

/// returns `true` is `s` is number otherwise `false`
bool isNumber(dynamic s) {
  if (s is num) {
    return true;
  }
  if (s == null) {
    return false;
  }
  return double.tryParse(s) ?? false;
}
