import 'dart:convert';

class Room {
  int adults;
  List<Children> children;

//<editor-fold desc="Data Methods">
  Room({
    required this.adults,
    required this.children,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Room && runtimeType == other.runtimeType && adults == other.adults && children == other.children);

  @override
  int get hashCode => adults.hashCode ^ children.hashCode;

  @override
  String toString() {
    return 'Room{' + ' adults: $adults,' + ' children: $children,' + '}';
  }

  Room copyWith({
    int? adults,
    List<Children>? children,
  }) {
    return Room(
      adults: adults ?? this.adults,
      children: children ?? this.children,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adults': this.adults,
      'children': this.children.map((e) => e.toMap()).toList(),
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      adults: map['adults'] as int? ?? 0,
      children: (map['children'] as List<dynamic>?)?.map((e) => Children.fromMap(jsonDecode(e.toString()))).toList() ?? [],
    );
  }

//</editor-fold>
}

class Children {
  int age;

//<editor-fold desc="Data Methods">
  Children({
    required this.age,
  });

  @override
  bool operator ==(Object other) => identical(this, other) || (other is Children && runtimeType == other.runtimeType && age == other.age);

  @override
  int get hashCode => age.hashCode;

  @override
  String toString() {
    return 'Children{' + ' age: $age,' + '}';
  }

  Children copyWith({
    int? age,
  }) {
    return Children(
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'age': this.age,
    };
  }

  factory Children.fromMap(Map<String, dynamic> map) {
    return Children(
      age: map['age'] as int,
    );
  }

//</editor-fold>
}
