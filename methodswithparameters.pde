// Siddhant Shah
// Computer Science Programming II
// 11/27/2024
// Project Name: Methods with Parameters Lab


void setup() {
  // setting default settings, such as size, blue background, and stopping the draw function from looping
  size(600, 600);
  background(0, 0, 255);
  noLoop();
}

void draw() {
  // drawing a green circle to represent grassy hill
  fill(0, 255, 0);
  circle(320, 900, 1500);

  // setting random arguments to pass into the drawHouse function, such as x position, y position, house height, house width, door color, and number of windows
  int xPosition = (int) random(100, 500);
  int yPosition = (int) random(100, 250);
  int houseHeight = (int) random(50, 200);
  int houseWidth = (int) random(50, 200);
  color doorColor = color(((int) random(255)), ((int) random(255)), ((int) random(255)));
  int numberOfWindows = (int) random(1, 5);

  // passing in arguments to the function drawHouse()
  drawHouse(xPosition, yPosition, houseHeight, houseWidth, doorColor, numberOfWindows);
}

// defining drawHouse function with necessary parameters
void drawHouse(int xPosition, int yPosition, int houseHeight, int houseWidth, color doorColor, int numberOfWindows) {
  
  // setting the color to brown and drawing the base of the house (rectangle)
  fill(150, 75, 0); 
  rect(xPosition, yPosition, houseWidth, houseHeight);

  // setting the color to red and drawing the roof
  fill(255, 0, 0); 
  triangle(xPosition, yPosition, (xPosition + houseWidth), yPosition, (xPosition + (houseWidth/2)), (yPosition - (houseHeight/2)));

  // setting the color of the door to random and drawing it
  fill(doorColor);
  rect((xPosition + (houseWidth/3)), (yPosition + (houseHeight/2)), (houseWidth/4), (houseHeight/2));

  // setting the color to white
  fill(255, 255, 255);
  // looping for the amount of windows needed
  for (int i = 0; i < numberOfWindows; i++) {
    // getting 2 random coordinates to draw the rectangle that is the window
    int windowX = xPosition + ((int) random(10, houseWidth - 30));
    int windowY = yPosition + ((int) random(10, houseHeight - 30));
    // drawing the window
    rect(windowX, windowY, 20, 20);
  }
}


