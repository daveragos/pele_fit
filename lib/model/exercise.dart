class Exercise {
  final String name;
  final String? force;
  final String level;
  final String? mechanic; // Nullable since it's optional
  final String? equipment;
  final List<String> primaryMuscles;
  final List<String> secondaryMuscles;
  final List<String> instructions;
  final String category;
  final List<String> images;
  final String id;

  Exercise({
    required this.name,
    required this.force,
    required this.level,
    this.mechanic,
    required this.equipment,
    required this.primaryMuscles,
    required this.secondaryMuscles,
    required this.instructions,
    required this.category,
    required this.images,
    required this.id,
  });

  // Factory constructor to create an Exercise object from JSON
  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      name: json['name'],
      force: json['force'],
      level: json['level'],
      mechanic: json['mechanic'], // Can be null
      equipment: json['equipment'],
      primaryMuscles: List<String>.from(json['primaryMuscles']),
      secondaryMuscles: List<String>.from(json['secondaryMuscles']),
      instructions: List<String>.from(json['instructions']),
      category: json['category'],
      images: List<String>.from(json['images']),
      id: json['id'],
    );
  }
}
