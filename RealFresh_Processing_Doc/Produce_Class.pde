class Produce extends Product{ // Making produce class, subclass of Prodduct
  int amt;
  
  Produce(String n, String  i, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, int a){
    super( n, i, p, cal, Na, s, pro, c, f, rD, rM, rY); //calling super class contructor
    this.amt = a;
  }
  void describe(){
    text(("PRODUCE:"), nfxval, nfyval); //Printing "produce" title
    super.describe(); //calling describe method from super class
    text((this.amt+" "+ this.name+"s/pack"), nfxval, nfyval+200); //printing the amount of product per pack
  }
}
