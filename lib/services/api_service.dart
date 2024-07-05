import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/product.dart';

class ApiService {
  final String apiUrl = "https://api.timbu.cloud/v1/products";
  final String apiKey = dotenv.env['TIMBU_API_KEY']!;

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {"Authorization": "Bearer $apiKey"},
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
