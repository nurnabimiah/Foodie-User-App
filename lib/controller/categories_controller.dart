





import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/model/response_model/categories_product_model.dart';


class CategoriesController extends GetxController {

  var cartItems = <CartItem<CategoriWiseItemList>>[].obs;
  var favoriteItems = <CategoriWiseItemList>[].obs;


  void addToCart(CategoriWiseItemList product) {
    var existingItemIndex = cartItems.indexWhere((item) => item.product == product);

    if (existingItemIndex != -1) {
      cartItems[existingItemIndex].quantity++;
    } else {
      cartItems.add(CartItem(product: product, quantity: 1));
    }
  }

  void removeFromCart(CategoriWiseItemList product) {
    var existingItemIndex = cartItems.indexWhere((item) => item.product == product);

    if (existingItemIndex != -1) {
      cartItems[existingItemIndex].quantity--;

      if (cartItems[existingItemIndex].quantity == 0) {
        cartItems.removeAt(existingItemIndex);
      }
    }
  }

  void toggleFavorite(CategoriWiseItemList product) {
    if (favoriteItems.contains(product)) {
      favoriteItems.remove(product);
    } else {
      favoriteItems.add(product);
    }
  }

  bool isInCart(CategoriWiseItemList product) {
    return cartItems.any((item) => item.product == product && item.quantity > 0);
  }

  int cartQuantity(CategoriWiseItemList product) {
    var cartItem = cartItems.firstWhere(
          (item) => item.product == product,
      orElse: () => CartItem(product: product, quantity: 0),
    );

    return cartItem.quantity;
  }
}

class CartItem<T> {
  T product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}
