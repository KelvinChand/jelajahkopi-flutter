import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/coffee.dart';
import '../utils/mock_data.dart';

class CoffeeProvider with ChangeNotifier {
  List<Coffee> _coffees = [...mockCoffees];
  List<Coffee> _favorites = [];

  CoffeeProvider() {
    _loadLocalData();
  }

  List<Coffee> get coffees => _coffees;
  List<Coffee> get favorites => _favorites;

  void toggleFavorite(Coffee coffee) {
    if (_favorites.contains(coffee)) {
      _favorites.remove(coffee);
    } else {
      _favorites.add(coffee);
    }
    _saveFavorites();
    notifyListeners();
  }

  void addCoffee(Coffee coffee) {
    _coffees.add(coffee);
    _saveLocalData();
    notifyListeners();
  }

  Future<void> _saveLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _coffees
        .map(
          (c) => jsonEncode({
            'id': c.id,
            'name': c.name,
            'region': c.region,
            'flavorNote': c.flavorNote,
            'roastLevel': c.roastLevel,
            'image': c.image,
          }),
        )
        .toList();
    await prefs.setStringList('local_coffees', data);
  }

  Future<void> _loadLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList('local_coffees');
    if (data != null) {
      final decoded = data.map((e) => jsonDecode(e)).toList();
      _coffees = decoded
          .map(
            (d) => Coffee(
              id: d['id'],
              name: d['name'],
              region: d['region'],
              flavorNote: d['flavorNote'],
              roastLevel: d['roastLevel'],
              image: d['image'],
            ),
          )
          .toList();
      notifyListeners();
    }
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favIds = _favorites.map((c) => c.id).toList();
    await prefs.setStringList('favorites', favIds);
  }
}
