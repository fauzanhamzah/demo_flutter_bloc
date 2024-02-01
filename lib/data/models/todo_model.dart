class Todo {
  final int id;
  final int userId;
  final String title;
  bool isComplete;

  Todo({
    required this.id,
    required this.userId,
    required this.title,
    this.isComplete = false,
  });

  copyWith({int? id, int? userId, String? title, bool? isComplete}) {
    return Todo(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        isComplete: isComplete ?? this.isComplete);
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        id: json['id'] as int,
        userId: json['userId'] as int,
        title: json['todo'] as String,
        isComplete: json['completed'] as bool? ?? false);
  }
}
