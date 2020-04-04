import 'package:flutter/material.dart';
import '../widgets/badge.dart';
import '../widgets/main_drawer.dart';
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      automaticallyImplyLeading: true,
      iconTheme: new IconThemeData(color: Colors.black),
      title: Text(
        'User Profile',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      actions: <Widget>[
         Badge(
          child: Icon(
            Icons.shopping_basket,
          ),
          value: "0",
          color: Colors.red,
        ),

          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 30,
            ),
            onPressed: () {},
          ),
      ],
    ),
      drawerScrimColor: Colors.red.withOpacity(0.8),

      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                backgroundColor: Colors.redAccent,
                radius: 70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Hello, Mashood',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SpicyRice',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontFamily: 'SpicyRice',
                          ),
                        ),
                        const Text(
                          'Mashood Siddiquie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontFamily: 'SpicyRice',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontFamily: 'SpicyRice',
                          ),
                        ),
                        const Text(
                          'mashoodsidd97@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontFamily: 'SpicyRice',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: RaisedButton(
                padding: const EdgeInsets.all(15),
                splashColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
                child: const Text(
                  'Update Profile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
