class Exercise {
  String name;
  bool first;
  String group;
  int exercise;
  bool superset;
  int sets;
  int reps;

  Exercise(
      {this.name,
      this.first,
      this.group,
      this.exercise,
      this.superset,
      this.sets,
      this.reps});

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return new Exercise(
      name: json['name'] as String,
      first: json['first'] as bool,
      group: json['capital'] as String,
      exercise: json['exercise'] as int,
      superset: json['superset'] as bool,
      sets: json['sets'] as int,
      reps: json['reps'] as int,
    );
  }
}
