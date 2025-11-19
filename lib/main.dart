import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/coffee_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const JelajahKopiApp());
}

class JelajahKopiApp extends StatelessWidget {
  const JelajahKopiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CoffeeProvider(),
      child: MaterialApp(
        title: 'Jelajah Kopi',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
