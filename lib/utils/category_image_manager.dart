// lib/utils/category_image_manager.dart

import 'package:flutter/material.dart';

class CategoryImageManager {
  // Map category name to image asset path
  static const Map<String, String> categoryImages = {
    'La vie': 'assets/images/categories/i117146059.jpg',
    'Le bonheur': 'assets/images/categories/i483724081.jpg',
    'Action': 'assets/images/categories/i498063665.jpg',
    'Toi même': 'assets/images/categories/i498309616.jpg',
    'Gens': 'assets/images/categories/i526705622.jpg',
    'Inspiration': 'assets/images/categories/i530185374.jpg',
    'Un dur travail': 'assets/images/categories/i536291400.jpg',
    'Changement': 'assets/images/categories/i537621432.jpg',
    'Échec': 'assets/images/categories/i694050758.jpg',
    'Confiance': 'assets/images/categories/i809971888.jpg',
    'Relation amicale': 'assets/images/categories/i860528958.jpg',
    'Amour': 'assets/images/categories/i879845502.jpg',
  };

  // Fallback gradient colors if image not found
  static const Map<String, List<Color>> fallbackGradients = {
    'La vie': [Color(0xFF4e54c8), Color(0xFF8f94fb)],
    'Le bonheur': [Color(0xFF667eea), Color(0xFF764ba2)],
    'Action': [Color(0xFF56ab2f), Color(0xFFa8e063)],
    'Toi même': [Color(0xFF2E3192), Color(0xFF1BFFFF)],
    'Gens': [Color(0xFF2193b0), Color(0xFF6dd5ed)],
    'Inspiration': [Color(0xFF283048), Color(0xFF859398)],
    'Un dur travail': [Color(0xFF02AAB0), Color(0xFF00CDAC)],
    'Changement': [Color(0xFF232526), Color(0xFF414345)],
    'Échec': [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
    'Confiance': [Color(0xFF8360c3), Color(0xFF2ebf91)],
    'Relation amicale': [Color(0xFF2196f3), Color(0xFFf44336)],
    'Amour': [Color(0xFF56CCF2), Color(0xFF2F80ED)],
  };

  // Get image path for category
  static String? getImagePath(String categoryName) {
    return categoryImages[categoryName];
  }

  // Get fallback gradient colors
  static List<Color> getFallbackGradient(String categoryName) {
    return fallbackGradients[categoryName] ??
        [const Color(0xFF667eea), const Color(0xFF764ba2)];
  }

  // Check if image exists for category
  static bool hasImage(String categoryName) {
    return categoryImages.containsKey(categoryName);
  }
}
