import 'package:dio/dio.dart';

class TodoAPI {
  final String _baseUrl = "https://dummyjson.com/todos";

  Future<Response> getRawData() async {
    final Dio dio = Dio();
    var rawData = await dio.get(_baseUrl);
    return rawData;
  }
}
