import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/coffee_provider.dart';
import '../widgets/coffee_card.dart';
import 'add_coffee_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final coffeeProvider = Provider.of<CoffeeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('☕ Jelajah Kopi')),
      body: ListView.builder(
        itemCount: coffeeProvider.coffees.length,
        itemBuilder: (context, index) {
          final coffee = coffeeProvider.coffees[index];
          return CoffeeCard(coffee: coffee);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddCoffeeScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
