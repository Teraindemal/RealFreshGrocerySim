Class Product{
  String name;
  float price;
  float calories, sodium, sugar, protein, carbs, fat;
  Boolean vegan, vegetarian, halal, gluten, bluecow; 
  int expiryMonth, expiryDay;

  Product(n, p, c, Na, s, pro, c, f){
    this.name = n;
    this.price = p;
    this.calories = c;
    this.sodium = Na;
    this.sugar = s;
    this.protein = pro;
    this.carbs = c;
    this.fat = f;
  }
  
}
