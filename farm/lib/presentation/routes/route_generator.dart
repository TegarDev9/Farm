import 'package:farmer_aquaculture/presentation/screens/loan/loan.dart';
import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/buyandsell/buyandsell.dart';
import '../screens/news/news.dart'; // Correct path for import
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.buyAndSell:
        return MaterialPageRoute(builder: (_) => BuyAndSellScreen());
        case AppRoutes.loan:
        return MaterialPageRoute(builder: (_) => LoanScreen());
        case AppRoutes.news:
        return MaterialPageRoute(builder: (_) => NewsScreen()); // Correct path for import
      // Add other cases for different screens as needed
      default:
        // Fallback if route is not found
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
