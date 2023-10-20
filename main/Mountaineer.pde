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
    //imgPunching = loadImage("../images/mountaineer_punching.png");
    this.x = xPosStart;
  }
  
  void display(){
   image(imgNeutral, 0, height-520);
  }
  
}
