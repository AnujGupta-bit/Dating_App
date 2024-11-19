class NotesModel {
  int? id;
  String title;
  int age;
  String description;
  String email;

  NotesModel({
    this.id,
    required this.title,
    required this.age,
    required this.description,
    required this.email,
  });

  // Converts a NotesModel object into a map for database insertion.
  Map<String, dynamic> tomap() {
    var map = <String, dynamic>{
      'title': title,
      'age': age,
      'description': description,
      'email': email,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  // Creates a NotesModel object from a map retrieved from the database.
  NotesModel.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        title = res['title'],
        age = res['age'],
        description = res['description'],
        email = res['email'];

}
