part of utility;

extension UtilityNumber on int {
  int zeroFillRightShift(int amount) {
    if (this == null) {
      return null;
    }
    return (this & 0xffffffff) >> amount;
  }
}
