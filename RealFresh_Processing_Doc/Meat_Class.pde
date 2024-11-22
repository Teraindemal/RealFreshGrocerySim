class Meat extends Product{
  float weight;
  
  Meat(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, float w){
    super( n, i, p, cal, Na, s, pro, c, f, rD, rM, rY);
    this.weight = w;
  }
  
  void describe(){
    text(("MEATS:"), nfxval, nfyval);
    super.describe();
    text(("weight: "+ this.weight+"g"), nfxval, nfyval+200);
  }
}
