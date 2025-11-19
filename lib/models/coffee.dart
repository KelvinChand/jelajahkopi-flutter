class Coffee {
  final String id;
  final String name;
  final String description;
  final String region;
  final String roastLevel;
  final String flavorNote;
  final String image;
  bool isFavorite;

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.region,
    required this.roastLevel,
    required this.flavorNote,
    required this.image,
    required this.isFavorite,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      region: json['region'],
      roastLevel: json['roastLevel'],
      flavorNote: json['flavorNote'],
      image: json['image'],
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'region': region,
      'roastLevel': roastLevel,
      'flavorNote': flavorNote,
      'image': image,
      'isFavorite': isFavorite,
    };
  }
  Coffee copyWith({
    String? name,
    String? description,
    String? region,
    String? roastLevel,
    String? flavorNote,
    String? image,
    bool? isFavorite,
  }) {
    return Coffee(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      region: region ?? this.region,
      roastLevel: roastLevel ?? this.roastLevel,
      flavorNote: flavorNote ?? this.flavorNote,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
