class Product {
  String name;
  float price;
  float calories, sodium, sugar, protein, carbs, fat;
  Boolean vegan, vegetarian, halal, gluten, bluecow; 
  int expiryMonth, expiryDay;

  Product(String n, float p, float cal, float Na, float s, float pro, float c, float f, int eM, int eD){
    this.name = n;
    this.price = p;
    this.calories = cal;
    this.sodium = Na;
    this.sugar = s;
    this.protein = pro;
    this.carbs = c;
    this.fat = f;
    this.expiryMonth = eM;
    this.expiryDay = eD;
  }
  
}
