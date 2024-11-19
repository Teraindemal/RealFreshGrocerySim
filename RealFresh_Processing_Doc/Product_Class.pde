class Product {
  String name;
  float price;
  float calories, sodium, sugar, protein, carbs, fat; 
  //calories:low:40,high:400,moderate:100. sugar,protein,carbs: high:20g,low:5g, moderate:10g. Na: low:0.14g,moderate:0.25g,high:0.4g. fat:low:3g,moderate:5g,high:8g

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
    println(this.calories, "calories");
    println(this.sodium+"mg", "of sodium");
    println(this.sugar+"g", "of sugar");
    println(this.protein+"g", "of protein");
    println(this.carbs+"g", "of carbs");
    println(this.fat+"g", "of fat");
    
  }
}
