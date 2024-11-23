class Packaged extends Product{ // Making packaged goods class, subclass of Prodduct

  Packaged(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int eD, int eM, int eY){
    super( n, i, p, cal, Na, s, pro, c, f, eD, eM, eY); //calling super class contructor
  }
  void describe(){
    text(("PACKAGED FOODS:"), nfxval, nfyval); //Printing "packaged foods" title
    super.describe();  //calling describe method from super class
  }
}
