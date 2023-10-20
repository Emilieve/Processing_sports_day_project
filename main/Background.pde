class Background {
  float angle,amplitude,frequency;
  Background() {
    // Load the background image
    backgroundImage = loadImage("../images/background.png");
    angle=0.0;
    amplitude=50;
    frequency=0.05;
  }
  void display() {
    // Display the background image
    image(backgroundImage, 0, 0, width, height);
  }
  void sun(){
    swirling(width-50, 50,100,angle);
    angle += frequency;
  }
  void swirling(float x, float y, int tailLength, float angle) {
    float tailX = x + cos(angle) * amplitude;
    float tailY = y + sin(angle) * amplitude;
  
    stroke(#e33222);
    strokeWeight(2);
    line(x, y, tailX, tailY);
    for (int i = 0; i < tailLength; i++) {
      float segmentAngle = angle - i * 0.1;
      float segmentLength = amplitude * (i + 1) / tailLength;
      float segmentX = x + cos(segmentAngle) * segmentLength;
      float segmentY = y + sin(segmentAngle) * segmentLength;
      line(x, y, segmentX, segmentY);
    }
  }
}
