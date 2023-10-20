class Throwable {
float xpos;
float ypos;
int size;
boolean swirling;
float velocity;
float angle;
float swirlAngle;

Throwable(float initXpos, float initYpos, int initSize, boolean initSwirling){
  xpos = initXpos;
  ypos = initYpos;
  size = initSize;
  swirling = initSwirling;
  velocity = 5; //TBD
  angle = 0; //TBD
  swirlAngle = 0;
}

void display(){
  pushMatrix();
  translate(int(xpos), int(ypos));
  rotate(swirlAngle);
  fill(0,0,0);
  rect(0,0,100,100);
  popMatrix();
  
}


void update(){
  xpos += velocity*cos(angle);
  ypos += velocity*sin(angle);
  
}
}
