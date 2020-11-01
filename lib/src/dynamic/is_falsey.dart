part of utility;

///
/// returns `true` is value is (`null`  or  `false`  or  `''`  or  `0`);
///
/// otherwise returns `false`
bool isFalsey(dynamic value) {
  return (value == null || value == false || value == '' || value == 0);
}
