import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  // Get data API
  Future<String> getData() async {
    String url = 'https://dummyjson.com/products/1';
    final response = await http.get(Uri.parse(url));
    return response.body;
  }
}
