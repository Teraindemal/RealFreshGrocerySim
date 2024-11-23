class Baked extends Product { // Making baked goods class, subclass of Prodduct
  int bestBeforeDay, bestBeforeMonth, bestBeforeYear;  

  Baked(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int BBD, int BBM, int BBY) {
    super(n, i, p, cal, Na, s, pro, c, f, BBD, BBM, BBY);  //calling super class contructor
  }

  void describe() {
    text(("BAKED GOODS:"), nfxval, nfyval); //Printing "baked goods" title
    super.describe();  //calling describe method from super class
    
  }
}
