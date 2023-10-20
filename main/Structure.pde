class Structure {
  Mountaineer mountaineer;
  Goat goat;
  Throwable throwable;
  Structure(Mountaineer mountaineer, Goat goat, Throwable throwable) {
    this.mountaineer=mountaineer;
    this.goat=goat;
    this.throwable=throwable;
  }

  void update() {
    if (mountaineer.topRightX>=goat.getGoatLeft()&& goat.goatAttack == true ) {//&& goat.goatAttack == true
      mountaineer.life-=5;
      mountaineer.topRightX-=5;
    }
    if (mountaineer.life<0) {
      textSize(128);
      fill(#f72a1b);
      text("mountaineer dead", 0, height/2);
    }
  }
 
  void keyPressEvent(char input) {
    if (input=='A'||input=='a') {    //press A ora move left
      mountaineer.move("left");
    } else if (input=='D'||input=='d') {    //press D or d move right
      mountaineer.move("right");
    } else if (input=='Q'||input=='q') {    //press Q or q througnt something
      //mountaineer through rock
    } else if (input=='E'||input=='e') { 
        mountaineer.punch();
        if (mountaineer.topRightX>goat.getGoatLeft() ) {    //collision
          goat.life-=2;
          //goat.xPosGoat+=2;
          goat.moveBack();
          if (goat.life<0) {
            textSize(128);
            fill(#f72a1b);
            text("Goat dead",0, height/2);
          }
      } 
    }
  }
}
