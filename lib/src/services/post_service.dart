import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {
  final http.Client httpClient = http.Client();

  Future<List> fetchQuote() async {
    final response = await httpClient
        .get(Uri.https('jsonplaceholder.typicode.com', '/posts'));

    if (response.statusCode != 200) {
      throw Exception('error getting posts');
    }

    List json = jsonDecode(response.body);
    return json;
  }
}
