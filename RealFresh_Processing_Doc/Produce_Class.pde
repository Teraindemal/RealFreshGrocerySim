class Produce extends Product{
  int rottenDay, rottenMonth, rottenYear;
  int amt;
  Produce(String n, float p, float cal, float Na, float s, float pro, float c, float f, int rD, int rM, int rY, int a){
    super( n, p, cal, Na, s, pro, c, f);
    this.rottenDay = rD;
    this.rottenMonth = rM;
    this.rottenYear = rY;
    this.amt = a;
  }
  void describe(){
   super.describe();
   println(this.amt, this.name, "a bag");
   println("rots date:", this.rottenDay+"/"+this.rottenMonth+"/"+this.rottenYear);
   println();
  }
}
