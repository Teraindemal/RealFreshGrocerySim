import g4p_controls.*;


int calorieBenchmark = 400;
int sodiumBenchmark = 800;
int sugarBenchmark = 20;
int proteinBenchmark = 0;
int carbsBenchmark = 100;
int fatBenchmark = 10;

ArrayList<Product> products = new ArrayList<Product>();

void setup(){
  createGUI();
  size(1000,1000);
  //Load Dairy Products
  loadProducts("Dairy Products.txt", products);
  
  //Load Baked Products
  loadProducts("Baked Products.txt", products);
  
  //Load Meat Products
  loadProducts("Meat Products.txt", products);
  
  //Load Packaged Products
  loadProducts("Packaged Products.txt", products);
  
  //Load Produce Products
  loadProducts("Produce Products.txt", products);

  //for(Product product : products){
  //  product.describe();
  //}
  listAllProducts();
  
  
}

void loadProducts(String fileName, ArrayList<Product> products){
  String[] items = loadStrings(fileName);
  for(int i = 0; i < items.length; i++ ) {
      String[] iteminfo = items[i].split(",");
      String name = iteminfo[0];
      float price = float(iteminfo[1]);
      float calories = float(iteminfo[2]);
      float sodium = float(iteminfo[3]);
      float sugar = float(iteminfo[4]);
      float protein = float(iteminfo[5]);
      float carbs = float(iteminfo[6]);
      float fat = float(iteminfo[7]);
      int day = int(iteminfo[8]);
      int month = int(iteminfo[9]);
      int year = int(iteminfo[10]);
      int weight = 0;
      if(fileName == "Meat Products.txt") {
        weight = int(iteminfo[11]);
      }
      Product product = null;
      if(fileName == "Dairy Products.txt") {
        product = new Dairy(name, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
      } else if (fileName == "Baked Products.txt") {
        product = new Baked(name, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
      } else if (fileName == "Meat Products.txt") {
        product = new Meat(name, price, calories, sodium, sugar, protein, carbs, fat, day, month, year, weight);
      } else if (fileName == "Packaged Products.txt") {
        product = new Packaged(name, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
      } else if (fileName == "Produce Products.txt") {
        product = new Produce(name, price, calories, sodium, sugar, protein, carbs, fat, day, month, year, weight);
      }
      products.add(product);
  }
}

void filterthis(Product p){
  if(int(p.calories) <= calorieBenchmark){
    if(p.sodium <= sodiumBenchmark){
      if(p.sugar <= sugarBenchmark){
        if(p.protein >= proteinBenchmark){
          if(p.carbs <= carbsBenchmark){
            if(p.fat <= fatBenchmark){
              println(p.name);
            }
          }
        }
      }
    }
  }
}

void listAllProducts(){
  println("These Products Fit Your Requirements:");
  for(Product p : products){
    filterthis(p);
  }
}

void draw(){
 background(196, 225, 132);
 fill(128);
 rect(100, 0, 200, 1000);
 rect(700, 0, 200, 1000);
 text(calorieBenchmark, 500, 100);
 text(sodiumBenchmark, 500, 200);
 text(sugarBenchmark, 500, 300);
 text(proteinBenchmark, 500, 400);
 text(carbsBenchmark, 500, 500);
 text(fatBenchmark, 500, 600);
}
