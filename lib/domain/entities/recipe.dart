// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import 'package:recipe_gpt/domain/entities/ingredient.dart';
import 'package:recipe_gpt/domain/entities/nutrition_facts.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

class Recipe {
  String? id;
  final String? title;
  final String? description;
  final String dificulty;
  final int time;
  final List<Ingredient> ingredients;
  final List<String> instructions;
  final String tips;
  final int servings;
  final bool isFreezeble;
  final NutritionFacts? nutritionFacts;

  Recipe({
    String? id,
    required this.title,
    required this.description,
    required this.dificulty,
    required this.time,
    required this.ingredients,
    required this.instructions,
    required this.tips,
    required this.servings,
    required this.isFreezeble,
    required this.nutritionFacts,
  }) {
    assert((title != null || description != null), CreationFailure);
    id = id ?? const Uuid().v4();
  }

  String get toClipboard {
    final Map<String, dynamic> map = <String, dynamic>{
      'title': title,
      'description': description,
      'dificulty': dificulty,
      'time': time,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'instructions': instructions,
      'tips': tips,
      'servings': servings,
      'isFreezeble': isFreezeble,
      'nutritionFacts': nutritionFacts?.toMap(),
    };
    return jsonEncode(map);
  }

  Recipe copyWith({
    String? id,
    String? title,
    String? description,
    String? dificulty,
    int? time,
    List<Ingredient>? ingredients,
    List<String>? instructions,
    String? tips,
    int? servings,
    bool? isFreezeble,
    NutritionFacts? nutritionFacts,
  }) {
    return Recipe(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      dificulty: dificulty ?? this.dificulty,
      time: time ?? this.time,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      tips: tips ?? this.tips,
      servings: servings ?? this.servings,
      isFreezeble: isFreezeble ?? this.isFreezeble,
      nutritionFacts: nutritionFacts ?? this.nutritionFacts,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'dificulty': dificulty,
      'time': time,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'instructions': instructions,
      'tips': tips,
      'servings': servings,
      'isFreezeble': isFreezeble,
      'nutritionFacts': nutritionFacts?.toMap(),
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      dificulty: map['dificulty'] as String,
      time: map['time'] as int,
      ingredients: List<Ingredient>.from(
        (map['ingredients'] as List<int>).map<Ingredient>(
          (x) => Ingredient.fromMap(x as Map<String, dynamic>),
        ),
      ),
      instructions: List<String>.from(
        (map['instructions'] as List<String>),
      ),
      tips: map['tips'] as String,
      servings: map['servings'] as int,
      isFreezeble: map['isFreezeble'] as bool,
      nutritionFacts: map['nutritionFacts'] != null
          ? NutritionFacts.fromMap(
              map['nutritionFacts'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) =>
      Recipe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Recipe(id: $id, title: $title, description: $description, dificulty: $dificulty, time: $time, ingredients: $ingredients, instructions: $instructions, tips: $tips, servings: $servings, isFreezeble: $isFreezeble, nutritionFacts: $nutritionFacts)';
  }

  @override
  bool operator ==(covariant Recipe other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.dificulty == dificulty &&
        other.time == time &&
        listEquals(other.ingredients, ingredients) &&
        listEquals(other.instructions, instructions) &&
        other.tips == tips &&
        other.servings == servings &&
        other.isFreezeble == isFreezeble &&
        other.nutritionFacts == nutritionFacts;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        dificulty.hashCode ^
        time.hashCode ^
        ingredients.hashCode ^
        instructions.hashCode ^
        tips.hashCode ^
        servings.hashCode ^
        isFreezeble.hashCode ^
        nutritionFacts.hashCode;
  }
}
