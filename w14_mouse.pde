int[] xvals;
int[] yvals;
int MAX_POINTS = 100000;
int numPoints;

void setup() {
  size(600, 400);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;
}//setup

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(4);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }//for
}//drawLines

void mouseClicked() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void mouseDragged() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void draw(){
  background(0);
  drawLines(xvals, yvals);
  moveLines()
}

void keyPressed() {
  if (key == 'c') {
  background(0);
  numPoints = 0; 
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  if (key == CODED) {
    if (keyCode == UP) {
      
    }
}
