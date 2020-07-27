import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:parallax_swipe/product_model.dart';
import 'package:parallax_swipe/ui/product_details.dart';

class ConstUtil {
  static String getImagePreviewSvgPath(int index) {
    switch (index) {
      case 0:
        return "assets/images/nike1.svg";
      case 1:
        return "assets/images/nike2.svg";
      case 2:
        return "assets/images/nike3.svg";
    }
  }

  static Color getBackgroundCardColor(int index) {
    switch (index) {
      case 0:
        return Colors.blue.withOpacity(0.8);
      case 1:
        return Colors.pink.withOpacity(0.8);
      case 2:
        return Colors.red.withOpacity(0.8);
    }
  }

  static ProductModel getProductDetails(int index) {
    switch (index) {
      case 0:
        return ProductModel(
            price: "12,995",
            name: "KD13 EP",
            details:
                " Amazing footwear was manufactured in 1964 as Blue "
                    "Ribbon Sports by Bill Bowermanand. They opened their first retail"
                    " outlet in 1966 and launched the Nike brand shoe in"
                    " 1972. By the early 21st"
                    " century, Nike had retail outlets and distributors in"
                    " more than 170 countries, and its logo—a curved check "
                    "mark called the “swoosh”—was recognized throughout "
                    "the world.");
      case 1:
        return ProductModel(
            price: "1,800",
            name: "ADG EP",
            details:
            " Amazing footwear was manufactured in 1964 as Blue "
                "Ribbon Sports by Bill Bowerman, a track-and-field"
                " coach at the University of Oregon, and his former "
                "student Phil Knight. They opened their first retail"
                " outlet in 1966 and launched the Nike brand shoe in"
                " 1972. The company was renamed Nike, Inc., in 1978 "
                "and went public two years later. By the early 21st"
                " century, Nike had retail outlets and distributors in"
                " more than 170 countries, and its logo—a curved check "
                "mark called the “swoosh”—was recognized throughout "
                "the world.");
      case 2:
        return ProductModel(
            price: "2,000",
            name: "AIR",
            details:
            " Amazing footwear was manufactured in 1964 as Blue "
                "Ribbon Sports by Bill Bowerman, a track-and-field"
                " coach at the University of Oregon, and his former "
                "student Phil Knight. They opened their first retail"
                " outlet in 1966 and launched the Nike brand shoe in"
                " 1972. The company was renamed Nike, Inc., in 1978 "
                "and went public two years later. By the early 21st"
                " century, Nike had retail outlets and distributors in"
                " more than 170 countries, and its logo—a curved check "
                "mark called the “swoosh”—was recognized throughout "
                "the world.");
    }
  }
}
