class Background {
  Background() {
    // Load the background image
    backgroundImage = loadImage("../images/background.png");
  }
  void display() {
    // Display the background image
    image(backgroundImage, 0, 0, width, height);
  }
}
