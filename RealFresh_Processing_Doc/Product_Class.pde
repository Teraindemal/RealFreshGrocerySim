class Product {
  String name;
  float price;
  float calories, sodium, sugar, protein, carbs, fat; 
  PImage image;
  int day, month, year;
  //calories:low:40,high:400,moderate:100. sugar,protein,carbs: high:20g,low:5g, moderate:10g. Na: low:0.14g,moderate:0.25g,high:0.4g. fat:low:3g,moderate:5g,high:8g

  Product(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int bbd, int bbm, int bby){
    this.name = n;
    this.image = loadImage(i);
    this.price = p;
    this.calories = cal;
    this.sodium = Na;
    this.sugar = s;
    this.protein = pro;
    this.carbs = c;
    this.fat = f;
    this.day = bbd;
    this.month = bbm;
    this.year = bby;
 
  }
  void describe(){

    text((this.name + (" $" +nf(this.price, 0, 2))), nfxval, nfyval+20);
    text("Nutrition Facts:", nfxval, nfyval+40);
    text((int(this.calories)+ " Calories"), nfxval, nfyval+60);
    text((int(this.sodium)+"mg of Sodium"), nfxval, nfyval+80);
    text((int(this.sugar)+"g of Sugar"), nfxval, nfyval+100);
    text((int(this.protein)+"g of Protein"), nfxval, nfyval+120);
    text((int(this.carbs)+"g of Carbs"), nfxval, nfyval+140);
    text((int(this.fat)+"g of Fat"), nfxval, nfyval+160);
    text(("Best before: " + this.day+"/"+this.month+"/"+this.year), nfxval, nfyval+180); 
    
  }
}
