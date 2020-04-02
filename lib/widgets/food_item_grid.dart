import 'package:flutter/material.dart';

import '../widgets/food_item.dart';

class FoodItemGrid extends StatelessWidget {
  final List<Map<String, String>> imageUrl = [
    {
      'image': 'https://images.pexels.com/photos/750073/pexels-photo-750073.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Burgers'
    },
    {
      'image': 'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Desi Cusine'
    },
    {
      'image': 'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Tasty Pizza'
    },
    {
      'image': 'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Chessey Chinese'
    },
    {
      'image': 'https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Sweet like sugar'
    },
    {
      'image': 'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Fried Tried'
    },
    {
      'image': 'https://images.pexels.com/photos/1006190/pexels-photo-1006190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Cold Stuffs'
    },
    {
      'image': 'https://images.pexels.com/photos/588776/pexels-photo-588776.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Morning Break'
    },
    {
      'image': 'https://images.pexels.com/photos/914241/pexels-photo-914241.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Fresh Juices'
    },
    {
      'image': 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Hot Coffee'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(15),
      itemCount: imageUrl.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => FoodItem(imageUrl[i]['image'],imageUrl[i]['title']),

    );
  }
}
