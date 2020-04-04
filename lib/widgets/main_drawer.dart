import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    backgroundColor: Colors.redAccent,
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mashood-Siddiquie',
                    style: TextStyle(
                      fontFamily: 'SpicyRice',
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
//          SizedBox(
//            height: 20,
//          ),
          Divider(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const ListTile(
                    title: Text(
                      'My Orders',
                      style: TextStyle(
                        fontFamily: 'SpicyRice',
                        fontSize: 20,
                      ),
                    ),
                    leading: Icon(
                      Icons.history,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Payment Mode',
                      style: TextStyle(
                        fontFamily: 'SpicyRice',
                        fontSize: 20,
                      ),
                    ),
                    leading: Icon(
                      Icons.credit_card,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Offers',
                      style: TextStyle(
                        fontFamily: 'SpicyRice',
                        fontSize: 20,
                      ),
                    ),
                    leading: Icon(
                      Icons.local_offer,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Log-out',
                      style: TextStyle(
                        fontFamily: 'SpicyRice',
                        fontSize: 20,
                      ),
                    ),
                    leading: Icon(
                      Icons.transit_enterexit,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
