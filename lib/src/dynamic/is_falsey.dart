bool isFalsey(dynamic value){
  if(value == null || value == false || value == '' || value == 0){
    return true;
  }
  return false;
}