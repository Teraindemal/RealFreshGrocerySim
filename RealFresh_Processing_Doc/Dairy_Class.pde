class Dairy extends Product { // Making dairy class, subclass of Prodduct

  Dairy(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int sD, int sM, int sY){
    super(n, i, p, cal, Na, s, pro, c, f, sD, sM, sY); //calling super class contructor
  }
  
  void describe(){
    text(("DAIRY AND EGG PRODUCTS:"), nfxval, nfyval); //Printing "dairy" title
    super.describe(); //calling describe method from super class
  }
}
