class Dairy extends Product {

  Dairy(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int sD, int sM, int sY){
    super(n, i, p, cal, Na, s, pro, c, f, sD, sM, sY);
  }
  
  void describe(){
    text(("DAIRY AND EGG PRODUCTS:"), nfxval, nfyval);
    super.describe();
  }
}
