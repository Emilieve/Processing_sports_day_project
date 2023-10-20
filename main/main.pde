PImage backgroundImage;
Mountaineer mountaineer;
Background background;
Goat goat;
HealthBar healthbar;
Throwable throwable;
Structure structure;

void setup(){
  fullScreen();
  structure = new Structure();
  mountaineer = new Mountaineer();
  background = new Background();
  goat = new Goat(100,100,1.0);
  healthbar = new HealthBar(600,30);
  throwable = new Throwable(width*3/4, height*3/4, 100, false);
}

void draw(){
  background.display();
  goat.display();
  throwable.display();
  throwable.update();
  mountaineer.display();
  healthbar.diaplay(100,100);    //mountaineer.life,goat.life)
}
void mouseClicked(){
  structure.mousePressEvent();
}
void keyPressed(){
  structure.keyPressEvent(key);
}
