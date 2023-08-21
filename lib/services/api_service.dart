import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:thriftinc/data/endpoint.dart';
import 'package:thriftinc/models/product_model.dart';

class ApiService {
  Future<Either<String, ProductModel>> getAllProduct() async {
    final response = await http.get(Uri.parse('${Endpoint.apiUrl}/products'));
    if (response.statusCode == 200) {
      return right(productModelFromJson(response.body));
    }
    return left('failed');
  }

  Future<Either<String, ProductModel>> getPopularProduct() async {
    final response =
        await http.get(Uri.parse('${Endpoint.apiUrl}/products?tags=popular'));
    if (response.statusCode == 200) {
      return right(productModelFromJson(response.body));
    }
    return left('failed');
  }

  Future<Either<String, ProductModel>> getLatestProduct() async {
    final response =
        await http.get(Uri.parse('${Endpoint.apiUrl}/products?tags=new'));
    if (response.statusCode == 200) {
      return right(productModelFromJson(response.body));
    }
    return left('failed');
  }
}
