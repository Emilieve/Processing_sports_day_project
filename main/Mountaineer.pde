PImage imgNeutral;
PImage imgPunching;
PImage imageToDisplay;

class Mountaineer {
  int xPosStart = 200;
  int x;
  boolean punching = false;
  int imageWidth = 350;
  int imageHeight = 350;
  int holdPunchFrameLenght = 3;
  int currentPunchFrameLength = 0;
  
  Mountaineer(){
    imgNeutral = loadImage("../images/mountaineer_neutral.png");
    imgNeutral.resize(imageWidth,imageHeight);
    imgPunching = loadImage("../images/mountaineer_punch.png");
    imgPunching.resize(imageWidth,imageHeight);
    this.x = xPosStart;
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
  }
  
  void punch(){
    this.punching = true;
    image(imgPunching, this.x, height-imageHeight);
  }
  
  void move(String direction){
    if (direction == "right"){
      this.x += 10;
    }
    if (direction == "left"){
      this.x -= 10;
    }
    
    
  }
  
}
