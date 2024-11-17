import g4p_controls.*;


int calorieBenchmark = 400;
float sodiumBenchmark = 0.4;
int sugarBenchmark = 20;
int proteinBenchmark = 20;
int carbsBenchmark = 20;
int fatBenchmark = 8;


Dairy[] dairysection = new Dairy[4];
Baked[] bakedsection = new Baked[4];
Meat[] meatsection = new Meat[4];
Packaged[] packagedsection = new Packaged[4];
Produce[] producesection = new Produce[6];


void setup(){
  //Dairy[] dairyitems = loadStrings("Dairy Products.txt");
  //for(int i = 0; i < dairyitems.length; i++ ) {
  //  String[] iteminfo = dairyitems[i].split(",");
  //  String name = iteminfo[0];
  //  float price = iteminfo[1];
  //  float calories = iteminfo[2];
  //  float sodium = iteminfo[3];
  //  float sugar = iteminfo[4];
  //  float protein = iteminfo[5];
  //  float carbs = iteminfo[6];
  //  float fat = iteminfo[7];
  //  int day = iteminfo[8];
  //  int month = iteminfo[9];
  //  int year = iteminfo[10];
  //}
  //String[] bakeditems = loadStrings("Baked Products.txt");
  //for(int i = 0; i < bakeditems.length; i++ ) {
  //  String[] iteminfo = bakeditems[i].split(",");
  //  String name = iteminfo[0];
  //  float price = iteminfo[1];
  //  float calories = iteminfo[2];
  //  float sodium = iteminfo[3];
  //  float sugar = iteminfo[4];
  //  float protein = iteminfo[5];
  //  float carbs = iteminfo[6];
  //  float fat = iteminfo[7];
  //  int day = iteminfo[8];
  //  int month = iteminfo[9];
  //  int year = iteminfo[10];
  //  int weight = iteminfo[11];
  //}
  //String[] meatitems = loadStrings("Meat Products.txt");
  //for(int i = 0; i < myOlympicData.length; i++ ) {
  //  String[] iteminfo = meatitems[i].split(",");
  //  String name = iteminfo[0];
  //  float price = iteminfo[1];
  //  float calories = iteminfo[2];
  //  float sodium = iteminfo[3];
  //  float sugar = iteminfo[4];
  //  float protein = iteminfo[5];
  //  float carbs = iteminfo[6];
  //  float fat = iteminfo[7];
  //  int day = iteminfo[8];
  //  int month = iteminfo[9];
  //  int year = iteminfo[10];
  //  int weight = iteminfo[11];
  //}
  //String[] packageditems = loadStrings("Packaged Products.txt");
  //for(int i = 0; i < myOlympicData.length; i++ ) {
  //  String[] iteminfo = packageditems[i].split(",");
  //  String name = iteminfo[0];
  //  float price = iteminfo[1];
  //  float calories = iteminfo[2];
  //  float sodium = iteminfo[3];
  //  float sugar = iteminfo[4];
  //  float protein = iteminfo[5];
  //  float carbs = iteminfo[6];
  //  float fat = iteminfo[7];
  //  int day = iteminfo[8];
  //  int month = iteminfo[9];
  //  int year = iteminfo[10];
  //}
  //String[] produceitems = loadStrings("Produce Products.txt");
  //for(int i = 0; i < produceitems.length; i++ ) {
  //  String[] iteminfo = produceitems[i].split(",");
  //  String name = iteminfo[0];
  //  float price = iteminfo[1];
  //  float calories = iteminfo[2];
  //  float sodium = iteminfo[3];
  //  float sugar = iteminfo[4];
  //  float protein = iteminfo[5];
  //  float carbs = iteminfo[6];
  //  float fat = iteminfo[7];
  //  int day = iteminfo[8];
  //  int month = iteminfo[9];
  //  int year = iteminfo[10];
  //  int weight = iteminfo[11];
  //}
  
  size(1000,1000); 
  //name, calories, sodium, sugar, protein, carbs, fat, expire:day,month,year
  Baked bread = new Baked("bread", 3.99, 500, 20, 4, 2, 3, 4, 12,06,25);
  bread.describe();
  Meat chicken = new Meat("chicken", 12.99, 700, 10, 50, 20, 7, 6, 8, 9,13,24);
  chicken.describe();
  Packaged spam = new Packaged("Spam", 8.99, 100, 4, 12, 16, 3, 10, 11,31,27);
  spam.describe();
  Produce apple = new Produce("apple", 5.99, 75, 1, 2, 4, 5, 2, 6, 3,8,24);
  apple.describe();
  
  createGUI();
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
