import 'package:flutter/material.dart';
import 'package:thriftinc/models/product_model.dart';
import 'package:thriftinc/services/api_service.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? allProductData;
  ProductModel? popularProductData;
  ProductModel? latestProductData;
  String? status;
  int currentIndex = 0;

  Future<void> getAll() async {
    final response = await ApiService().getAllProduct();
    response.fold(
      (l) => status = l,
      (r) => allProductData = r,
    );
    notifyListeners();
  }

  Future<void> getPopular() async {
    final response = await ApiService().getPopularProduct();
    response.fold(
      (l) => status = l,
      (r) => popularProductData = r,
    );
    notifyListeners();
  }

  Future<void> getLatest() async {
    final response = await ApiService().getLatestProduct();
    response.fold(
      (l) => status = l,
      (r) => latestProductData = r,
    );
    notifyListeners();
  }

  void showedImage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  getProduct() {
    getAll();
    getPopular();
    getLatest();
  }
}
