import 'package:flutter/material.dart';
import 'package:foodie/screens/screens.dart';

class ResturantListingScreen extends StatelessWidget {
  static const String routeName = '/resturant listing';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => ResturantListingScreen(),
        settings: RouteSettings(name: routeName));
  }

  const ResturantListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/location');
          },
          child: Text('Button'),
        ),
      ),
    ));
  }
}
