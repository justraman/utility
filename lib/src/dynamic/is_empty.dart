bool isEmpty(dynamic value){
  if(value is Map){
    return value.isEmpty;
  }
  if(value is String){
    return value.isEmpty;
  }
  if(value is Iterable){
    return value.isEmpty;
  }
  return false;
}