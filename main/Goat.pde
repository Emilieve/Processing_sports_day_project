class Goat {
  //goatSize is used as a factor for multiplication, so if you want it to be smaller put 0.X
  float xPosGoat = 0;
  float yPosGoat = 0;
  float goatSize = 0;
  float goatSpeed = 2;
  //booleans
  boolean goatHit = false;
  //ints
  int life = 100;
  int counter = 0;
  //constructor
  Goat(float initX, float initY, float initSize) {
    xPosGoat = initX - 200;
    yPosGoat = initY - 220;
    goatSize = initSize;
  }
  //draw the thing
  void display(int mountaineerX) {
    float gS = goatSize;
    noStroke();
    //hooves
    fill(#000000);
    rect(xPosGoat + 125 * gS, yPosGoat + 170 * gS, 45 * gS, 40 * gS);
    rect(xPosGoat - 20 * gS, yPosGoat + 170 * gS, 40 * gS, 40 * gS);
    //horn
    fill(#EDE0BB);
    triangle(xPosGoat - 20 * gS, yPosGoat - 20 * gS, xPosGoat - 0 * gS, yPosGoat -60 * gS, xPosGoat - 0 * gS, yPosGoat -10 * gS);
    //body
    fill(#FFFFFF);
    rect(xPosGoat, yPosGoat, 150 * gS, 100 * gS);
    rect(xPosGoat + 120 * gS, yPosGoat - 10 * gS, 40 * gS, 40 * gS);
    //back leg
    rect(xPosGoat + 90 * gS, yPosGoat + 80 * gS, 70 * gS, 50 * gS);
    rect(xPosGoat + 115 * gS, yPosGoat + 110 * gS, 50 * gS, 50 * gS);
    rect(xPosGoat + 125 * gS, yPosGoat + 150 * gS, 45 * gS, 40 * gS);
    //front leg
    rect(xPosGoat -10 * gS, yPosGoat + 80 * gS, 60 * gS, 50 * gS);
    rect(xPosGoat -20 * gS, yPosGoat + 110 * gS, 50 * gS, 40 * gS);
    rect(xPosGoat -20 * gS, yPosGoat + 130 * gS, 40 * gS, 60 * gS);
    //head
    rect(xPosGoat - 10 * gS, yPosGoat -10 * gS, 60 * gS, 50 * gS);
    rect(xPosGoat - 60 * gS, yPosGoat -20 * gS, 100 * gS, 50 * gS);
    triangle(xPosGoat, yPosGoat - 20 * gS, xPosGoat + 25 * gS, yPosGoat - 60 * gS, xPosGoat + 25 * gS, yPosGoat - 10 * gS);
    //eye
    stroke(#000000);
    fill(#BCA700);
    circle(xPosGoat, yPosGoat, 20 * gS);
    fill(#000000);
    rect(xPosGoat - 6 * gS, yPosGoat - 2 * gS, 11 * gS, 5 * gS);
    moveNormal(mountaineerX);
  }

  void moveNormal(float xPosChase) {

    if (xPosGoat > xPosChase + 40 * goatSize) {
      xPosGoat = xPosGoat - goatSpeed;
    }
  }
  void moveBack() {
    //    if (xPosGoat - 'number' * gS <= xposthrowable() && yposthrowable <= yPosGoat + 'number' * gS ) {
    //    goatHit = true;
    //    }
    goatHit = true;
    if (goatHit == true) {
      xPosGoat = xPosGoat + 50 * goatSize;
    }
  }
//
  float getGoatLeft() {
    return xPosGoat - 60 * goatSize;
  }
  float getGoatY() {
    return yPosGoat - 20 * goatSize;
  }
  float getGoatRight() {
    return xPosGoat + 150 * goatSize;
  }
  int getLives() {
    return life;
  }
}
