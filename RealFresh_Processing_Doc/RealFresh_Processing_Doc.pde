import g4p_controls.*;
import java.util.ArrayList;

ArrayList<PImage> productImages = new ArrayList<PImage>();
String[] imageNames = {
  "apples.png", "baguette.png", "beef.png", "Carrots.png", "cheerios.png", 
  "chicken.png", "eggs.png", "lamb.png", "Lettuce.png", "milk.png", 
  "moz cheese.png", "Onions.png", "plain bagel.png", "pork.png", 
  "soda crackers.png", "Spam.png", "Tomato.png", "white bread.png", 
  "whole wheat bread.png", "yogurt.png", "banana.png", "pizza.png", 
  "MILKIS.png", "shrimp.png", "donut.png", "doritos.png", "turkey.png", 
  "cake.png", "Blue Cow.png", "oreo.png"
};

int calorieBenchmark = 400;
int sodiumBenchmark = 800;
int sugarBenchmark = 60;
int proteinBenchmark = 0;
int carbsBenchmark = 100;
int fatBenchmark = 30;

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> filteredproducts = new ArrayList<Product>(0);
Product[] shelf = new Product[6];


void setup() {
  createGUI();
  size(1000, 600);

  // Initialize click counts for each product to 0

  
  loadProducts("Dairy Products.txt", products);
  loadProducts("Baked Products.txt", products);
  loadProducts("Meat Products.txt", products);
  loadProducts("Packaged Products.txt", products);
  loadProducts("Produce Products.txt", products);

  
  for (String imageName : imageNames) {
    PImage img = loadImage(imageName);
    productImages.add(img);
  }
  listAllProducts();

}

void loadProducts(String fileName, ArrayList<Product> products) {
  String[] items = loadStrings(fileName);
  for (int i = 0; i < items.length; i++) {
    String[] iteminfo = items[i].split(",");
    String name = iteminfo[0];
    String image = iteminfo [1];
    float price = float(iteminfo[2]);
    float calories = float(iteminfo[3]);
    float sodium = float(iteminfo[4]);
    float sugar = float(iteminfo[5]);
    float protein = float(iteminfo[6]);
    float carbs = float(iteminfo[7]);
    float fat = float(iteminfo[8]);
    int day = int(iteminfo[9]);
    int month = int(iteminfo[8]);
    int year = int(iteminfo[11]);
    int weight = 0;
    if (fileName == "Meat Products.txt") {
      weight = int(iteminfo[11]);
    }
    Product product = null;
    if (fileName == "Dairy Products.txt") {
      product = new Dairy(name, image, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
    } else if (fileName == "Baked Products.txt") {
      product = new Baked(name, image, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
    } else if (fileName == "Meat Products.txt") {
      product = new Meat(name, image, price, calories, sodium, sugar, protein, carbs, fat, day, month, year, weight);
    } else if (fileName == "Packaged Products.txt") {
      product = new Packaged(name, image, price, calories, sodium, sugar, protein, carbs, fat, day, month, year);
    } else if (fileName == "Produce Products.txt") {
      product = new Produce(name, image, price, calories, sodium, sugar, protein, carbs, fat, day, month, year, weight);
    }
    products.add(product);
  }
}

void filterthis(Product p) {
  if (int(p.calories) <= calorieBenchmark) {
    if (p.sodium <= sodiumBenchmark) {
      if (p.sugar <= sugarBenchmark) {
        if (p.protein >= proteinBenchmark) {
          if (p.carbs <= carbsBenchmark) {
            if (p.fat <= fatBenchmark) {
              filteredproducts.add(p);
            }
          }
        }
      }
    }
  }
}

void listAllProducts() {
  filteredproducts.clear();
  for (Product p : products) {
    filterthis(p);
  }
  stockShelves();
  println("These Products Fit Your Requirements:");
  for (Product p : filteredproducts) {
    println(p.name);
  }
}

void stockShelves(){
  if(filteredproducts.size()>=1){
    shelf[0] = filteredproducts.get(int(random(filteredproducts.size())));
    shelf[1] = filteredproducts.get(int(random(filteredproducts.size())));
    shelf[2] = filteredproducts.get(int(random(filteredproducts.size())));
    shelf[3] = filteredproducts.get(int(random(filteredproducts.size())));
    shelf[4] = filteredproducts.get(int(random(filteredproducts.size())));
    shelf[5] = filteredproducts.get(int(random(filteredproducts.size()))); 
  }
}

void draw() {
  background(196, 225, 132);
  fill(128);
  rect(100, 0, 200, 1000);
  rect(700, 0, 200, 1000);
  fill(0);
  text(calorieBenchmark, 500, 10);
  text(sodiumBenchmark, 500, 20);
  text(sugarBenchmark, 500, 30);
  text(proteinBenchmark, 500, 40);
  text(carbsBenchmark, 500, 50);
  text(fatBenchmark, 500, 60);

  imageMode(CENTER);
 


 

  if (filteredproducts.size()>=1){
    image(shelf[0].image, 200, 100, 200, 200);  
    image(shelf[1].image, 200, 300, 200, 200);  
    image(shelf[2].image, 200, 500, 200, 200);  
    image(shelf[3].image, 800, 100, 200, 200);
    image(shelf[4].image, 800, 300, 200, 200);    
    image(shelf[5].image, 800, 500, 200, 200);
  }

}
