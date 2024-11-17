import g4p_controls.*;


int calorieBenchmark = 400;
float sodiumBenchmark = 0.4;
int sugarBenchmark = 20;
int proteinBenchmark = 20;
int carbsBenchmark = 20;
int fatBenchmark = 8;

ArrayList<Product> products = new ArrayList<Product>();

void setup(){
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

  for(Product product : products){
    product.describe();
  }
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

void filterthis(ArrayList<Product> category){
  for(Product p : category){
    if(p.calories < calorieBenchmark){
      if(p.sodium < sodiumBenchmark){
        if(p.sugar < sugarBenchmark){
          if(p.protein < proteinBenchmark){
            if(p.carbs < carbsBenchmark){
              if(p.fat < fatBenchmark){
                p.describe();
              }
            }
          }
        }
      }
    }
  }
}


void listAllProducts(){
  filterthis(products);
}

void draw(){
 background(196, 225, 132);
 rect(100, 0, 200, 1000);
 rect(600, 0, 200, 1000);
 fill(128);
}
