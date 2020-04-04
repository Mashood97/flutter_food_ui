import 'package:flutter/material.dart';
import '../providers/food_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/food_item.dart';

//enum FilterFavourites {
//  Favourites,
//  All,
//}

class FoodItemGrid extends StatelessWidget {
  final bool showfav;

  FoodItemGrid(this.showfav);

  @override
  Widget build(BuildContext context) {
    final foodData = Provider.of<FoodProvider>(context);
    final productData = showfav ? foodData.getFavourite : foodData.items;
    return GridView.builder(
      padding: EdgeInsets.all(15),
      itemCount: productData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: productData[i],
        child: FoodItem(
          foodData.items[i].imageUrl,
          foodData.items[i].title,
        ),
      ),
    );
  }
}
