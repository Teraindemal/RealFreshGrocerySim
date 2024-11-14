class Baked extends Product {
  float bestBefore;  

  
  Baked(String n, float p, float cal, float Na, float s, float pro, float c, float f, int eM, int eD, float BB) {
    
    super(n, p, cal, Na, s, pro, c, f, eM, eD);  
    this.bestBefore = BB; 
  }

  void describe() {
    super.describe();  
    
    System.out.println("Best before: " + this.bestBefore);  
  }
}
