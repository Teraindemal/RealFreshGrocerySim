class Produce extends Product{
  int amt;
  
  Produce(String n, String  i, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, int a){
    super( n, i, p, cal, Na, s, pro, c, f, rD, rM, rY);
    this.amt = a;
  }
  void describe(){
    text(("PRODUCE:"), nfxval, nfyval);
    super.describe();
    text((this.amt+" "+ this.name+"s/pack"), nfxval, nfyval+200);
  }
}
