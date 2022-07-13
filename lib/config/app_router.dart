import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/screens/basket/basket.dart';
import 'package:foodie/screens/checkout/checkout_screen.dart';
import 'package:foodie/screens/delivery/delivery_time_screen.dart';
import 'package:foodie/screens/filter/filter_screen.dart';
import 'package:foodie/screens/resturant_listing/resturant_listing.dart';
import 'package:foodie/screens/screens.dart';
import 'package:foodie/screens/voucher/voucher.dart';

import '../screens/resturant_details/resturant_details.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    ('The Route is : ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case ResturantListingScreen.routeName:
        return ResturantListingScreen.route();
      case ResturantDetailsScreen.routeName:
        return ResturantDetailsScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error !!!'),
              ),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
