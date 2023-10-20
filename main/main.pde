PImage backgroundImage;
Mountaineer mountaineer;
Background background;
Goat goat;
HealthBar healthbar;
Throwable throwable;

void setup(){
  fullScreen();
  mountaineer = new Mountaineer();
  background = new Background();
  //goat = new Goat();
  healthbar = new HealthBar(600,30);
  throwable = new Throwable(width*3/4, height*3/4, 100, false);
}

void draw(){
  background.display();
  throwable.display();
  throwable.update();
  mountaineer.display();
  healthbar.diaplay(100,100);    //mountaineer.life,goat.life)
}
void mouseClicked(){
}
void keyPressed(){
}
