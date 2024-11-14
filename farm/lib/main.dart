import 'package:farmer_aquaculture/presentation/screens/account/account.dart';
import 'package:farmer_aquaculture/presentation/screens/loan/loan.dart';
import 'package:farmer_aquaculture/presentation/screens/news/news.dart';
import 'package:flutter/material.dart';
import 'package:farmer_aquaculture/presentation/routes/app_routes.dart';
import 'package:farmer_aquaculture/presentation/screens/home/home_screen.dart';
import 'package:farmer_aquaculture/presentation/screens/Buyandsell/buyandsell.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.buyAndSell: (context) => BuyAndSellScreen(),
        AppRoutes.loan: (context) => LoanScreen(),
        AppRoutes.news: (context) => NewsScreen(),
        AppRoutes.account:(context) => AccountScreen(),
      },
    );
  }
}
