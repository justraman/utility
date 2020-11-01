part of utility;

var NAN = 0 / 0;
var reTrim = RegExp(r'/^\s+|\s+$/g');
var reIsBadHex = RegExp(r'/^[-+]0x[0-9a-f]+$/i');
var reIsBinary = RegExp(r'/^0b[01]+$/i');
var reIsOctal = RegExp(r'/^0o[0-7]+$/i');

num toNumber(dynamic value, {bool silenced = false}) {
  if (value is num) {
    return value;
  }
  if (value is! String) {
    if (silenced) {
      return null;
    }
    throw Exception('Only String and num allowed.');
  }
  return num.tryParse(value.toString().trim());
}

//value = value.replace(reTrim, '')
/* var isBinary = reIsBinary.hasMatch(value);
  return (isBinary || reIsOctal.hasMatch(value))
    ? num.parse(value.slice(2), isBinary > 0 ? 2 : 8)
    : (reIsBadHex.test(value) ? NAN : +value) */
