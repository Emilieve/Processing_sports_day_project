class Structure{
  Mountaineer mountaineer;
  Goat goat;
  Structure(Mountaineer mountaineer,Goat goat){
    this.mountaineer=mountaineer;
  }
  void mousePressEvent(){
    mountaineer.punch();//punch
  }
  void keyPressEvent(char input){
    if(input=='A'||input=='a'){
    //mountaineer move left
  }else if(input=='D'||input=='d'){
    //mountaineer move right
  }else if(input=='Q'||input=='q'){
    //mountaineer through rock
  }
  }
}
