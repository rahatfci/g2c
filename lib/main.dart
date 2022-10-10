import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:g2c/screens/booking_detail/booking_detail_screen.dart';
import 'package:g2c/screens/check_list/check_list_screen.dart';
import 'package:g2c/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G2C Internship assignment',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Colors.black),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'VarelaRound'),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        '/check_list': (context) => const CheckList(),
        '/booking_detail': (context) => const BookingDetail(),
      },
    );
  }

  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
