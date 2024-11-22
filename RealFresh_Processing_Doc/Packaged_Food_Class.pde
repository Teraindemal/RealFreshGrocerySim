class Packaged extends Product{

  Packaged(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int eD, int eM, int eY){
    super( n, i, p, cal, Na, s, pro, c, f, eD, eM, eY);
  }
  void describe(){
    text(("PACKAGED FOODS:"), nfxval, nfyval);
    super.describe();  
  }
}
