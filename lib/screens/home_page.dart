import 'package:flutter/material.dart';
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
          const Badge(
            child: Icon(
              Icons.shopping_basket,
            ),
            value: "0",
            color: Colors.red,
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
                child:  Text(
                  'Show All',
                ),
                value: FilterFavourites.All,
              )
            ],
          ),

//          IconButton(
//            icon: Icon(
//              Icons.more_vert,
//              size: 30,
//            ),
//            onPressed: () {},
//          ),
        ],
        backgroundColor: Colors.white,
      ),

      drawerScrimColor: Colors.red.withOpacity(0.8),
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: FoodItemGrid(showFav),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
    );
  }
}
