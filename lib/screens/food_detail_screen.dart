import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart';

class FoodDetailScreen extends StatelessWidget {
  static const routeArgs = '/food-detail-screen';
  @override
  Widget build(BuildContext context) {
    final productId= ModalRoute.of(context).settings.arguments as String;
    final data = Provider.of<FoodProvider>(context).getProductById(productId);

    return Scaffold(
      appBar:AppBar(
        title: Text(data.title),
      ),
    );
  }
}
