import 'dart:convert';

import 'package:apps_satu/models/product_response_models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  // Get data API
  Future<Map<String, dynamic>> getData() async {
    String url = 'https://dummyjson.com/products/1';
    final response = await http.get(Uri.parse(url));
    await Future.delayed(const Duration(seconds: 3));
    return json.decode(response.body) as Map<String, dynamic>;
  }

  Future<ProductsResponse> getProducts() async {
    const String url = 'https://dummyjson.com/products?limit=10';
    final response = await http.get(Uri.parse(url));
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    final returnData = ProductsResponse.fromJson(extractedData);
    return returnData;
  }

  Future<ProductsResponse> getDetail(String id) async {
    String url = 'https://dummyjson.com/products?id=$id';
    final response = await http.get(Uri.parse(url));
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    final returnData = ProductsResponse.fromJson(extractedData);
    return returnData;
  }
}
