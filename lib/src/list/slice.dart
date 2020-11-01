
 List<T> slice<T>(List<T> list,int start, [int end]) {
   var length = list == null ? 0 : list.length;
   if (length <= 0) {
     return [];
   }
   start = start ?? 0;
   end = end ?? length;
 
   if (start < 0) {
     start = -start > length ? 0 : (length + start );
   }
   end = end > length ? length : end;
   if (end < 0) {
     end += length;
   }
   length = start > end ? 0 : ((end - start) >> 0);
   start = start >> 0;
 
   var index = -1;
   var result = [];
   while (++index < length) {
     result.add(list.elementAt(index+start));
   }
   return result;
 }
 
