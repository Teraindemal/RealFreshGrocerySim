class Baked extends Product {
  int bestBeforeDay, bestBeforeMonth, bestBeforeYear;  

  
  Baked(String n, float p, float cal, float Na, float s, float pro, float c, float f, int BBD, int BBM, int BBY) {
    
    super(n, p, cal, Na, s, pro, c, f);  
    this.bestBeforeDay = BBD; 
    this.bestBeforeMonth = BBM;
    this.bestBeforeYear = BBY;
  }

  void describe() {
    super.describe(); 
    
    println("Best before:" + this.bestBeforeDay+"/"+this.bestBeforeMonth+"/"+this.bestBeforeYear);  
    println();
  }
}
