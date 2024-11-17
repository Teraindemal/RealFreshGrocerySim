class Dairy extends Product {
  int spoiledDay, spoiledMonth, spoiledYear;
  
  Dairy(String n, float p, float cal, float Na, float s, float pro, float c, float f, int sD, int sM, int sY){
    super(n, p, cal, Na, s, pro, c, f);
    this.spoiledDay = sD;
    this.spoiledMonth = sM;
    this.spoiledYear = sY;
    
  }
    
  void describe(){
    println("DAIRY AND EGG PRODUCTS:");
    super.describe();
   println("spoiled date:", this.spoiledDay+"/"+this.spoiledMonth+"/"+this.spoiledYear);
   println();
  }
}
