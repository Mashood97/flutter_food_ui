import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(@required this.id, @required this.title, @required this.price,
      @required this.quantity);
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalPrice {
    double totamt = 0.0;
    _items.forEach((key, cart) {
      totamt += cart.price * cart.quantity;
    });
    return totamt;
  }

  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingvalue) => CartItem(
                existingvalue.id,
                existingvalue.title,
                existingvalue.price,
                existingvalue.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                DateTime.now().toString(),
                title,
                price,
                1,
              ));
    }
    notifyListeners();
  }
}
