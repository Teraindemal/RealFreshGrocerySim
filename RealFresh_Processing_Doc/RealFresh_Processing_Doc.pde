import g4p_controls.*;
import java.util.ArrayList;

ArrayList<PImage> productImages = new ArrayList<PImage>();
String[] imageNames = {
  "apples.png", "baguette.png", "beef.png", "Carrots.png", "cheerios.png", 
  "chicken.png", "eggs.png", "lamb.png", "Lettuce.png", "milk.png", 
  "moz cheese.png", "Onions.png", "plain bagel.png", "pork.png", 
  "soda crackers.png", "Spam.png", "Tomato.png", "white bread.png", 
  "whole wheat bread.png", "yogurt.png", "bananna.png", "pizza.png", 
  "MILKIS.png", "shrimp.png", "donut.png", "doritos.png", "turkey.png", 
  "cake.png", "Blue Cow.png"
};

int calorieBenchmark = 400;
int sodiumBenchmark = 800;
int sugarBenchmark = 60;
int proteinBenchmark = 0;
int carbsBenchmark = 100;
int fatBenchmark = 30;

ArrayList<Product> products = new ArrayList<Product>();

void setup() {
  createGUI();
  size(1000, 600);

  
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
    if (fileName == "Meat Products.txt") {
      weight = int(iteminfo[11]);
    }
    Product product = null;
    if (fileName == "Dairy Products.txt") {
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

void filterthis(Product p) {
  if (int(p.calories) <= calorieBenchmark) {
    if (p.sodium <= sodiumBenchmark) {
      if (p.sugar <= sugarBenchmark) {
        if (p.protein >= proteinBenchmark) {
          if (p.carbs <= carbsBenchmark) {
            if (p.fat <= fatBenchmark) {
              println(p.name);
            }
          }
        }
      }
    }
  }
}

void listAllProducts() {
  println("These Products Fit Your Requirements:");
  for (Product p : products) {
    filterthis(p);
  }
}

void draw() {
  background(196, 225, 132);
  fill(128);
  rect(100, 0, 200, 1000);
  rect(700, 0, 200, 1000);
  fill(0);
  text(calorieBenchmark, 500, 100);
  text(sodiumBenchmark, 500, 200);
  text(sugarBenchmark, 500, 300);
  text(proteinBenchmark, 500, 400);
  text(carbsBenchmark, 500, 500);
  text(fatBenchmark, 500, 600);

 
  image(productImages.get(0), 100, 25, 200, 170);  
  image(productImages.get(3), 100, 225, 200, 200);  
  image(productImages.get(8), 100, 400, 200, 200);  

  image(productImages.get(11), 700, 300, 200, 200);
  image(productImages.get(20), 700, 0, 200, 200);    
  image(productImages.get(16), 700, 150, 200, 200); 

 
  fill(100, 0, 225);
  rect(275, 500, 250, 700);
  fill(0);
  text("next aisle", 350, 550);
}
