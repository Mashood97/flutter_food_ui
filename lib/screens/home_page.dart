import 'package:flutter/material.dart';
import '../widgets/food_item_grid.dart';

class HomePage extends StatelessWidget {
  static const routeArgs = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: FoodItemGrid(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.red,child: Icon(Icons.location_on,color: Colors.white,),),
    );
  }
}
