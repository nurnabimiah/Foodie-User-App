





import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/model/response_model/categories_product_model.dart';

class CategoriesController extends GetxController {
  var cartItems = <CartItem>[].obs;
  var favoriteItems = <CategoriesProductModel>[].obs;

  void addToCart(CategoriesProductModel product) {
    var existingItem = cartItems.firstWhere(
          (item) => item.product == product,
      orElse: () => CartItem(product: product, quantity: 0),
    );

    existingItem.quantity++;
    if (existingItem.quantity == 1) {
      cartItems.add(existingItem);
    }
  }

  void removeFromCart(CategoriesProductModel product) {
    var existingItem = cartItems.firstWhere(
          (item) => item.product == product,
      orElse: () => CartItem(product: product, quantity: 0),
    );

    existingItem.quantity--;

    if (existingItem.quantity == 0) {
      cartItems.remove(existingItem);
    }
  }

  void toggleFavorite(CategoriesProductModel product) {
    if (favoriteItems.contains(product)) {
      favoriteItems.remove(product);
    } else {
      favoriteItems.add(product);
    }
  }
}

class CartItem {
  CategoriesProductModel product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}
