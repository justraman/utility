part of utility;

bool isEmpty(dynamic value) {
  if (value is Map || value is String || value is Iterable || value is List) {
    return value?.isEmpty ?? false;
  }
  return false;
}
