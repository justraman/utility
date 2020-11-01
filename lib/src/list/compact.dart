part of utility;

List<T> compact<T>(List<T> list) {
  return list.where((element) {
    return !isFalsey(element);
  }).toList();
}
