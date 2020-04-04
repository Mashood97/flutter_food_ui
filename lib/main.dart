import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import './providers/food_provider.dart';
import 'package:provider/provider.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: FoodProvider(),
        ),
        ChangeNotifierProvider.value(
          value: FoodModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        initialRoute: '/',
        routes: {
          '/': (ctx) => FoodApp(),
          TabsScreen.routeArgs: (ctx) => TabsScreen(),
        },
      ),
    );
  }
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//

                  SignInButton(
                    Buttons.Email,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(TabsScreen.routeArgs);
                    },
                  ),
                  SignInButton(
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(TabsScreen.routeArgs);
                    },
                  ),

                  SignInButton(
                    Buttons.Facebook,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(TabsScreen.routeArgs);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
