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
  goat = new Goat();
  healthbar = new HealthBar(600.00,20.00,mountaineer.life,goat.life);
  throwable = new Throwable(width*3/4, height*3/4, 100, false);
}

void draw(){
  background.display();
  throwable.display();
  throwable.update();
  mountaineer.display();
}
void mouseClicked(){
}
void keyPressed(){
}
