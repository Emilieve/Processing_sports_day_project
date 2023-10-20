PImage imgNeutral;
PImage imgPunching;
PImage imageToDisplay;

class Mountaineer {
  int xPosStart = 200;
  int x;
  boolean punching = false;
  int imageWidth = 350;
  int imageHeight = 350;
  int holdPunchFrameLenght = 5;
  int currentPunchFrameLength = 0;
  int moveIncrement = 10;
  int topRightX;
  int topRightY;
  int life;
  
  Mountaineer(){
    imgNeutral = loadImage("../images/mountaineer_neutral.png");
    imgNeutral.resize(imageWidth,imageHeight);
    imgPunching = loadImage("../images/mountaineer_punch.png");
    imgPunching.resize(imageWidth,imageHeight);
    this.x = xPosStart;
    this.topRightX = this.x + imageWidth;
    this.topRightY = 1080-imageHeight;
    this.life = 100;
  }
  
  void display(){
    
   if(this.punching){
     imageToDisplay= imgPunching;
     currentPunchFrameLength += 1;
     if (currentPunchFrameLength == holdPunchFrameLenght){
       this.punching = false;
       currentPunchFrameLength = 0;
     }
   }else{
     imageToDisplay = imgNeutral;
   }
   image(imageToDisplay, this.x, height-imageHeight);
   
   this.topRightX = this.x + imageWidth;
  }
  
  void punch(){
    this.punching = true;
    image(imgPunching, this.x, height-imageHeight);
  }
  
  void move(String direction){
    if (direction == "right"){
      this.x += moveIncrement;
    }
    if (direction == "left"){
      this.x -= moveIncrement;
    }
  }
  
}
