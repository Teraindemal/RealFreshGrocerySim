int calorieBenchmark = 400;
int sodiumBenchmark = 0;
int sugarBenchmark = 0;
int proteinBenchmark = 0;
int carbsBenchmark = 0;
int fatBenchmark = 0;


Dairy[] dairysection = new Dairy[4];
Baked[] bakedsection = new Baked[4];
Meat[] meatsection = new Meat[4];
Packaged[] packagedsection = new Packaged[4];
Produce[] producesection = new Produce[4];


void setup(){
 size(1000,1000); 
 
Dairy milk = new Dairy("milk", 3.99, 500, 20, 4, 2, 3, 4, 6,18,24);  
milk.describe();
Baked bread = new Baked("bread", 3.99, 500, 20, 4, 2, 3, 4, 12,06,25);
bread.describe();
Meat chicken = new Meat("chicken", 12.99, 700, 10, 50, 20, 7, 6, 8, 9,13,24);
chicken.describe();
Packaged spam = new Packaged("Spam", 8.99, 100, 4, 12, 16, 3, 10, 11,31,27);
spam.describe();
Produce apple = new Produce("apple", 5.99, 75, 1, 2, 4, 5, 2, 6, 3,8,24);
apple.describe();
}
void filterthis(Product[] category){
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
  filterthis(dairysection);
  filterthis(bakedsection);
  filterthis(meatsection);
  filterthis(packagedsection);
  filterthis(producesection);
}

void draw(){
 background(196, 164, 132);
 
}
