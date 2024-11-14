void setup(){
 size(1000,1000); 
 
Dairy milk = new Dairy("milk", 3.99, 500, 20, 4, 2, 3, 4, 6.18);  
milk.describe();`
Baked bread = new Baked("bread", 3.99, 500, 20, 4, 2, 3, 4, 12.06);
bread.describe();
Meat chicken = new Meat("chicken", 12.99, 700, 10, 50, 20, 7, 6, 9.13);
chicken.describe();
Packaged spam = new Packaged("Spam", 8.99, 100, 4, 12, 16, 3, 10, 11.31);
spam.describe();
Produce apple = new Produce("apple", 5.99, 75, 1, 2, 4, 5, 2, 3.8);
apple.describe();
}

void draw(){
 background(196, 164, 132);
 
}
