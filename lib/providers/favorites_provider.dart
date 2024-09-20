import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meal_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleFavorite(Meal meal) {
    if (state.contains(meal)) {
      state = List.from(state)..remove(meal);
      return false;
    } else {
      state = List.from(state)..add(meal);
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
