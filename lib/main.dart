// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie/config/app_router.dart';
import 'package:foodie/config/theme.dart';
import 'package:foodie/screens/basket/basket.dart';
import 'package:foodie/screens/checkout/checkout_screen.dart';
import 'package:foodie/screens/delivery/delivery_time_screen.dart';
import 'package:foodie/screens/filter/filter_screen.dart';
import 'package:foodie/screens/home/home_screen.dart';
import 'package:foodie/screens/location/location_screen.dart';
import 'package:foodie/screens/resturant_details/resturant_details.dart';
import 'package:foodie/screens/resturant_listing/resturant_listing.dart';
import 'package:foodie/screens/voucher/voucher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LocationScreen.routeName,
      routes: {
        BasketScreen.routeName: (context) => BasketScreen(),
        CheckoutScreen.routeName: (context) => CheckoutScreen(),
        DeliveryTimeScreen.routeName: (context) => DeliveryTimeScreen(),
        FilterScreen.routeName: (context) => FilterScreen(),
        LocationScreen.routeName: (context) => LocationScreen(),
        ResturantDetailsScreen.routeName: (context) => ResturantDetailsScreen(),
        ResturantListingScreen.routeName: (context) => ResturantListingScreen(),
        VoucherScreen.routeName: (context) => VoucherScreen(),
        // BasketScreen.routeName: (context) => BasketScreen(),
        // BasketScreen.routeName: (context) => BasketScreen(),
      },
    );
  }
}
