int movingX;
int movingY;
int radius;

void setup() {
  size(500, 500);
  radius = width/10; //50
  movingX = radius; //50
  movingY = radius*3; //150
}//setup

void circleRow(int startX, int endX, int y, int d){
  while (startX <= endX){
    circle(startX,y,d);
    startX += d;
  }
  if (movingY > 500){
    movingY = 150;
  }
  else if (movingX > 450){
    movingY += 100;
    movingX = 50;
  }
  else{
    fill(#ff00ff);
    circle(movingX, movingY, 2*radius);
    movingX += 100;
  }
}//circleRow

void draw() {
  background(255);
  fill(#00ffff);
  circleRow(50,450,50,2*radius);
}//draw
