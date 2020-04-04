import 'package:flutter/foundation.dart';

class FoodModel with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  bool isFav;

  FoodModel(
      {this.id, this.title, this.imageUrl, this.price, this.isFav = false});

  void toogleFav() {
    isFav = !isFav;
    notifyListeners();
  }

  bool get isFavStatus {
    return isFav;
  }
}

class FoodProvider with ChangeNotifier {
  final List<FoodModel> _items = [
    FoodModel(
      id: '1',
      title: 'Burgers',
      imageUrl:
          'https://images.pexels.com/photos/750073/pexels-photo-750073.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 300.0,
    ),
    FoodModel(
      id: '2',
      title: 'Desi Cusine',
      imageUrl:
          'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 150.0,
    ),
    FoodModel(
      id: '3',
      title: 'Tasty Pizza',
      imageUrl:
          'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 500.0,
    ),
    FoodModel(
      id: '4',
      title: 'Cheesy Pasta',
      imageUrl:
          'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 250.0,
    ),
    FoodModel(
      id: '5',
      title: 'Sweet like Sugar',
      imageUrl:
          'https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 100.0,
    ),
    FoodModel(
      id: '6',
      title: 'Fried Tried Break',
      imageUrl:
          'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 350.0,
    ),
    FoodModel(
      id: '7',
      title: 'Cold Stuff',
      imageUrl:
          'https://images.pexels.com/photos/1006190/pexels-photo-1006190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 50.0,
    ),
    FoodModel(
      id: '8',
      title: 'Morning Break',
      imageUrl:
          'https://images.pexels.com/photos/588776/pexels-photo-588776.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 100.0,
    ),
    FoodModel(
      id: '9',
      title: 'Fresh Juice',
      imageUrl:
          'https://images.pexels.com/photos/914241/pexels-photo-914241.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 125.0,
    ),
    FoodModel(
      id: '10',
      title: 'Hot Coffee',
      imageUrl:
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      price: 225.0,
    ),
  ];

  List<FoodModel> get items {
    return [..._items];
  }

  List<FoodModel> get getFavourite {
    return _items.where((prod) {
      return prod.isFav;
    }).toList();
  }
}
