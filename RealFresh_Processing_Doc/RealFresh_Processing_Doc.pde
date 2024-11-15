Dairy[] dairysection = new Dairy[4];
Baked[] bakedsection = new Baked[4];
Meat[] meatsection = new Meat[4];
Packaged[] packagedsection = new Packaged[4];
Produce[] producesection = new Produce[4];

void setup(){
 size(1000,1000); 
 //name, calories, sodium, sugar, protein, carbs, fat, expire:day,month,year
Dairy milk = new Dairy("milk", 3.99, 500, 20, 4, 2, 3, 4, 6,18,24);  
milk.describe();`
Baked bread = new Baked("bread", 3.99, 500, 20, 4, 2, 3, 4, 12,06,25);
bread.describe();
Meat chicken = new Meat("chicken", 12.99, 700, 10, 50, 20, 7, 6, 8, 9,13,24);
chicken.describe();
Packaged spam = new Packaged("Spam", 8.99, 100, 4, 12, 16, 3, 10, 11,31,27);
spam.describe();
Produce apple = new Produce("apple", 5.99, 75, 1, 2, 4, 5, 2, 6, 3,8,24);
apple.describe();
}

void listAllProducts(){
  for(Dairy d : dairysection){
    print("ooh product");
    d.describe();
  }
    for(Baked b : bakedsection){
    print("ooh product");
    b.describe();
  }
    for(Meat m : meatsection){
    print("ooh product");
    m.describe();
  }
    for(Packaged p : packagedsection){
    print("ooh product");
    p.describe();
  }
    for(Produce p : producesection){
    print("ooh product");
    p.describe();
  }
}

void draw(){
 background(196, 164, 132);
 
}
