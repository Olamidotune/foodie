import 'package:flutter/material.dart';
import 'package:foodie/screens/screens.dart';

class DeliveryTimeScreen extends StatelessWidget {
  static const String routeName = '/delivery time';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => DeliveryTimeScreen(),
        settings: RouteSettings(name: routeName));
  }

  const DeliveryTimeScreen({Key? key}) : super(key: key);

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
