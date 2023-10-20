PImage backgroundImage;
Mountaineer mountaineer;
Background background;
Goat goat;
HealthBar healthbar;
Throwable throwable;
Structure structure;

void setup() {
  fullScreen();
  mountaineer = new Mountaineer();
  background = new Background();
  goat = new Goat(width, height, 1.0);
  healthbar = new HealthBar(600, 30);
  throwable = new Throwable(width*3/4, height*3/4, 1, false);
  structure = new Structure(mountaineer,goat,throwable);
  
  
  
}

void draw() {
  background.display();

  throwable.display();
  throwable.update(width, height);
  mountaineer.display();
  goat.display(mountaineer.topRightX);
  //mountaineer.life,goat.life)
  structure.update();
  if (throwable.collision(goat.getGoatRight(), goat.getGoatLeft(), goat.getGoatY())) { //Projectile hits goat
    throwable.alive = false;
    goat.life-=10;
    
  }
  background.sun();
  goat.timer();
  healthbar.diaplay(mountaineer.life,goat.life); 
}

void keyPressed() {
  structure.keyPressEvent(key);
}
