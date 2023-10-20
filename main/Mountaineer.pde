PImage imgNeutral;
PImage imgPunching;

class Mountaineer {
  int xPosStart = 200;
  int x;
  int imageWidth = 350;
  int imageHeight = 350;
  
  Mountaineer(){
    imgNeutral = loadImage("../images/mountaineer_neutral.png");
    imgNeutral.resize(imageWidth,imageHeight);
    imgPunching = loadImage("../images/mountaineer_punch.png");
    imgPunching.resize(imageWidth,imageHeight);
    this.x = xPosStart;
  }
  
  void display(){
   image(imgNeutral, this.x, height-imageHeight);
  }
  
  void punch(){
    
  }
  
}
