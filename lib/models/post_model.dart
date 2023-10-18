class PostModel {
  int id, userId;
  String title, body;

//<editor-fold desc="Data Methods">
  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          title == other.title &&
          body == other.body);

  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ title.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'PostModel{' + ' id: $id,' + ' userId: $userId,' + ' title: $title,' + ' body: $body,' + '}';
  }

  PostModel copyWith({
    int? id,
    int? userId,
    String? title,
    String? body,
  }) {
    return PostModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'userId': this.userId,
      'title': this.title,
      'body': this.body,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

//</editor-fold>
}