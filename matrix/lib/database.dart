class Interest {
  String name ;
   Interest({
    required this.name
});
   Map<String , dynamic> toMap()
   {
     return {
       'name ' : name ,

     };
   }
   factory Interest.fromMap(Map<String , dynamic> map)
   {
     return Interest(
       name : map['name'],
     );
   }
}