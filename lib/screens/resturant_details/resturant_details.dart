import 'package:flutter/material.dart';
import 'package:foodie/screens/screens.dart';

class ResturantDetailsScreen extends StatelessWidget {
  static const String routeName = '/resturant details';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const ResturantDetailsScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const ResturantDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/location');
          },
          child: const Text('Button'),
        ),
      ),
    ));
  }
}
