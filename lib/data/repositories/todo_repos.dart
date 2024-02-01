import 'package:demo_flutter_bloc/data/models/todo_model.dart';
import 'package:demo_flutter_bloc/data/providers/todo_provider.dart';

class TodoRepository {
  Future<List<Todo>> getTodo() async {
    final TodoAPI todoAPI = TodoAPI();
    // final Dio dio = Dio();
    // final response = await dio.get(_baseUrl);
    final response = await todoAPI.getRawData();
    if (response.statusCode == 200) {
      return (response.data['todos'] as List)
          .map((task) => Todo.fromJson(task))
          .toList();
    } else {
      throw Exception("Failed to load tasks");
    }
  }
}
