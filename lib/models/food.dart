class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingridients;
  String about;
  bool highlight;
  Food(
    this.desc,
    this.name,
    this.imgUrl,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingridients,
    this.about,
    { this.highlight = false }
  );
  
  static List<Food> generateRecommendedFoods() {
    return [
      Food(
        "No1. In Sales",
        "Soba Soup",
        "assets/images/dash1.png",
        "50 min",
        4.8,
        "325 kcal",
        12,
        1,
        [
          {
            "Noodle": "assets/images/ingre1.png"
          },
          {
            "Shrimp": "assets/images/ingre2.png"
          },
          {
            "Egg": "assets/images/ingre3.png"
          },
          {
            "Scallion": "assets/images/ingre4.png"
          }
        ],
        "Simply put, Alkoni is a Kyrgyz noodle soup that smells aesthetical"
      )
    ];
  }
}

