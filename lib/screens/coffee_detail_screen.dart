import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/coffee.dart';
import '../providers/coffee_provider.dart';
import '../widgets/favorite_button.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final Coffee coffee;

  const CoffeeDetailScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoffeeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.name),

        actions: [
          FavoriteButton(
            isFavorite: coffee.isFavorite,
            onTap: () => provider.toggleFavorite(coffee.id),
          ),
        ],
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isWide ? 700 : double.infinity,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Coffee image
                    if (coffee.image.isNotEmpty)
                      Hero(
                        tag: "coffee-${coffee.id}",
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            coffee.image,
                            height: isWide ? 280 : 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    const SizedBox(height: 20),

                    // Coffee name
                    Text(
                      coffee.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    const SizedBox(height: 10),

                    // Region
                    Text(
                      coffee.region,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),

                    const Divider(height: 30),

                    // Description
                    Text(
                      "Deskripsi",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      coffee.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    const SizedBox(height: 20),

                    // Flavor Notes
                    Text(
                      "Catatan Rasa",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      coffee.flavorNote,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    const SizedBox(height: 20),

                    // Roast level
                    Text(
                      "Roast Level",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      coffee.roastLevel,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    const SizedBox(height: 40),

                    // Bottom favoriting on mobile
                    if (!isWide)
                      Center(
                        child: FavoriteButton(
                          size: 40,
                          isFavorite: coffee.isFavorite,
                          onTap: () => provider.toggleFavorite(coffee.id),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
