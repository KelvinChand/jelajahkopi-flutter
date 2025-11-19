import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/coffee.dart';
import '../utils/mock_data.dart';

class CoffeeProvider with ChangeNotifier {

  List<Coffee> _coffees = mockCoffees;
  List<Coffee> _favorites = [];

  List<Coffee> get coffees => _coffees;
  List<Coffee> get favorites => _favorites;

  CoffeeProvider() {
    loadLocalData();
  }


  void toggleFavorite(String id) {
    final index = _coffees.indexWhere((c) => c.id == id);
    if (index == -1) return;

    _coffees[index].isFavorite = !_coffees[index].isFavorite;

    if (_coffees[index].isFavorite) {
      _favorites.add(_coffees[index]);
    } else {
      _favorites.removeWhere((c) => c.id == id);
    }

    saveLocalData();
    notifyListeners();
  }

  void addCoffee(Coffee coffee) {
    _coffees.add(coffee);
    saveLocalData();
    notifyListeners();
  }

  Future<void> saveLocalData() async {
    final prefs = await SharedPreferences.getInstance();

    // Simpan list coffee
    final coffeeJson = _coffees
        .map(
          (c) => jsonEncode({
            'id': c.id,
            'name': c.name,
            'description': c.description,
            'region': c.region,
            'flavorNote': c.flavorNote,
            'roastLevel': c.roastLevel,
            'image': c.image,
            'isFavorite': c.isFavorite,
          }),
        )
        .toList();

    await prefs.setStringList('coffees', coffeeJson);
    final favIds = _favorites.map((c) => c.id).toList();
    await prefs.setStringList('favorites', favIds);
  }

  Future<void> loadLocalData() async {
    final prefs = await SharedPreferences.getInstance();

    final storedCoffees = prefs.getStringList('coffees');
    final storedFavIds = prefs.getStringList('favorites');

    if (storedCoffees != null) {
      final decoded = storedCoffees.map((e) => jsonDecode(e)).toList();

      _coffees = decoded
          .map(
            (d) => Coffee(
              id: d['id'],
              name: d['name'],
              description: d['description'],
              region: d['region'],
              flavorNote: d['flavorNote'],
              roastLevel: d['roastLevel'],
              image: d['image'],
              isFavorite: d['isFavorite'] ?? false,
            ),
          )
          .toList();
    } else {
      _coffees = mockCoffees;
    }

    // Load favorites
    if (storedFavIds != null) {
      _favorites = _coffees.where((c) => storedFavIds.contains(c.id)).toList();
    } else {
      _favorites = [];
    }

    notifyListeners();
  }
}
