class Meat extends Product{ // Making meat class, subclass of Prodduct
  float weight;
  
  Meat(String n, String i, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, float w){
    super( n, i, p, cal, Na, s, pro, c, f, rD, rM, rY); //calling super class contructor
    this.weight = w;
  }
  
  void describe(){
    text(("MEATS:"), nfxval, nfyval); //Printing "meat" title
    super.describe(); //calling describe method from super class
    text(("weight: "+ this.weight+"g"), nfxval, nfyval+200); // printing weight of the meat on screen 
  }
}
