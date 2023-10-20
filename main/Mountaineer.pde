class Mountaineer {
  int xPosStart = 200;
  int x;
  
  Mountaineer(){
    this.x = xPosStart;
  }
  
  void display(){
   circle(this.x, this.x,10); 
  }
  
}
