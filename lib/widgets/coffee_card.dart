import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/coffee.dart';
import '../providers/coffee_provider.dart';
import '../widgets/favorite_button.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoffeeProvider>(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        leading: Image.asset(
          coffee.image,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(coffee.name),
        subtitle: Text('${coffee.region}\n${coffee.flavorNote}'),

        trailing: FavoriteButton(
          isFavorite: coffee.isFavorite,
          onTap: () => provider.toggleFavorite(coffee.id),
        ),
      ),
    );
  }
}
