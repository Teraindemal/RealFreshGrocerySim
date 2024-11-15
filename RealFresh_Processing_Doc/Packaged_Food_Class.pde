class Packaged extends Product{
  int expiredDay, expiredMonth, expiredYear;
  Packaged(String n, float p, float cal, float Na, float s, float pro, float c, float f, int eD, int eM, int eY){
    super( n, p, cal, Na, s, pro, c, f);
    this.expiredDay = eD;
    this.expiredMonth = eM;
    this.expiredYear = eY;
  }
  void describe(){
   println("PACKAGED FOODS");
   super.describe();
   println("PACKAGED FOODS");
   println("expiration date:", this.expiredDay+"/"+this.expiredMonth+"/"+this.expiredYear);
   println();
    
  }
}
