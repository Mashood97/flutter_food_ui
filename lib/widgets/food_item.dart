import 'package:flutter/material.dart';
import 'package:flutterfooduipractice/screens/food_detail_screen.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart' show FoodModel;
import '../providers/cart_provider.dart';

class FoodItem extends StatelessWidget {
//  final String id;
//  final String imageUrl;
//  final String title;
//
//  FoodItem(this.id, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<FoodModel>(context, listen: false);
    final cartData = Provider.of<CartProvider>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(FoodDetailScreen.routeArgs,
                arguments: providerData.id);
          },
          child: Container(
            height: 200,
            child: Image.network(
              providerData.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        header: GridTileBar(
          backgroundColor: Colors.red.withOpacity(0.6),
          title: Text(
            providerData.title,
            style: TextStyle(
              fontFamily: 'SpicyRice',
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            splashColor: Colors.red,
            onPressed: () {
              cartData.addItem(
                providerData.id,
                providerData.title,
                providerData.price,
              );

              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(
                    seconds: 1,
                  ),
                  backgroundColor: Colors.black87,
                  content: Text('Item Added',style: TextStyle(
                    fontFamily: 'SpicyRice',
                    fontSize: 18,
                  ),),
                ),
              );
            },
          ),
        ),
        footer: ListTile(
          trailing: Consumer<FoodModel>(
            builder: (ctx, food, _) => GestureDetector(
              onTap: () {
                providerData.toogleFav();
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  providerData.isFav ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
