import 'package:flutter/material.dart';
import 'package:foodie/screens/basket/basket.dart';
import 'package:foodie/screens/screens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/screens/voucher/voucher.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => HomeScreen(), settings: RouteSettings(name: routeName));
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/svgs/logo.svg',
                  height: 100,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () {
                  Navigator.of(context)
                      .popAndPushNamed(VoucherScreen.routeName);
                },
                child: Text(
                  'Voucher Screen',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
