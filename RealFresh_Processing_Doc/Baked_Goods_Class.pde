class Baked extends Product {
  float bestBefore;  

  
  Baked(String n, float p, float cal, float Na, float s, float pro, float c, float f, float BB) {
    
    super(n, p, cal, Na, s, pro, c, f);  
    this.bestBefore = BB; 
  }

  void describe() {
    super.describe(); 
    
    println("Best before: " + this.bestBefore);  
    println();
  }
}
