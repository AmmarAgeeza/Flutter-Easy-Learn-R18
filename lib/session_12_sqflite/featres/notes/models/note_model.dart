class NoteModel {
  final int? id;
  final String title;
  final String content;
  final String createdAt;
  NoteModel({
    this.id,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  Map<String, Object?> toMap(){
    return {
      "title": title,
      "content": content,
      "createdAt": createdAt,
    };
  }

  factory NoteModel.fromMap(Map<String, Object?> map) {
    return NoteModel(
      id: map['id'] as int?,
      title: map['title'] as String,
      content: map['content'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

}