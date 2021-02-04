import 'package:get/get.dart';
import 'package:getxtutorial/models/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'First Product'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'Second Product'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'Third Product'),
    ];
    products.assignAll(productResult);
  }
}
