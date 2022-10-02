int movingX;
int movingY;
int radius;

void setup() {
  size(500, 500);
  radius = width/10; //50
  movingX = radius; //50
  movingY = radius*3; //150
}//setup

void circleRow(int d) {
  for (int x = 50; x < width; x += d) {
    for (int y = 50; y < height; y += d)
      circle (x, y, d);
  }
  if (movingX > height) {
    movingX = 50;
  } else if (movingY > 450) {
    movingX += 100;
    movingY = 50;
  } else {
    fill(250);
    circle(movingX, movingY, 100);
    fill(0);
    circle(movingX, movingY, 90);
    fill(250);
    circle(movingX, movingY, 80);
    fill(250);
    circle(movingX, movingY, 70);
    fill(0);
    circle(movingX, movingY, 60);
    fill(250);
    circle(movingX, movingY, 50);
    fill(0);
    circle(movingX, movingY, 40);
    fill(250);
    circle(movingX, movingY, 30);
    fill(0);
    circle(movingX, movingY, 20);
    fill(250);
    circle(movingX, movingY, 10);
    //fill(#ff00ff);
    //circle(movingX, movingY, 2*radius);
    movingY += 10;//speed
  }
}//circleRow

void draw() {
  background(255);
  fill(#00ffff);
  circleRow(2*radius);
}//draw
