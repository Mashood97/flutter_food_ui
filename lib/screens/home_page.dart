import 'package:flutter/material.dart';
import 'package:flutterfooduipractice/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/food_item_grid.dart';
import '../widgets/badge.dart';
import '../widgets/main_drawer.dart';

enum FilterFavourites {
  Favourites,
  All,
}

class HomePage extends StatefulWidget {
  static const routeArgs = '/home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var showFav = false;
  final _locationAddressController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  void _showModalBotttomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withOpacity(0.7),
                  Colors.red.withOpacity(0.5),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                  child: TextField(
                    controller: _locationAddressController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter your Address',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _phoneNumberController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter your Phone Number',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.phone_iphone,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.redAccent,
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontFamily: 'SpicyRice',
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          'Menu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        actions: <Widget>[
          Consumer<CartProvider>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
              color: Colors.red,
            ),
            child: Icon(
              Icons.shopping_basket,
            ),
          ),
          PopupMenuButton(
            onSelected: (selectedValue) {
              setState(() {
                if (selectedValue == FilterFavourites.Favourites) {
                  showFav = true;
                } else {
                  showFav = false;
                }
              });
            },
            itemBuilder: (ctx) => [
              PopupMenuItem(
                child: Text(
                  'Show Favourites',
                ),
                value: FilterFavourites.Favourites,
              ),
              PopupMenuItem(
                child: Text(
                  'Show All',
                ),
                value: FilterFavourites.All,
              )
            ],
          ),
        ],
      ),
      drawerScrimColor: Colors.red.withOpacity(0.8),
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: FoodItemGrid(showFav),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModalBotttomSheet();
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
    );
  }
}
