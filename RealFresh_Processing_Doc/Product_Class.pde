class Product {
  String name;
  float price;
  float calories, sodium, sugar, protein, carbs, fat;
  Boolean vegan, vegetarian, gluten, bluecow; 

  Product(String n, float p, float cal, float Na, float s, float pro, float c, float f){
    this.name = n;
    this.price = p;
    this.calories = cal;
    this.sodium = Na;
    this.sugar = s;
    this.protein = pro;
    this.carbs = c;
    this.fat = f;
 
  }
  void describe(){
    println(this.name + ":");
    println("$" + this.price);
    println(this.calories+"g", "of calories");
    println(this.sodium+"g", "of sodium");
    println(this.sugar+"g", "of sugar");
    println(this.protein+"g", "of protein");
    println(this.carbs+"g", "of carbs");
    println(this.fat+"g", "of fat");
    
  }
}
