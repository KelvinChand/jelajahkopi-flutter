import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/coffee.dart';
import '../providers/coffee_provider.dart';

class AddCoffeeScreen extends StatefulWidget {
  const AddCoffeeScreen({super.key});

  @override
  State<AddCoffeeScreen> createState() => _AddCoffeeScreenState();
}

class _AddCoffeeScreenState extends State<AddCoffeeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _regionController = TextEditingController();
  final _flavorController = TextEditingController();
  final _roastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final coffeeProvider = Provider.of<CoffeeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Kopi Baru')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama Kopi'),
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Deskripsi Kopi'),
              ),
              TextFormField(
                controller: _regionController,
                decoration: const InputDecoration(labelText: 'Daerah Asal'),
              ),
              TextFormField(
                controller: _flavorController,
                decoration: const InputDecoration(labelText: 'Catatan Rasa'),
              ),
              TextFormField(
                controller: _roastController,
                decoration: const InputDecoration(labelText: 'Tingkat Roast'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final coffee = Coffee(
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    name: _nameController.text,
                    description: _descriptionController.text,
                    region: _regionController.text,
                    flavorNote: _flavorController.text,
                    roastLevel: _roastController.text,
                    image: 'assets/images/default_coffee.jpg',
                    isFavorite: false,
                  );
                  coffeeProvider.addCoffee(coffee);
                  Navigator.pop(context);
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
