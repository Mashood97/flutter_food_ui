import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../widgets/cart_items.dart' as ci;

class CartScreen extends StatelessWidget {
  static const routeArgs = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cartItem = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Spacer(),
//                  Text('\$24.5',style: TextStyle(
//                    fontSize: 18,
//                  ),),

                  Chip(
                    label: Text(
                      '\$${cartItem.totalPrice}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  FlatButton(
                    splashColor: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: cartItem.items.length,
                itemBuilder: (ctx, i) => ci.CartItem(
                      id: cartItem.items.values.toList()[i].id,
                      title: cartItem.items.values.toList()[i].title,
                      price: cartItem.items.values.toList()[i].price,
                      quantity: cartItem.items.values.toList()[i].quantity,
                      prodId: cartItem.items.keys.toList()[i],
                    )),
          )
        ],
      ),
    );
  }
}
