class Baked extends Product {
  int bestBeforeDay, bestBeforeMonth, bestBeforeYear;  

  Baked(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int BBD, int BBM, int BBY) {
    super(n, i, p, cal, Na, s, pro, c, f, BBD, BBM, BBY);  
  }

  void describe() {
    text(("BAKED GOODS:"), nfxval, nfyval);
    super.describe();  
  }
}
