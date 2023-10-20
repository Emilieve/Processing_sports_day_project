class Structure{
  Mountaineer mountaineer;
  Goat goat;
  Throwable throwable;
  Structure(Mountaineer mountaineer,Goat goat,Throwable throwable){
    this.mountaineer=mountaineer;
    this.goat=goat;
  }
  void mousePressEvent(){
    if(mountaineer.x+mountaineer.imageWidth/2>goat.getGoatLeft ){    //collision
      mountaineer.punch();
      goat.life=-2;
      goat.xPosGoat-2;
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
      if(mountaineer.x+mountaineer.imageWidth/2>=){    //if close to rock through rock
      }else if(){    //if close to goat and life of goat <=0 through goat
      }
  }
  }
}
