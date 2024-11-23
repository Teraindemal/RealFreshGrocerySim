import g4p_controls.*; //importing GUI
import java.util.ArrayList;

// Initializing values 
int startTime;
int calorieBenchmark = 400;
int sodiumBenchmark = 800;
int sugarBenchmark = 60;
int proteinBenchmark = 0;
int carbsBenchmark = 100;
int fatBenchmark = 30;
float budget = 0;
float totalPrice = 0;
Boolean isNutritionShowing = false;
int nfxval = 320;
int nfyval = 20;
Boolean budgetset = false;
Boolean budgetExceeded = false;
Boolean cartExceeded = false;

//initializing list of products
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> filteredproducts = new ArrayList<Product>(0);
Product[] shelf = new Product[6];
ArrayList<Product> cart = new ArrayList<Product>();


void setup() {
  createGUI();
  size(1000, 600); //size of screen 

// Loading products from text file 
  loadProducts("Dairy Products.txt", products);
  loadProducts("Baked Products.txt", products);
  loadProducts("Meat Products.txt", products);
  loadProducts("Packaged Products.txt", products);
  loadProducts("Produce Products.txt", products);
  refresh();
  
 
  
}
//getting each individual facts (for example: name, price, image, and nutritional values) from the text file 
void loadProducts(String fileName, ArrayList<Product> products) {
  String[] items = loadStrings(fileName);
  for (int i = 0; i < items.length; i++) {
    String[] iteminfo = items[i].split(", ");
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
    int month = int(iteminfo[10]);
    int year = int(iteminfo[11]);
    int weight = 0;
    if (fileName == "Meat Products.txt" || fileName == "Produce Products.txt") {
      weight = int(iteminfo[12]);
    }
    //creating products by calling their constructors and adding them to the product list 
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
//based on what values user enters for different nutritional values on the GUI,  it filters the products that fall into that category 
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
//displaying products that match the given criteria 
void refresh() {
  filteredproducts.clear();
  for (Product p : products) {
    filterthis(p);
  }
  stockShelves();
}
//showing a max of 6 random products on the shelf 
void stockShelves(){
  if(filteredproducts.size()>=1){
    for(int s = 0; s < shelf.length; s++){
      shelf[s] = filteredproducts.get(int(random(filteredproducts.size())));
    }
  }
}
//Adding products to the cart and adding the products price to the total price 
void addProduct(){
  if(hoveredShelf<6){
    totalPrice+=shelf[selectedShelf].price;
    if(totalPrice > budget){
      budgetExceeded = true;
      totalPrice-=shelf[selectedShelf].price;
    }
    else{
      cart.add(shelf[selectedShelf]);
    }
  }
}

void draw() {
  //drawing the main screen background 
  background(196, 225, 132);
  fill(128);
  rect(100, 0, 200, 1000);
  rect(700, 0, 200, 1000);

  imageMode(CENTER);
//showing the images of the items onthe shelf 
  if (filteredproducts.size()>=1){
    image(shelf[0].image, 200, 100, 200, 200);  
    image(shelf[1].image, 200, 300, 200, 200);  
    image(shelf[2].image, 200, 500, 200, 200);  
    image(shelf[3].image, 800, 100, 200, 200);
    image(shelf[4].image, 800, 300, 200, 200);    
    image(shelf[5].image, 800, 500, 200, 200);
  }
  fill(0);
  textSize(20);
  
  //showing nutrition facts on screen if mouse is hovering over item
  hovered();
  if (isNutritionShowing){
    shelf[hoveredShelf].describe();
  }
  
  //DIsplaying items added in the cart on main screen 
  text("Cart:", 320, 300);
  int counter = 0;
  if(cartExceeded){
    text(("+"+(cart.size()-11)+" more"), 340, 540);// if cart exceeds a certain amount, the rest of the products in the cart will be shown as "+ # more"
  }
  //checking if cart exceeds 10 items 
  for(Product product: cart){
    if(counter>10){
      cartExceeded = true;
    }
    else{
      cartExceeded = false;
      text((product.name +" $"+ nf(product.price, 0, 2)), 340, 320 + 20*counter);
      counter += 1;
    } 
  }
  
  //printing the budget user gave in the GUI and the total price of ther items on screen 
  if(budgetset){
    text(("Your budget is: $"+nf(budget, 0, 2)), 320, 560);
    text(("Your total is: $"+nf(totalPrice, 0, 2)), 320, 580);
  }
  else{
    text(("Please enter a realistic budget"), 320, 280); //asking user to provide a budget if they have not
  }
  //Letting the user know they are going above the budget if it is exceeded 
  if(budgetExceeded){
    fill(255);
    rect(310, 230, 380, 50);
    fill(0);
    text(("This surpasses your budget."), 320, 250);
    text(("Please select another product."), 320, 270);
    if (millis() - startTime > 2000){
      budgetExceeded = false;
    }
  }
}
