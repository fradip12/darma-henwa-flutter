import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  // Get data API
  Future<Map<String, dynamic>> getData() async {
    String url = 'https://dummyjson.com/products/1';
    final response = await http.get(Uri.parse(url));
    await Future.delayed(const Duration(seconds: 3));
    return json.decode(response.body) as Map<String, dynamic>;
  }
}
