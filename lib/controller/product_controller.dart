import 'package:apps_satu/models/product_response_models.dart';
import 'package:apps_satu/services/api_services.dart';
import 'package:flutter/material.dart';

class ProductController extends ChangeNotifier {
  // Penampung data
  ProductsResponse? data;

  // Event for get data
  void getDataFromServices() {
    ApiServices().getProducts().then(
      (value) {
        data = value;

        notifyListeners();
      },
    );
  }

  Future<ProductsResponse> getData() async {
    final res = await ApiServices().getProducts();
    notifyListeners();
    return res;
  }

  Future<ProductsResponse> getDetail(String id) async {
    final res = await ApiServices().getDetail(id);
    notifyListeners();
    return res;
  }
}
