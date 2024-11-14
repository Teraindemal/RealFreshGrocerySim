class Meat extends Product{
  int rottenDay, rottenMonth, rottenYear;
  float weight;
  Meat(String n, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, float w){
    super( n, p, cal, Na, s, pro, c, f);
    this.rottenDay = rD;
    this.rottenMonth = rM;
    this.rottenYear = rY;
    this.weight = w;
  }
  void describe(){
   super.describe();
   println("weight:", this.weight+"lbs");
   println("rots date:", this.rottenDay+"/"+this.rottenMonth+"/"+this.rottenYear);
   println();
  }
}
