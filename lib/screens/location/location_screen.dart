import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/widgets/map.dart';
import 'package:foodie/screens/basket/basket.dart';
import 'package:foodie/screens/home/home_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/location_search_box.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const LocationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Map(lat: 10, lng: 10),
          Positioned(
            top: 20,
            right: 20,
            left: 20,
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/logo.svg',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(child: LocationSearchBox()),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            left: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: ElevatedButton(
                child: Text('SAVE'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
