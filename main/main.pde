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
  healthbar = new HealthBar();
  throwable = new Throwable(width*3/4, height*3/4, 100, false);
}

void draw(){
  background(0,0,0);
  throwable.display();
  throwable.update();
  mountaineer.display();
}
