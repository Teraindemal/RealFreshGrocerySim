class Dairy extends Product {
  float expired;
  
  Dairy(String n, float p, float cal, float Na, float s, float pro, float c, float f, float e){
    super(n, p, cal, Na, s, pro, c, f);
    this.expired = e;
    
  }
  void describe(){
   super.describe();
   println("experation date:", this.expired);
   println();
  }
}
