class Structure {
  Mountaineer mountaineer;
  Goat goat;
  Throwable throwable;
  Structure(Mountaineer mountaineer,Goat goat,Throwable throwable){
    this.mountaineer=mountaineer;
    this.goat=goat;
    this.throwable=throwable;
  }
  void deislay(){
    if(mountaineer.x+mountaineer.imageWidth/2+15>goat.getGoatLeft){
      mountaineer.life-=5;
    }
    if(mountaineer.life<0){
        textSize(128);
        fill(#f72a1b);
        text("mountaineer dead", width/2, height/2);
      } 
    
  }
  void mousePressEvent(){
    if(mountaineer.x+mountaineer.imageWidth/2>goat.getGoatLeft ){    //collision
      mountaineer.punch();
      goat.life=-2;
      goat.xPosGoat-2;
      if(goat.life<0){
        textSize(128);
        fill(#f72a1b);
        text("Goat dead", width/2, height/2);
      }  
    }else{
      mountaineer.punch();
    }  
  }
  void keyPressEvent(char input){
    if(input=='A'||input=='a'){    //press A ora move left
      mountaineer.direction='left';
    }else if(input=='D'||input=='d'){    //press D or d move right
      mountaineer.direction='right';
    }else if(input=='Q'||input=='q'){    //press Q or q througnt something
      //mountaineer through rock
      if(mountaineer.x+mountaineer.imageWidth/2>=throwable.xpos ||mountaineer.x-mountaineer.imageWidth/2<=throwable.xpos){    //if close to rock through rock
    }
  }
}
