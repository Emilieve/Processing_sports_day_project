class Throwable {
  float xpos;
  float ypos;
  boolean isRock;
  float size;
  float xVelocity;
  float yVelocity;
  float swirlAngle;
  float gravity;
  boolean alive;
  
  Throwable(float initXpos, float initYpos,float initSize, boolean initisRock){
    xpos = initXpos;
    ypos = initYpos;
    isRock = initisRock;
    size = initSize;
    xVelocity = 4;
    yVelocity = 2.5;
    swirlAngle = 0;
    gravity = 0.02;
    alive = true;
  }
  
  void display(){
    if(alive){
    pushMatrix();
    rectMode(CENTER);
    translate(int(xpos), int(ypos));
    scale(size);
    rotate(swirlAngle);
    fill(0);
    rect(0,0,60,100);
    triangle(-30, -20, -30,-50, -75,-20);
    rect(-45, -5,60,30);
    triangle(-75,10, -10, 10, -30, 50);
    triangle(30, -25, 30, -50, 80, -25);
    triangle(80, -25, 80, 0, 90, 0);
    triangle(90, 25, 50, 25, 50, 50);
    rect(40,10,20,80);
    rect(65, 0, 30, 49);
    rect(85, 12, 10, 27);
    //rect();
    //triangle();
    rectMode(CORNER);
    popMatrix();
    }
  }
  
  void update(){
    xpos += xVelocity;
    ypos -= yVelocity;
    xVelocity = xVelocity*3000/3001;
    yVelocity -= gravity;
  }
  
  boolean collision(int goatXleft, int goatrightX, int goatY){
    if(goatXleft > xpos +75 || xpos - 90 > goatrightX || ypos + 50 < goatY){
      return false;
    }
    return true;
  }
  
  void spawn(int x, int y){
    if(alive == false){
      alive = true;
      xpos = x;
      ypos = y;
      swirlAngle = 0;
      xVelocity = 4;
      yVelocity = 2.5;
    }
  }
}
