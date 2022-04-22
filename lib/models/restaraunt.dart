import 'package:mamba/models/food.dart';

class Restaraunt {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaraunt(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaraunt generateRestaraunt() {
    return Restaraunt("Eki Dos", "5-20 min", "300m", "Restaraunt",
        "assets/images/res_logo.png", "Orange sandwiches is delicious", 4.7, {
      "Recommend": Food.generateRecommendedFoods(),
      "Popular": Food.generateRecommendedFoods(),
      "Noodles": [],
      "Pizza": []
    });
  }
}
