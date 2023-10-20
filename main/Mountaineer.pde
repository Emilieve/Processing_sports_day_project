PImage img;

class Mountaineer {
  int xPosStart = 200;
  int x;
  
  Mountaineer(){
    img = loadImage("../images/mountaineer_neutral.png");
    this.x = xPosStart;
  }
  
  void display(){
   image(img, 0, 0);

   circle(this.x, this.x,10); 
  }
  
}
