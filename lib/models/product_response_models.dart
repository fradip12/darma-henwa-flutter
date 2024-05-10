import 'package:apps_satu/models/product_models.dart';

class ProductsResponse {
  int? total;
  int? skip;
  int? limit;
  List<ProductModels>? products;

  ProductsResponse({
    this.total,
    this.skip,
    this.limit,
    this.products,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return ProductsResponse(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      products: (json['products'] as List)
          .map((e) => ProductModels.fromJson(e))
          .toList(),
    );
  }
}
