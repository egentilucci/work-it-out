class Exercise {
  String? name;
  String? force;
  String? level;
  String? mechanic;
  String? equipment;
  List<String>? primaryMuscles;
  List<String>? secondaryMuscles;
  List<String>? instructions;
  String? category;
  List<String>? images;
  String? id;

  Exercise({
    this.name,
    this.force,
    this.level,
    this.mechanic,
    this.equipment,
    this.primaryMuscles,
    this.secondaryMuscles,
    this.instructions,
    this.category,
    this.images,
    this.id,
  });

  Exercise.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    force = json['force'];
    level = json['level'];
    mechanic = json['mechanic'];
    equipment = json['equipment'];
    primaryMuscles = json['primaryMuscles'].cast<String>();
    secondaryMuscles = json['secondaryMuscles'].cast<String>();
    instructions = json['instructions'].cast<String>();
    category = json['category'];
    images = json['images'].cast<String>();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['force'] = force;
    data['level'] = level;
    data['mechanic'] = mechanic;
    data['equipment'] = equipment;
    data['primaryMuscles'] = primaryMuscles;
    data['secondaryMuscles'] = secondaryMuscles;
    data['instructions'] = instructions;
    data['category'] = category;
    data['images'] = images;
    data['id'] = id;

    return data;
  }
}
