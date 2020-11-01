part of utility;

// ignore_for_file: unnecessary_this

extension UtilityList<T> on List<T> {
  ///
  ///Creates a slice of `list` from `start` up to, but not including, `end`.
  ///
  ///````dart
  ///var list = [1, 2, 3, 4];
  ///
  ///// Does not affects on the data of list and returns a new sliced list object
  ///var newSlicedList = list.slice(2); // list = [3, 4]
  ///
  ///````
  List<T> slice(int start, [int end]) {
    var length = this?.length ?? 0;
    if (length <= 0) {
      return <T>[];
    }
    start ??= 0;
    end ??= length;

    if (start < 0) {
      start = -start > length ? 0 : (length + start);
    }
    end = end > length ? length : end;
    if (end < 0) {
      end += length;
    }
    length = start > end ? 0 : zeroFillRightShift((end - start), 0);
    start = start.zeroFillRightShift(0);

    var index = -1;
    var result = <T>[];
    while (++index < length) {
      result.add(this[index + start]);
    }
    return result;
  }

  ///
  /// Creates an list of elements split into groups the length of `size`.
  /// If `list` can't be split evenly, the final chunk will be the remaining
  /// elements.
  ///
  ///
  /// ````dart
  /// // It returns new Object of Chunked data;
  /// var chunkedData = chunk(['a', 'b', 'c', 'd'], 2);
  /// // chunkedData = [['a', 'b'], ['c', 'd']];
  ///
  /// // It returns new Object of Chunked data;
  /// var list = ['a', 'b', 'c', 'd'];
  /// chunkedData = list.chunk(3);
  /// // chunkedData = [['a', 'b', 'c'], ['d']];
  /// ````
  List<List<T>> chunk([int size = 1]) {
    size ??= 1;
    size = max(toNumber(size), 0);
    var length = this?.length ?? 0;
    if (length <= 0 || size < 1) {
      return <List<T>>[];
    }
    var index = 0, resIndex = 0;
    var result = List<List<T>>((length / size).ceil());

    while (index < length) {
      result[resIndex++] = this.slice(index, (index += size));
    }
    return result;
  }
}
